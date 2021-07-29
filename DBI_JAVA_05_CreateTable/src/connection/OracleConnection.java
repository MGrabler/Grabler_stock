package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import domain.BankAccountException;

public class OracleConnection
{
	private Connection con;
	
	public OracleConnection() throws BankAccountException
	{
		try
		{	// Load the jdbc driver
			Class.forName("oracle.jdbc.OracleDriver");
			open();
		}
		catch(ClassNotFoundException e)
		{
			throw new BankAccountException("Couldnt find database driver!");
		}
	}
	public void open() throws BankAccountException
	{
		try
		{	// Open the database and AutoCommit off
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL", "DEMO", "oracle");
			con.setAutoCommit(false);
		}
		catch(SQLException e)
		{
			throw new BankAccountException("Couldnt open database connection!");
		}
	}
	public void close() throws BankAccountException
	{
		try
		{	// Close the database and AutoCommit off
			con.close();
		}
		catch(SQLException e)
		{
			throw new BankAccountException("Couldnt close database connection!");
		}
	}
	
	public Connection getConnection() throws BankAccountException
	{
		return con;
	}
}
