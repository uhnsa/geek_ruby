str=ARGV[0]
i=0
p=str.length
a=Array.new(p).map!{Array.new(p)}
while i<p
    j=0
    while j<p
        if(str[i]==str[j])
            a[i][j]=1
            else
            a[i][j]=0
        end
        j=j+1
    end
    i=i+1
end
n=0
maxl=0
l=0
i=0
while i<p
    j=i+1
    n=i
    while j<p
        m=j
        while(a[n][m]==1)
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
nstr=""
i=0
count=0
while i<p
    j=i+1
    n=i
    while j<p
        m=j
        while a[n][m]==1
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
            return
        end
        n=i
        j=j+1
    end
end
