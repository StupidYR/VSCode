function x=gauss1(A,b)
%����˵����A��ϵ������b��������������zg���������
%��� Ax=B 
%���������Ϊ�����ǣ��ٻش����x
%�˷�����Ϊ���棬��zg(k,k)Ԫ�س���-zg(i,k)/zg(k,k)�ӵ���i��
%��1:n-1�У����Խ�Ԫ�ص������У�ͨ������ѭ��������
zg=[A,b];
zj=rref(zg);
n=length(b);
ra=rank(A);
rz=rank(zg);
temp=rz-ra;
if temp>0
    disp('�޽�');
    return;
end
if ra==rz
    if ra==n
        x=zeros(n,1);
        for p=1:n-1
            for k=p+1:n
                m=zg(k,p)/zg(p,p);
                zg(k,p:n+1)=zg(k,p:n+1)-m*zg(p,p:n+1);
            end
        end
        b=zg(1:n,n+1);
        A=zg(1:n,1:n);
        x(n)=b(n)/A(n,n);
        for q=n-1:-1:1
            x(q)=(b(q)-sum(A(q,q+1:n)*x(q+1:n)))/A(q,q);
        end
    end
end
