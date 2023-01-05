function update_mkdocs(lastn)
    [sonarhelp_root, sonarm_lang] = init_env();
    mkdocs_path = fullfile(sonarhelp_root, 'mkdocs', 'docs');
    content_path = fullfile(sonarhelp_root, 'content');
    
    dir_list = dir(content_path);
    file_list = repmat(dir(), [0,0]);
    for i = 1:numel(dir_list)
        if dir_list(i).name(1) == '.'
            continue
        end
        if ~dir_list(i).isdir
            continue
        end
        folder = fullfile(dir_list(i).folder, dir_list(i).name);
        mdfile = dir(fullfile(folder, ...
            [dir_list(i).name '.' sonarm_lang '.md']));
        if isempty(mdfile)
            continue
        end
        file_list(end+1) = mdfile;
    end
    
    if isempty(file_list)
        return
    end

    [~,idx] = sort([file_list.datenum]);
    file_list = file_list(flip(idx));
    
    if nargin < 1
        lastn = inf;
    end
    
    j = 0;
    for i = 1:numel(file_list)
        [~, fname, fext] = fileparts(file_list(i).name);
        if ~strcmpi(fext, '.md')
            continue
        end
        
        disp(['Building from template: ' fname]);
    
        src_file = fullfile(file_list(i).folder, file_list(i).name);
        build_from_template(src_file, sonarhelp_root, mkdocs_path);
        
        j = j + 1;
        if j == lastn
            break
        end
    end
    
    src_index_file = fullfile(content_path, ['index.' sonarm_lang '.md']);
    dst_index_file = fullfile(mkdocs_path, 'index.md');
    copyfile(src_index_file, dst_index_file);
end