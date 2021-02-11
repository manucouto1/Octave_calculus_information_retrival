function result = bandpass_filter(L, fs, f, flow, fhigh)
  result=zeros(1,L/2);
  if(flow < fhigh)
    LPdef = lowpass_filter(L,fs,f,fhigh);
    HPdef =  highpass_filter(L,fs,f,flow);
    result = ( LPdef .* HPdef );
  endif
endfunction
