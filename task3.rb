a = ARGV[0].to_i
b=ARGV[1].to_i
s=0
del=0
if a>b
    s=b
else
    s=a
end
while del==0
    if a%s==0&&b%s==0
        del=1
    else
        s=s-1
    end
    
end
puts s
