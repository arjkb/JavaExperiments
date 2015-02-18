/*
	Server program
*/

import java.util.*;
import java.io.*;
import java.net.*;

public class MyServer	{
	public static void main(String args[])	throws SocketException, 
												IOException {
		final int PORT_NUMBER = 4000;

		byte []buffA = new byte[256];
		byte []buffB = new byte[256];

		String message = null;

		//socket bound to a particular port
		DatagramSocket s = new DatagramSocket(PORT_NUMBER); 

		DatagramPacket pack = new DatagramPacket(buffA, buffA.length);
		


		s.receive(pack);

		//experimentations
//message = new String(pack.getData(), 0, pack.getLength() );
		message = new String(pack.getData());

		System.out.println("\n Client says: " + message);

	 	buffB = new String("That's cool!").getBytes();

		DatagramPacket pack2 = new DatagramPacket(buffB, buffB.length, pack.getAddress(), pack.getPort());

		s.send(pack2);
	}
}
