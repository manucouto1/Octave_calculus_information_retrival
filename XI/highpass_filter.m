function Hdef = highpass_filter(L,fs,f,fhigh)
  Hdef=ones(1,L/2);
  Hdef(1:fhigh/fs*L)=zeros(1,fhigh/fs*L);
  Hdef=[fliplr(Hdef) Hdef];
endfunction
