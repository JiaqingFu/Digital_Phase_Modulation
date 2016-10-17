function d=EUdist(a,b)
    c=[a;b];
   d1= pdist(c,'euclidean');
   d=d1.*d1;