require'json'
g=JSON.parse$stdin.read
puts JSON.pretty_generate(g.map.with_index{|v,i|g[i].map.with_index{|v,j|a=0
for x in-1..1
for y in-1..1
if !(x==0&&y==0)
a+=1if((g[i+x]||[])[j+y]||0)==1end
end
end
if(v==1&&a==2)||(a==3)
1
else
0
end}})
