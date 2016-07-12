% DTFT of y[n]
w=(0:127)*2*pi/128; % w from 0 to 2pi
Y=1+exp(-1i*w)+exp(-1i*2*w)+exp(-1i*3*w)+exp(-1i*4*w)+exp(-1i*5*w)+exp(-1i*6*w)+exp(-1i*7*w); % DTFT
YDTFT=abs(Y);

figure(3);
subplot(311);
plot(w/pi, YDTFT, '--');
ylabel('|YDTFT|');
xlabel('\omega (\pi radian/sample)');

subplot(312);
plot((0:7)*2/8, Y1DFT,'rO'); axis([0 2 0 10]);
xlabel('\omega (\pi radian/sample)');
ylabel('|Y1-DFT|');

% zero padding on y[n]
Y2 = fft(y,128); % Compute its 128-point DFT
Y2DFT=abs(Y2);
xvalue1= (0:127)*2/128 % frequency values in x-axis
subplot(313);
plot(xvalue1,Y2DFT,'g+'); % plot DFT of y with zero padded.
xlabel('\omega (\pi radian/sample)');
ylabel('|Y2-DFT|'); 