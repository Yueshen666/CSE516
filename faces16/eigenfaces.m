% Eignefaces
% data used from http://conradsanderson.id.au/lfwcrop/
% For cse516 machine learning exercise only
% by Yz

% read 64X64 pixel images and unroll to 4096 * 1 vector
filenames = dir('*.pgm');
m = numel(filenames);

for k=1:m
  im = imread(filenames(k).name); %read image
  im=double(im);
  [r,c] = size(im); % get number of rows and columns in image
  I(:,k) = im(:); % convert image to vector and store as column in matrix I
end

% if you are more familiar with row-instances, columns-features, use:
I = I';

% show a face:
for i = 1:5
  imshow(reshape(I(i,:),[r,c]),[]);
end

% show a "mean" face :0
mean_I = mean(I);
imshow(reshape(mean_I,[r,c]),[]);

% Q1. perform PCA, keep 50 principle components.
% you code here
  
% end of code

% Q2. draw eigenfaces ?!
for i = 1:5
   % you code here
  
  % end of code
end


% Q3. show reconstructed faces
for i = 1:5
  % you code here
  
  % end of code
end
