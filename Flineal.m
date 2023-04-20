function [Io m] = Flineal(I,puntos)
    
    [sz1,sz2,ch] = size(I);

    [fil,col] = size(puntos);
        m = zeros(1,fil-1);
        b = zeros(1,fil-1);
    
    for i = 1:fil-1
        m(1,i) = (puntos(i+1,2)-puntos(i,2))/(puntos(i+1,1)-puntos(i,1)); 
    end
    
    for i = 1:fil-1
        b(1,i) = puntos(i,2) - m(1,i)*puntos(i,1);
    end

    Io = uint8(zeros(sz1,sz2,ch));
    tam=length(m);

    for k = 1:ch
        for i = 1:sz1
            for j = 1:sz2
                for l = 1:tam
                    if I(i,j,k) >= puntos(l,1) && I(i,j,k) < puntos(l+1,1)
                        Io(i,j,k) = m(1,l)*I(i,j,k)+b(1,l);
                    end
                end
            end
        end
    end
   
end

