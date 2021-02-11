function result =  Ebpass_filter (L, fs, f, flow, fhigh)
   result=zeros(1,L/2);
   if(flow < fhigh)
    LPdef = lowpass_filter(L,fs,f, flow);
    HPdef =  highpass_filter(L,fs,f,fhigh);
    result = ( LPdef + HPdef );
   endif
endfunction
