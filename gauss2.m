function x=gauss2(A,b)
%����˵����A,ϵ������B��������������zg���������
%���������Ϊ�����ǣ��ٻش����x
%�÷���Ϊ��zg(k,k)���½ǵ�n-1�׷���Ϊ��k�г�zg(k,k)Ԫ���������������zg(k,k)
%���Ե�K�г���zg(k,k)Ԫ�������������ֵ
n=length(b);
zg=[A,b];
for k=1:(n-1)
    zg((k+1):n,(k+1):(n+1))= zg((k+1):n,(k+1):(n+1))-zg((k+1):n,k)/zg(k,k)*zg(k,(k+1):(n+1));
    zg((k+1):n,k)=zeros(n-k,1);
end
 
x=zeros(n,1);
x(n)=zg(n,n+1)/zg(n,n);
for k=n-1:-1:1
    x(k,:)=(zg(k,n+1)-zg(k,(k+1):n)*x((k+1):n))/zg(k,k);
end
