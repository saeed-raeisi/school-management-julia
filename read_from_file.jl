

io= open("myfile.txt", "w")
write(io, "   name" *"\t" *"|")
write(io, "   last_name" *"\t" *"|")
write(io,"\n")
close(io)

function write_to(array::Array)
    io= open("myfile.txt", "a")
    for i in array
           write(io,"\t" * i *"  \t" *"|")
       end
       write(io,"\t\n")
       close(io);

end


function read_from()
    open("myfile.txt") do f
    for (i, line) in enumerate(eachline(f))
        print("Line $i: $line")
        println()
    end
end
end


function del_file()
    rm("myfile.txt")
end
