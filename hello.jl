println("hello world")
using XLSX , DataFrames

xf = XLSX.readxlsx("popul.xlsx")
st = XLSX.sheetnames(xf)

df = DataFrame( XLSX.readtable( "popul.xlsx" , st[1] , infer_eltypes = true  )...) 
println(first(df, 10))


