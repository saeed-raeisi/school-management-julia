using SQLite
using DataFrames

db =SQLite.DB("school2")
SQLite.execute(db,
"CREATE TABLE IF NOT EXISTS std(std_name TEXT,std_lname TEXT)")

SQLite.execute(db,
"CREATE TABLE IF NOT EXISTS tch(tch_name TEXT,std_lname TEXT,tch_code INTEGER)")

DataFrame(DBInterface.execute(db,"SELECT * FROM std"))
DataFrame(DBInterface.execute(db,"SELECT * FROM tch"))
#DataFrame(SQLite.columns(db,"tch"))
SQLite.tables(db)


function  set_data_std(name,lname)
    SQLite.execute(db,"INSERT INTO
       std(std_name,std_lname)VALUES('$name','$lname')")
       DataFrame(DBInterface.execute(db,"SELECT * FROM std"))
end

function set_data_tch(name,lname,code)
    SQLite.execute(db,"INSERT INTO
       tch(tch_name,std_lname,tch_code)VALUES('$name','$lname','$code')")
       DataFrame(DBInterface.execute(db,"SELECT * FROM tch"))
end


function get_data_std()
    data=DataFrame(DBInterface.execute(db,"SELECT * FROM std"))
    d=Matrix(data)
    return d
end

function get_data_tch()
    data=DBInterface.execute(db,"SELECT * FROM tch") |> DataFrame
    d=Matrix(data)
    return d
end


function del_data_std(name,lname)
    SQLite.execute(db,"DELETE FROM std
      WHERE std_name='$name' AND std_lname='$lname'")
end

function del_data_tch(code)
    SQLite.execute(db,"DELETE FROM tch
      WHERE code='$code'")
end
