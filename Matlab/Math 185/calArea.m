function area = calArea(A, B)

cosTheta = (A'*B)/((norm(A))*(norm(B)))

sinTheta = (1 - cosTheta^2)^0.5;

area = norm(A)*norm(B)*sinTheta;
end