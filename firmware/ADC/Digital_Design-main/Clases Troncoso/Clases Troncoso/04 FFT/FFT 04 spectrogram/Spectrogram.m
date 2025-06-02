 % LOAD DATA
      load Chirp100_150gen;  
	  load Sine120qgen;
%       load X;
	  %x = Sine120qw;
      x = Chirp100_150w;
%        x=X;
	  figure(1), clf
	  plot(1:4096,x)
	  xlabel('n')
	  ylabel('x(n)')

	  % SET PARAMETERS
	  R = 128;               % R: block length
	  window = hamming(R);   % window function of length R
	  N = 1024;               % N: frequency discretization
	  L = 10;                % L: time lapse between blocks
	  fs = 7418;             % fs: sampling frequency
	  overlap = R - L;

	  % COMPUTE SPECTROGRAM
	  %[B,f,t] = specgram(x,N,fs,window,overlap);
      [B,F,t] = spectrogram(x,window,overlap,N,fs);

	  % MAKE PLOT
	  figure(2), clf
	  imagesc(t,f,log10(abs(B)));
	  colormap('cool')
	  axis xy
	  xlabel('tiempo')
	  ylabel('frecuencia')
	  title('Short-Time Fourier Transform (STFT)')
