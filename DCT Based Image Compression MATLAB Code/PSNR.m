function PSNR = PSNR(A,B) 
 

 
A = double(A);       
B = double(B); 
[Row,Col] = size(A);
% [Row,Col] = size(B); 
MSE = sum(sum((A - B).^2)) / (Row * Col);  
PSNR = 10 * log10(255^2/MSE);              