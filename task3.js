var a=Number(process.argv[2]);
var b=Number(process.argv[3]);
var s=0;
var del=0;
if(a>b){
	s=b;
	}else{
	s=a;
	}
while(del==0){
	if(a%s==0&&b%s==0){
		del=s;
	}else{
	s--;
	}
}
console.log(s);
