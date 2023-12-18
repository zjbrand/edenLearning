package testA;

import java.util.Scanner;

/*
 * 輸入一個字符串，統計其中的大寫字母個數、小寫字母個數、數字個數和其他符號個數
 */
public class StringCount {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("請輸入一個字符串：");
		String str=sc.next();
		
		int countUpper=0;
		int countLower=0;
		int countNumber=0;
		int countOther=0;
		
		char[] charArray=str.toCharArray();
		for(int i=0;i<charArray.length;i++) {
			char chr=charArray[i];
			if('A'<=chr && chr<='Z') {
				countUpper++;
			}else if('a'<=chr && chr<='z'){
					countLower++;
			}else if('0'<=chr && chr<='9') {
				countNumber++;
			}else {
				countOther++;
			}
		}
		System.out.println("大寫字母有："+countUpper+"個");
		System.out.println("小寫字母有："+countLower+"個");
		System.out.println("數字有："+countNumber+"個");
		System.out.println("其他字符有："+countOther+"個");

	}

}
