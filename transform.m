function Io = transform(m1,m2,m3,m4,b1,b2,b3,b4)

Io = uint8(zeros(m,n,canales));

for k = 1:canales
    for i = 1:m
        for j = 1:n
            if I(i,j,k) >= x1 && I(i,j,k) < x2 
                Io(i,j,k) = m1*I(i,j,k)+b1;
            elseif I(i,j,k) >= x2 && I(i,j,k) < x3 
                Io(i,j,k) = m2*I(i,j,k)+b2;
            elseif I(i,j,k) >= x3 && I(i,j,k) < x4 
                Io(i,j,k) = m3*I(i,j,k)+b3;
            else
                Io(i,j,k) = m4*I(i,j,k)+b4;
            end
        end
    end
end

end

