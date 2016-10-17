function dist=HMdist(a,b)
c=[a;b];
dist=pdist(c,'hamming')*length(a);