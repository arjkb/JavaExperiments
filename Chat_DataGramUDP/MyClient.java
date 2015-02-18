/*
	Client program
*/

import java.util.*;
import java.io.*;
import java.net.*;

public class MyClient	{
	public static void main(String args[]) throws UnknownHostException,
												IOException,
												SocketException{
		final int PORT_NUMBER = 4000;

		byte []bufA = new byte[256];
		byte []bufB = new byte[256];

		String message = new String("Hello from client!");

		bufA = message.getBytes();

		InetAddress address = InetAddress.getByName("localhost");

		DatagramSocket s = new DatagramSocket();
		DatagramPacket packet = new DatagramPacket(bufA, bufA.length, address, PORT_NUMBER);
		
		s.send(packet);	//send the packet to destination specified in its constructor

	}
}
