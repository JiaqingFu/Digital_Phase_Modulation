% function dec=Hviterbi(cod)
% leth =length(cod)/2;
% nextstate=[0 2;0 2;1 3;1 3];
% outputs=[0 3;3 0;1 2;2 1];
% suropt=zeros(4,leth-2);
% suroptem=suropt;
% current=[0 0 0 0];
% current(1)=HMdist([0 0 0 0],cod([1 2 3 4]));
% current(2)=HMdist([1 1 0 1],cod([1 2 3 4]));
% current(3)=HMdist([0 0 1 1],cod([1 2 3 4]));
% current(4)=HMdist([1 1 1 0],cod([1 2 3 4]));
% suropt(1,[1 2])=[0 0];
% suropt(2,[1 2])=[1 0];
% suropt(3,[1 2])=[0 1];
% suropt(4,[1 2])=[1 1];
% currenttem=[0 0 0 0];
% ls=[1 0;2 0;3 0;4 0;1 1;2 1;3 1;4 1];
% for i=3:(leth-2);
%     for x=1:4
%        m1= dec2bin(outputs(ls(x*2-1,1),ls(x*2-1,2)+1),2);
%        c=HMdist([str2num(m1(1)) str2num(m1(2))],cod([i*2-1 i*2]));
%         m2 = dec2bin(outputs(ls(x*2,1),ls(x*2,2)+1),2);
%         d=HMdist([str2num(m2(1)) str2num(m2(2))],cod([i*2-1 i*2]));
%        if(current(ls(x*2-1,1))+c)<(current(ls(x*2,1))+d);
%            currentem(x)=current(ls(x*2-1,1))+c;
%            suroptem(x,:)=suropt(ls(x*2-1,1),:);
%            suroptem(x,i)=ls(x*2-1,2);
%        else 
%            currentem(x)=current(ls(x*2,1))+d;
%            suroptem(x,:)=suropt(ls(x*2,1),:);
%            suroptem(x,i)=ls(x*2,2);  
%        end
%     end
%     current=currentem;
%     suropt=suroptem;
% end
% a=[1 9999];
% for s=1:4;
%     if current(s)<a(2);
%         a(2)=current(s);
%         a(1)=s;
%     else
%     end
%     
% dec =suropt(a(1),:);
% end

 function dec=Hviterbi(cod)
% cod=[1     1     0     1     0     1     0     0     1     0     1     1];
leth =length(cod)/2;
% nextstate=[0 2;0 2;1 3;1 3];
outputs=[0 3;3 0;2 1;1 2];%输出表 每一行表示一个状态
suropt=zeros(4,leth-2);
suroptem=suropt;
current=[0 0 0 0];
current(1)=HMdist([0 0 0 0],cod([1 2 3 4]));%初始状态默认为00
current(4)=HMdist([1 1 0 1],cod([1 2 3 4]));
current(3)=HMdist([0 0 1 1],cod([1 2 3 4]));
current(2)=HMdist([1 1 1 0],cod([1 2 3 4]));
suropt(1,[1 2])=[0 0];
suropt(4,[1 2])=[1 1];
suropt(3,[1 2])=[0 1];
suropt(2,[1 2])=[1 0];
currentem=[0 0 0 0];
ls=[1 0;2 0;3 0;4 0;1 1;2 1;3 1;4 1];%左一列状态 右输入
for i=3:(leth-2);
    for x=1:4
       m1= dec2bin(outputs(ls(x*2-1,1),ls(x*2-1,2)+1),2);
        c=HMdist([str2double(m1(1)) str2double(m1(2))],cod([i*2-1 i*2]));
        m2 = dec2bin(outputs(ls(x*2,1),ls(x*2,2)+1),2);
        d=HMdist([str2double(m2(1)) str2double(m2(2))],cod([i*2-1 i*2]));
       if(current(ls(x*2-1,1))+c)<(current(ls(x*2,1))+d);
           currentem(x)=current(ls(x*2-1,1))+c;
           suroptem(x,:)=suropt(ls(x*2-1,1),:);
           suroptem(x,i)=ls(x*2-1,2);
       else 
           currentem(x)=current(ls(x*2,1))+d;
           suroptem(x,:)=suropt(ls(x*2,1),:);
           suroptem(x,i)=ls(x*2,2);  
       end
    end
    current=currentem;
    suropt=suroptem;
end
a=[1 9999];
for s=1:4;
    if current(s)<a(2);
        a(2)=current(s);
        a(1)=s;
    else
    end
    
 dec =suropt(a(1),:);
end