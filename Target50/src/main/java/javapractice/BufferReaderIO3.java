package javapractice;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class BufferReaderIO3 {

	public static void main(String[] args)throws Exception {
		BufferedReader reader= new BufferedReader (new InputStreamReader(System.in));
		String name = reader.readLine();
		System.out.println(name);
	}
// read input from the user int he commond line
}
