
include("db_input.jl")


d=get_data_std()


for row in eachrow(d)
    println(row[1])
end
