% DTFT of y[n]
w=(0:8)*2*pi/9;       % w from 0 to 6pi (128 points for 2pi)
Y=1+1.20805*exp(-1i*w)+1.14279*exp(-1i*2*w)+0.866*exp(-1i*3*w)+.48408*exp(-1i*4*w)+.118782*exp(-1i*5*w)-.223238*exp(-1i*6*w)-.15798*exp(-1i*7*w); % DTFT
YDTFT=abs(Y); 
stem(w/pi, YDTFT, '--'); 
ylabel('|Y| by eqn'); 
xlabel('\omega (\pi radian/sample)');