import java.util.Scanner;

public class NOD {
  public static void main(String [] args){
    Scanner s = new Scanner(System.in);
    int a=s.nextInt();
    int b=s.nextInt();
    int del=0;
    if(a>b){
    	int y=b;
    	while(del==0){
    		if(a%y==0&&b%y==0){
    			del=y;
    		}else{
    		y--;
    		}
    	}
    }else{
    	int y=a;
    	while(del==0){
    		if(b%y==0&&a%y==0){
    			del=y;
    		}else{
    		y--;
    		}
    	}
    }
    System.out.println(del);
  }
}
