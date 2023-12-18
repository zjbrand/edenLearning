package testA;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Java8Test {

	public static void main(String[] args) {
		List<String> names1=new ArrayList<String>();
		names1.add("Google");
		names1.add("Runoob");
		names1.add("Baidu");
		names1.add("TaoBao");
		names1.add("Sina");
		
		List<String> names2=new ArrayList<String>();
		names2.add("Google");
		names2.add("Runoob");
		names2.add("TaoBao");
		names2.add("Baidu");
		names2.add("Sina");

		Java8Test test=new Java8Test();
		
		System.out.println("Java7");		
		test.sortByJava7(names1);
		System.out.println(names1);
		
		System.out.println("Java8");
		test.sortByJava8(names2);
		System.out.println(names2);
		
	}

	private void sortByJava8(List<String> names2) {
		Collections.sort(names2, (o1,o2)->o1.compareTo(o2));
		
	}
private void sortByJava7(List<String> names1) {
		
		Collections.sort(names1,new Comparator<String>() {

			@Override
			public int compare(String o1, String o2) {
				
				return o1.compareTo(o2);
			}
			});
		
	}
}
