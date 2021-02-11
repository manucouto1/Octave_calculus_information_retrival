function Hdef = lowpass_filter(L,fs,f,flow)
  Hdef=zeros(1,L/2);
  Hdef(1:flow/fs*L)=ones(1,flow/fs*L);
  Hdef=[fliplr(Hdef) Hdef];
endfunction
