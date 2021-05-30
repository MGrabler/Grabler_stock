package test;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.OracleConnection;
import domain.BankAccountException;

public class A_TestConnection
{
	private static OracleConnection oConnection;
	private static Connection		con;
	
	public static void main(String[] args)
	{
		try
		{
			oConnection = new OracleConnection();
			oConnection.open();
			con = oConnection.getConnection();
			
			infosDatenBank();
			
			
			oConnection.close();
		}
		catch(BankAccountException e)
		{
			System.out.println(e.getMessage());
		}
	}
	public static void infosDatenBank()
	{
		try
		{
			System.out.println(con.getClass().getSimpleName());			
			System.out.println("getCatalog() = "+ con.getCatalog());
			System.out.println(con.getMetaData().getClientInfoProperties());
			ResultSet s = con.getMetaData().getClientInfoProperties();
			s.next();
//			System.out.println(con.getClientInfo(name));
			System.out.println("getNetworkTimeout() = "+ con.getNetworkTimeout());
			System.out.println("getSchema() = "+ con.getSchema());
			System.out.println("getTransactionIsolation() = "+ con.getTransactionIsolation());
			System.out.println("getClientInfo() = "+ con.getClientInfo());
			System.out.println("getTypeMap() = "+ con.getTypeMap());
			System.out.println("getWarnings() = "+ con.getWarnings());
			System.out.println("getAutoCommit() = "+ con.getAutoCommit());
			
			System.out.println("---------------------------------------------------------");
			
			DatabaseMetaData dmd = con.getMetaData();
			System.out.println(dmd.getClass().getSimpleName());
			System.out.println("getDatabaseMajorVersion() = "+ dmd.getDatabaseMajorVersion());
			System.out.println("getDatabaseProductName() = "+ dmd.getDatabaseProductName());
			System.out.println("getDriverVersion() = "+ dmd.getDriverVersion());
			System.out.println("getDriverName() = "+ dmd.getDriverName());
			System.out.println("getSQLKeywords() = "+ dmd.getSQLKeywords());
			System.out.println("getStringFunctions() = "+ dmd.getStringFunctions());
			System.out.println("getSystemFunctions() = "+ dmd.getSystemFunctions());
			System.out.println("getUserName() = "+ dmd.getUserName());
			System.out.println("getURL() = "+ dmd.getURL());
			
			
			
			
		}
		catch(SQLException e)
		{
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
	}
}
