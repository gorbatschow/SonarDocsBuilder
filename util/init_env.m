function [root, lang] = init_env()
    global sonarhelp_root;
    if isempty(sonarhelp_root)
        sonarhelp_root = fullfile(pwd, '..');
        addpath(genpath(fullfile(sonarhelp_root, 'sonar_m', 'toolbox')));
        addpath(genpath(fullfile(sonarhelp_root, 'sonar_m', 'example')));
        addpath(fullfile(sonarhelp_root, 'util'));
    end
    root = sonarhelp_root;

    global sonarhelp_lang sonarm_lang;
    if isempty(sonarhelp_lang)
        sonarhelp_lang = 'ru';
        sonarm_lang = 'ru';
    end
    lang = sonarhelp_lang;
end