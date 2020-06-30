
include("db_input.jl")
abstract type dataModel
 end

# Model student
struct data_std <:dataModel
    name::String
    lname::String
end
# Model teacher
struct data_tch <:dataModel
    name::String
    lname::String
    code:: Int8
end


      function reg(f::dataModel)
          print(" name :" * string(f.name)* "\t")
          #println(typeof(f))
          if typeof(f)==data_std
              println("Hi student")
              set_data_std(f.name,f.lname)
          else
              println("Hi teacher")
              set_data_tch(f.name,f.lname,f.code)
          end
      end



#reg(data_tch("hasan","ghasemi",12))
#reg(data_std("ali reza","ahmadi"))
