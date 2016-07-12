n=0:36;
y = cos(pi*n/6) + sin(pi*n/9); Y1 = fft(y,1024);    % Compute its 64-point DFT
Y1DFT=abs(Y1); 
stem((0:1023)*2/1024, Y1DFT,'rO'); 
xlabel('\omega (\pi radian/sample)'); 
ylabel('|Y1-DFT| / |YDTFT|'); 
legend('YDTFT','Y1DFT','Location','North');