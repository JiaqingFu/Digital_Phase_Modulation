function cod=codec(m);%g1与g2为冲激响应序列
g1=[1 1 1];
g2=[1 0 1];
m1=conv(m,g1);%conv多项式相乘
m2=conv(m,g2);
l=length(m1);
    m1=rem(m1,2);%求余函数
    m2=rem(m2,2);
    m3=[m1;m2];
    cod=reshape(m3,1,2*l);

 
