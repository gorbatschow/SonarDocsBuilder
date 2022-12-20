function status = build_from_template(src_file, root, dst_path)
    [~,src_name] = fileparts(src_file);
    %[~,src_name] = fileparts(src_name);

    status = struct( ...
        'root', root, ...
        'pwd', fileparts(src_file), ...
        'src_file', src_file, ...
        'src_name', src_name, ...
        'dst_path', dst_path, ...
        'figure_counter', 0, ...
        'text', '');

    try
        status.text = fileread(src_file);
    catch
        error(['@mmd_ERROR: File not found ' src_file]);
    end

    while(strcmpi(status.text(end), newline))
        status.text(end) = [];
    end

    while true
        try
            tokens = parse_md_template(status.text);
        catch
            disp('');
        end
        token_idx = find_mdt_token(tokens);
        if isempty(token_idx)
            break
        end
        token = tokens(token_idx);
        
        if strcmpi(token.action, '@mmd_print_equation')
            status = print_equation(status, token);
        elseif strcmpi(token.action, '@mmd_print_equation_boxed')
            status = print_equation(status, token, 'boxed');
        elseif strcmpi(token.action, '@mmd_print_code')
            status = print_code(status, token);
        elseif strcmpi(token.action, '@mmd_print_markdown')
            status = print_markdown(status, token);
        elseif strcmpi(token.action, '@mmd_eval_code')
            status = eval_code(status, token);
        elseif strcmpi(token.action, '@mmd_print_reference')
            status = print_reference(status, token);
        else
            status = replace_text(status, token, ...
                '@mmd_ERROR: Bad command'); 
        end
    end
    
    dst_file = fullfile(dst_path, [src_name '.md']);
    fid = fopen(dst_file, 'w');
    fprintf(fid, "%s", status.text);
    fclose(fid);
end
% -------------------------------------------------------------------------
function fname = get_filename(status, token)
    if token.filename(1) == '$'
        fname = fullfile(status.root, token.filename(2:end));
    else
        fname = fullfile(status.pwd, token.filename);
    end
end
% -------------------------------------------------------------------------
function [fname, read_flag, text] = read_file(status, token)
    fname = get_filename(status, token);
    try
        text = fileread(fname); 
        read_flag = 1;
    catch
        text = char();
        read_flag = -1;
    end
    if read_flag && ~isempty(text)
        while strcmpi(text(end), newline)
            text(end) = [];
        end
    end
end
% -------------------------------------------------------------------------
function token_idx = find_mdt_token(tokens)
    for i = 1:numel(tokens)
        if numel(tokens(i).action) < 4
            continue
        end
        if strcmpi(tokens(i).action(1:4), '@mmd')
            token_idx = i;
            return
        end
    end
    token_idx = [];
end
% -------------------------------------------------------------------------
function status = replace_text(status, token, newtext)
    try
        left = status.text(1:token.position(1)-1);
        right = status.text(token.position(2)+1:end);
        status.text = [left newtext right];
    catch
        disp('STOP');
    end
end

% -------------------------------------------------------------------------
% PRINT EQUATION
% -------------------------------------------------------------------------
function status = print_equation(status, token, style)
    [fname, read_flag, text] = read_file(status, token);
    
    if nargin < 3
        style = '';
    end
    
    if read_flag < 0
        status = replace_text(status, token, ...
            ['@mmd_ERROR: File not found ' fname]); 
    else
        if strcmpi(style, 'boxed')
            status = replace_text(status, token, ...
                ['<p>$$\boxed{' text '}$$</p>']); 
        else
            status = replace_text(status, token, ...
                ['<p>$$' text '$$</p>']); 
        end
    end
end
% -------------------------------------------------------------------------
% PRINT CODE
% -------------------------------------------------------------------------
function status = print_code(status, token)
    [fname, read_flag, text] = read_file(status, token);

    if read_flag < 0
        status = replace_text(status, token, ...
            ['@mmd_ERROR: File not found ' fname]); 
    else
        status = replace_text(status, token, ...
            ['```' newline text newline '```']); 
    end
end
% -------------------------------------------------------------------------
% PRINT MARKDOWN
% -------------------------------------------------------------------------
function status = print_markdown(status, token)
    [fname, read_flag, text] = read_file(status, token);
    
    if read_flag < 0
        status = replace_text(status, token, ...
            ['@mmd_ERROR: File not found ' fname]); 
    else
        status = replace_text(status, token, text); 
    end
end
% -------------------------------------------------------------------------
% PRINT REFERENCE
% -------------------------------------------------------------------------
function status = print_reference(status, token)
    fname = get_filename(status, token);
    
    [entry, entry_ok] = parse_ref(fname);

    if entry_ok
        ref = '';
        if ~isempty(entry.author)
            ref = char(strjoin(entry.author, '; '));
        end
        if ~isempty(entry.title)
           ref = [ref char(44) char(32) char(34) entry.title char(34)];
        end
        if ~isempty(entry.year)
           ref = [ref char(44) char(32) entry.year];
        end
        if ref(1) == char(44)
           ref = ref(3:end);
        end
    end

    if ~entry_ok
        status = replace_text(status, token, ...
            ['@mmd_ERROR: File not found ' fname]); 
    else
        status = replace_text(status, token, ref); 
    end
end
% -------------------------------------------------------------------------
% EVALUATE CODE
% -------------------------------------------------------------------------
function status = eval_code(status, token)
    [~, script] = fileparts(token.filename);

    try
        result = eval(script);
    catch
        result = struct('data_type', '');
    end
    
    if strcmpi(result.data_type, 'figure')
        status = eval_code_figure(status, token, result);
    elseif strcmpi(result.data_type, 'table')
        status = eval_code_table(status, token, result);
    else
        status = replace_text(status, token, ...
            ['@mmd_ERROR: Bad eval result ' script]);
    end
end
% -------------------------------------------------------------------------
function status = eval_code_figure(status, token, result)
    img_path = fullfile(status.dst_path, 'img');
    if ~isfolder(img_path)
        mkdir(img_path);
    end
    status.figure_counter = status.figure_counter + 1;

    img_short_name = [status.src_name '-' ...
        num2str(status.figure_counter, '%.0f') '.png'];
    img_name = fullfile(img_path, img_short_name);

    saveas(result.data, img_name);
    close(result.data);

    status = replace_text(status, token, ...
        ['![](img' filesep img_short_name ')']); 
end
% -------------------------------------------------------------------------
function status = eval_code_table(status, token, result)
    table_str = '';
    for i = 1:size(result.data,1)
        table_str = [table_str  strjoin(result.data(i,:), '|')  newline];
        if i == 1
            table_str = [table_str ...
                strjoin(repmat({'---'}, [1 size(result.data,2)]), '|') ...
                newline];
        end
    end
    status = replace_text(status, token, table_str); 
end
