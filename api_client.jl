using HTTP, JSON

resp = HTTP.get("http://ccteam.ir/api/test.php")
str = String(resp.body)
jobj = JSON.Parser.parse(str)

for i in jobj
    print(i)
    print("\n")
end
