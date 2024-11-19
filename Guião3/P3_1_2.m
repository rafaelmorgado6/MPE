clear all
lower = 'a':'z';
upper = 'A':'Z';
punct = ['!' ',' ';' '.' ':' '"' '?' '-' '(' ')', sprintf('\n')];
txt = fopen("script_shrek.txt");

char = fread(txt);
total = sum(char);

while(feof(txt) == 0)
    str = fgets(txt);
    for i=1 : length(a)
        freq(i) = sum(ismember(str, a(i))) + freq(i);
    end
end

fclose(txt);
