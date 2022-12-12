function [entry, ok] = parse_ref(fname)

    entry = struct( ...
        'title', '', ...
        'publisher', '', ...
        'year', '', ...
        'pages', '', ...
        'number', '', ...
        'volume', '', ...
        'journal', '', ...
        'author', [], ...
        'type', '', ...
        'id', '');
    entry.author = {};

    try
        text = fileread(fname);
    catch
        ok = false;
        return
    end
    ok = true;

    markup = strsplit(text, '\n');
    
    for i = 1:numel(markup)
        if numel(markup{i}) < 2
            continue
        end
        
        key = markup{i}(1:2);
        value = strtrim(markup{i}(3:end));
        
        if strcmpi(key, '%0')
            entry.type = value;
        elseif strcmpi(key, '%T')
            entry.title =  value;
        elseif strcmpi(key, '%J')
            entry.journal =  value;
        elseif strcmpi(key, '%V')
            entry.volume =  value;
        elseif strcmpi(key, '%N')
            entry.number =  value;
        elseif strcmpi(key, '%P')
            entry.pages =  value;
        elseif strcmpi(key, '%I')
            entry.publisher =  value;
        elseif strcmpi(key, '%D')
            entry.year =  value;
        elseif strcmpi(key, '%A')
            entry.author =  [entry.author value];
        end
    end

    if ~isempty(entry.author)
        first_author = entry.author(1);
        entry.id = [entry.id char((strtok(first_author)))];
    elseif ~isempty(entry.publisher)
        entry.id = [entry.id char((strtok(entry.publisher)))];
    elseif ~isempty(entry.title)
        entry.id = [entry.id char((strtok(entry.title)))];
    end

    if ~isempty(entry.year)
        entry.id = [entry.id char(strtok(entry.year))];
    end
    if ~isempty(entry.title)
        title = entry.title;
        title_parts = strsplit(title, ' ');
        title_max = '';
        title_curr = '';
        for i = 1:numel(title_parts)
            if numel(title_parts{i}) > title_max 
                title_max = title_parts{i};
            end
            if numel(title_parts{i}) > 3 && isempty(title_curr)
                title_curr = title_parts{i};
            end
        end
        if isempty(title_curr)
            title_curr = title_max;
        end
        entry.id = [entry.id title_curr];
    end
    ers = {',' '.' ':' ';' '!' '-'  ' '};
    for i = 1:numel(ers)
        entry.id = erase(entry.id, ers{i});
    end
    entry.id = lower(entry.id);
end