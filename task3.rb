a=ARGV[0].to_i
b=ARGV[1].to_i
while (a!=0&&b!=0)
   if(a>b)
       a=a%b
    else
        b=b%a
    end
end
s=a+b
s=s.abs
puts s
