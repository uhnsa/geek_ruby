str=ARGV[0]
i=0
p=str.length
a=Array.new(p).map!{Array.new(p)}
while i<p
    j=0
    while j<p
        if(str[i]==str[j]) #строю двумерный массив
            a[i][j]=1
            else
            a[i][j]=0
        end
        j=j+1
    end
    i=i+1
end
=begin
i=0
while i<p
    j=0
    while j<p
        print a[i][j] #вывожу на экран массив
        j=j+1
    end
    puts
    i=i+1
end
=end
n=0
maxl=0
l=0
i=0
while i<p
    j=i+1
    n=i
    while j<p
        m=j
        while(a[n][m]==1) #из=щу длину максимальной подстроки
            l=l+1
            n=n+1
            m=m+1
        end
        if(l>maxl)
            maxl=l
        end
        n=i
        l=0
        j=j+1
    end
    i=i+1
end
#puts maxl
nstr=""
i=0
count=0
if maxl==0
    nstr=str[0]
    puts nstr
else
    while i<p&&count!=maxl
        j=i+1
        n=i
        while j<p&&count!=maxl
            m=j
            while a[n][m]==1&& #строю подстроку, зная только длину
                nstr=nstr+str[m]
                n=n+1
                m=m+1
                count=count+1
            end
            if(count!=maxl)
                nstr=""
                count=0
                else
                puts nstr
            end
            n=i
            j=j+1
        end
        i=i+1
    end
end
