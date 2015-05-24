root_input = 'U:\Œ‚∑∆∑∆\web\Œ‚∑∆∑∆\origin\';
root_output = 'U:\Œ‚∑∆∑∆\web\Œ‚∑∆∑∆\output\';
d = dir([root_input, '*.jpg']);
darkRatio = 0.5;

for i = 1:length(d)
    fn = d(i).name;
    a = imread([root_input,fn]);
    aa = double(a)/255;
    aa = aa * darkRatio;
    imwrite(aa, [root_output, fn]);
end;

