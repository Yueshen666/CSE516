% CS516 Machine Learning
% Lab 2 : Principle Component Analysis
% In this lab, you are going to implement PCA with SVD.
% Use your pca function defined in PCA.m to reduce the iris data to 2D
% The Iris dataset represents 3 kind of Iris flowers
% with 4 attributes: sepal length, sepal width, petal length and petal width.
% By Yue.Z
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Student Name: 
% Student ID:
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

X = load("iris_unlabeled.dat"); % load iris data
y = load("iris_label.dat");
Z = simple_pca(X,2) % you need to complete this function
%Z = pca_with_svd(X,2) %optional if time permits
pc1 = Z(:,1)
pc2 = Z(:,2)

% 0,1,2 -> 'setosa', 'versicolor', 'virginica'
scatter(pc1,pc2,32,y,'filled')
