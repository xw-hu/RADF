clear;
clc;

% root = '/home/xwhu/dataset/ECSSD/images_ECSSD/';
% res = dir(fullfile(root,'*.jpg'));

% root = '/home/xwhu/dataset/HKU-IS/imgs/';
% res = dir(fullfile(root,'*.png'));
% 
% root = '/home/xwhu/dataset/PASCAL-S/input/';
% res = dir(fullfile(root,'*.jpg'));

root = '/home/xwhu/dataset/SOD/image/';
res = dir(fullfile(root,'*.jpg'));

fid = fopen('/home/xwhu/saliency/caffe_dss-master/data/SOD/test.txt','w');

for i=1:length(res)
    
   
    fprintf(fid,'%s', res(i).name);
    fprintf(fid,'\n');
    
end

fclose(fid);