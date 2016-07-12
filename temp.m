% DTFT of y[n]
w=(0:128*3-1)*2*pi/128; % w from 0 to 6pi (128 points for 2pi)
Y=1+exp(-1i*w)+exp(-1i*2*w)+exp(-1i*3*w)+exp(-1i*4*w)+exp(-1i*5*w)+exp(-1i*6*w)+exp(-1i*7*w); % DTFT
YDTFT=abs(Y);
plot(w/pi, YDTFT, '--');
ylabel('|Y| by eqn');
xlabel('\omega (\pi radian/sample)'); 

hold on;
y = ones(1,8);
Y1 = fft(y); % Compute its 8-point DFT
Y1DFT=abs(Y1);
plot((0:7)*2/8, Y1DFT,'rO');
xlabel('\omega (\pi radian/sample)');
ylabel('|Y1-DFT| / |YDTFT|');
legend('YDTFT','Y1DFT','Location','North'); 