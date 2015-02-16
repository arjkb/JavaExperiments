/*
	Java program to add two matrices using thread.

	216B15 -- Arjun Krishna Babu
*/

import java.util.*;

class Adder implements Runnable	{
	/*
		Function takes in a row, adds the row, and returns the sum
	*/
	
	Thread T;
	int sum;
	int []M;
	
	int r, c;
	
	int i, j;
	
	Adder(int []M, int c)	{
		this.M = M;
		this.r = r;
		this.c = c;
		
		sum = 0;
		
		T = new Thread(this);
		T.start();				
	}
	
	public void run()	{
		for(j = 0; j < c; j++)	{
			sum += M[j];
		}
	}
	
	public int getSum()	{
		return sum;
	}
}

public class MainClass	{
		
	public static void main(String []args)	{
		Scanner in = new Scanner(System.in);
		Random rand = new Random();
		
		Adder []add;
		
		int row, col;
		int [][]A;
		int []R;
		int i, j;
		long startTime, totTime;
		
		System.out.print("\n Enter row size: ");
		row = rand.nextInt(20);

		System.out.print("\n Enter col size: ");
		col = rand.nextInt(20);

		A = new int[row][col];
		R = new int[row];
		
		//Populate matrix using random values
		for(i = 0; i < row; i++)	{
			for(j = 0; j < col; j++)	{
				A[i][j] = rand.nextInt(20);
			}
		}
 
		//Display matrix
		System.out.println("\n Matrix A[" + row + "][" + col + "]: ");
		for(i = 0; i < row; i++)	{
			System.out.print("\n");
			for(j = 0; j < col; j++)	{
				System.out.print(" " + A[i][j]);
			}
		}
		
		//compute sum without using thread
		startTime = System.nanoTime();
		for(i = 0; i < row; i++)	{
			for(j = 0; j < col; j++)	{
				R[i] += A[i][j];
			}
		}
		
		System.out.println("\n Sum of rows: ");
		for(i = 0; i < row; i++)	{
			System.out.print("\n");
			System.out.print(" " + R[i] );
		}
		
		totTime = System.nanoTime() - startTime;
		
		System.out.println("\n Time taken sequentially: " + totTime);
		
		
		//compute sum using thread
		add = new Adder[row];

		startTime = System.nanoTime();
		for(i = 0; i < row; i++)	{
			for(j = 0; j < col; j++)	{
				add[i] = new Adder(A[i], col);
			}
		}
		
		//wait for all threads to finish
		for(i = 0; i < row; i++)	{
			try {
				add[i].T.join();				
			}
			catch (Exception E)		{	}
		}
	
		totTime = System.nanoTime() - startTime;
		
			
		System.out.println("\n Sum of rows: ");
		for(i = 0; i < row; i++)	{
			System.out.print("\n");
			System.out.print(" " + add[i].getSum() );
		}
		
		System.out.println("\n Time taken using thread: " + totTime);

	}
}
