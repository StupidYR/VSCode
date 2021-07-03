% function Fun(m,n)
%     s = 0;
%     for i = m:n
%         s = s + i;
%     end
%     disp(s);
% end

%%
% function Fun(n)
%     for i = 1:n
%         if mod(n,i) == 0
%             disp(i)
%         end
%     end
% end

%%
% function Fun(n)
%     t = 0;
%     for i = 1:n
%         if mod(n,i) == 0
%             t = t + 1;
%         end
%     end
%     if t == 2
%         is_prime = 1
%     else
%         is_prime = 0
%     end
% end

%%
% function [a,F] = Fun(v1,v2,t1,t2,m)
%     a = (v1 - v2)./(t1 - t2);
%     F = m .*a;
% end

%%   计算函数的零点
% function y = Fun(x)
%     % y = (5.*x-6.4)./((x-1.3).^2 + 0.002) +...
%     %     (9.*x)./(x.^3 + 0.03) -...
%     %     (x-0.4)./((x-0.92).^2 + 0.005);
%     %   y = sin(x) - 2.*x + 2;
%     y = sin(x);
% end





    
    
    
    
    