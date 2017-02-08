package jp.ac.hal.debug;

import java.sql.SQLException;

public class SQLDebug extends Debug {
	
	public static void SQLExceptionPrint(SQLException sqle) {
		System.out.println(sep);
		System.out.println(sqle.getErrorCode() );
		System.out.println(sqle.getSQLState() );
		System.out.println(sqle.getMessage() );
		System.out.println(sqle.getStackTrace() );
		System.out.println(sep);
	}
}
