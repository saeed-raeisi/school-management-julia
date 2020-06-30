module sqrt_custom
       export super_sqrt
       function super_sqrt(num)
           try
               sqrt(num)
           catch
               @warn "num is Negative"
           end
     end
     function super_add(num1,num2)

         for i = 1:num2-num1
             print("$num1 -> " * string(num1+=1)* "  ")
         end
     end
 end


module add_custom
export s_add
 function s_add(num1,num2)
     for i = 1:2
         print("just Test !! :) ")
     end
 end
end
