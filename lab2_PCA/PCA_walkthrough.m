% Using data and examples from A tutorial on PCA by L. Smith, Ch3 with adaptation.% Breakpoints are added for subsections.% by YZ% 1. Displaying original data and 0 center-adjusted data (mean normalized)% data matrixX = [2.5 2.4;0.5 0.7; 2.2 2.9;1.9 2.2;3.1 3.0;2.3 2.7;2 1.6;1 1.1;1.5 1.6;1.1 0.9];[m,n] = size(X);X_norm = X - mean(X);% original datasubplot(2,2,1);colors = linspace(1,10,m);scatter(X(:,1),X(:,2),50,colors,'x');hold on;v1 = linspace(-1,4,50); v2 = linspace(0,0,50);ax1 = plot(v1,v2,'--k',v2,v1,'--k');xlim([-1 4]); ylim([-1 4]);title('Original Data');set(gca,'FontSize',8)% 0 centered datasubplot(2,2,2);colors = linspace(1,10,m);scatter(X_norm(:,1),X_norm(:,2),50,colors,'x');hold on;v1 = linspace(-2,2,50); v2 = linspace(0,0,50);ax1 = plot(v1,v2,'--k',v2,v1,'--k');xlim([-2 2]); ylim([-2 2]);title('Mean-normalized Data');set(gca,'FontSize',8)% 2. PCA Implementationscov = 1/(m-1)*X_norm'*X_norm % [V L W] = svd(cov)X_rot = X_norm*Vsubplot(2,2,3);colors = linspace(1,10,m);scatter(X_rot(:,1),X_rot(:,2),50,colors,'x');hold on;v1 = linspace(-2,2,50); v2 = linspace(0,0,50);ax1 = plot(v1,v2,'--k',v2,v1,'--k');xlim([-2 2]); ylim([-2 2]);title('Rotated Data');% 3. 2D-1Dsubplot(2,2,4);X_1d= (X_norm*V(:,1));scatter(X_1d,linspace(0,0,m),50,colors,'x');title('1D data');% 4. reconstructed dataX_appr = X_1d*V(:,1)'scatter(X_appr(:,1),X_appr(:,2),50,colors,'x');title('Reconstructed Data');