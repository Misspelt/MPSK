function [ y ] = AWGNadd ( x, snr )
%AWGNadd adds white Gaussian noise to the vector signal x with appropriate signal-to-noise ratio per sample. 
y = awgn(x,snr); 

end

