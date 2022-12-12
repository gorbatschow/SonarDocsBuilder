function token = parse_md_template(text)
    % https://regex101.com/r/U0XeRp/1
    parser = ['!\[(?<action>.*?)\]' ...
        '\((?<filename>.*?)(?=\"|\))(?<optstring>\".*\")?\)'];
    [token, startIdx, endIdx] = regexpi(text, parser, 'names');
    
    for i = 1:numel(token)
        token(i).position = [startIdx(i) endIdx(i)];
    end
end

