function out=quantization(s,l)
out=0;
if s>1;
    out=2^l;
elseif s<-1;
    out=-2^l;
else c=abs(s);
    for i=1:2^l;
        if c>1/2^(l+1)+(i-1)/2^l;
            out=out+1;
        end
    end
    if s<0;
        out=-out;
    end
end
    out=(out+2^l)/2^(l+1);
    `