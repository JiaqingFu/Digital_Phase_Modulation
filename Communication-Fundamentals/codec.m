function cod=codec(m);%g1��g2Ϊ�弤��Ӧ����
g1=[1 1 1];
g2=[1 0 1];
m1=conv(m,g1);%conv����ʽ���
m2=conv(m,g2);
l=length(m1);
    m1=rem(m1,2);%���ຯ��
    m2=rem(m2,2);
    m3=[m1;m2];
    cod=reshape(m3,1,2*l);

 
