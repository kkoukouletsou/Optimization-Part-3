function [x_, k] = SteepestDescentConst(grad, x, e, gk)

disp("Steepest Descent Constant");
k = 1;
x_(:, 1) = x;
df(:, k) = grad(x_(1, k), x_(2, k));

while norm(df(:, k)) > e
    dk = - df(:, k);
    x_(:, k + 1) = x_(:, k) + (gk .* dk);
    df(:, k + 1) = grad(x_(1, k + 1), x_(2, k + 1));
    k = k + 1;
    disp("k = " + k);
    
    if k > 1000                                         
        disp("Ο αλγόριθμος δεν συγκλίνει");
        break;
    end
end
end
