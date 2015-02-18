/*
	Program to implement a server
*/

import java.util.*;
import java.io.*;	//to use the IO classes
import java.net.*;	//to use the socket functionalities

public class ClientA	{
	public static void main(String args[]) throws UnknownHostException, 
													IOException{
		final int PORT_NUMBER = 4000;
		
		Scanner keyboard = new Scanner(System.in);
		Scanner in = null;
		PrintWriter out = null;
		
		boolean flag = false;
		String message = null;

		Socket s = new Socket("localhost", PORT_NUMBER);

		if( s.isConnected() )	{
			System.out.println("\n Connection with server established!");
			
			in = new Scanner( s.getInputStream() );
			out = new PrintWriter( s.getOutputStream(), true);
			
			flag = true;
		}
		else	{
			System.out.println("\n ERROR: Could not establish connection with server!");
			flag = false;
		}
		
		while( flag )	{
			System.out.println("\n Enter message: ");
			message = keyboard.nextLine();
			
			out.println("A: " + message);
			
			if( in.hasNextLine() )	{
				message = in.nextLine();
				System.out.println(message);
			}
			
		}
		
	}  //end of main()
}
