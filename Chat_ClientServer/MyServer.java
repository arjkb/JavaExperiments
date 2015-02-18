/*
	Program to implement a server
*/

import java.util.*;
import java.io.*;	//to use the IO classes
import java.net.*;	//to use the socket functionalities

class ChatHandler implements Runnable 	{
	Scanner keyboard = new Scanner(System.in);
	String message = null;
	Thread T;

	Socket client;
	Scanner in;
	PrintWriter out;
	
	boolean flag;

	ChatHandler(Socket client)	{
		this.client = client;
		flag = true;
		
		try {
			in = new Scanner( this.client.getInputStream() );
			out = new PrintWriter( this.client.getOutputStream(), true);
		} catch(Exception E)	{
			System.out.print("\n Oops! Something went wrong!");
			E.printStackTrace();		
		}		
		
		T = new Thread(this);
		T.start();
	}

	public void run()	{
		while( flag )	{
			if( in.hasNextLine() )	{
				message = in.nextLine();
				System.out.print(message);

				if( message.equals("name") )	{
					out.println("Dell");
				}
				else if( message.equals("age") )	{
					out.println("19");
				}
			} //end of outer if
		} //end of outer while()
	} //enf of run()
}

public class MyServer	{
	public static void main(String args[])	{
	
		final int PORT_NUMBER = 4000;

		ServerSocket SS;
		Socket s;

		try	{
			SS = new ServerSocket(PORT_NUMBER);

			while(true)	{
				s = SS.accept();
				new ChatHandler(s);
			}

		} catch(Exception E)	{
			System.out.println("\n Oops! Something went wrong!");
			E.printStackTrace();
		}	
		
	}
}
