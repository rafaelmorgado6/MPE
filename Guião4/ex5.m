%5a)
yq=dec2bin(y,8);  
yq=yq(:,1:7);   
yq=rem(double(yq),2);   
yq= yq * [64 32 16 8 4 2 1]'; 

%5b)
ydifq=diff(yq); 

%5c)
binary_string = dec2bin(abs(ydifq),6);  
binary_data = rem(double(binary_string),2); 
binary_dataModulo=binary_data(:,1:6); 
binary_dataSinal= sign(ydifq + 0.00001); 

balanced_binary_dataModulo=2*binary_dataModulo-1;
balance_binary_data= [balanced_binary_dataModulo binary_dataSinal]; 