var str =process.argv[2];
var sstr=process.argv[3];
var t=0;
var nstr="";
var count=0;
var j=0;
if(str.length==sstr.length){
		nstr=str;
	while(nstr!=sstr){
		nstr="";
		for (var i=1; i<str.length-j; i++){
			nstr=nstr+str[i+j];
		}
		for (var i=0; i<=count; i++){
			nstr=nstr+str[i];
		}
		count=count+1;
		j=j+1;
		if(count>=str.length){
			process.stdout.write("-1");
			return;
		}
	}
}else{
	process.stdout.write("-1");
}
j=str.length-count;
if(count>j){
	console.log(j);
}else{
	console.log(count);
}
