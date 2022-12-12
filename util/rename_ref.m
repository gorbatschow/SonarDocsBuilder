function rename_ref()
    sonarhelp_root = init_env();
    reference_path = fullfile(sonarhelp_root, 'reference');
    file_list = dir(reference_path);

    for i = 1:numel(file_list)
        [~, ~, fext] = fileparts(file_list(i).name);
        if ~strcmpi(fext, '.enw')
            continue
        end
        
        ref_file = fullfile(file_list(i).folder, file_list(i).name);
        ref = parse_ref(ref_file);
        new_name =  [fullfile(file_list(i).folder, ref.id) '.enw'];
        if ~isfile(new_name)
            movefile(ref_file, new_name );
        else
            %disp(['File ' new_name ' exist']);
        end
    end
end