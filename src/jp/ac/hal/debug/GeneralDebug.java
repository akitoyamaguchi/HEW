package jp.ac.hal.debug;

public class GeneralDebug extends Debug {
	public static void ExceptionDebug(Exception e) {
		System.out.println(sep);
		System.out.println(e.getMessage() );
		System.out.println(e.getStackTrace() );
		System.out.println(sep);		
	}
	
	public static void ClassNotFoundExceptionDebug(ClassNotFoundException cnfe) {
		System.out.println(sep);
		System.out.println(cnfe.getMessage() );
		System.out.println(cnfe.getStackTrace() );
		System.out.println(sep);
	}
}
