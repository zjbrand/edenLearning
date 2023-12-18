package testA;

/*
 * 把數組{1,2,3}拼成[word1#word2#word3#]字符串
 * 
 * */
public class StringPractise {
	public static void main(String[] args) {
		int[] array= {1,2,3,4};
		String result=formArray(array);
		System.out.println(result);
	}
	public static String formArray(int[] array) {
		String str="[";
		for(int i=0;i<array.length;i++) {
			if(i==array.length-1) {
				str +="word"+array[i]+"]";
			}else {
				str +="word"+array[i]+"#";
			}
		}
		return str;
	}
}
