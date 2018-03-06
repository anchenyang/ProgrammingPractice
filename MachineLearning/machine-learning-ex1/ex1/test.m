try 
    a = [1,2];
    b = [3,4,5];
    c = a*b;
catch ME
    disp('This')
    rethrow(ME)
end