package api_app;

import files.FilesAPITests;

public class FilesAPITestApplication {
    private static FilesAPITests fapi = null;

    public static void main (String[] args) {
        if (args.length == 0 || args[0] == null) {
           System.out.println("Expected argument: File name is missing...");
           System.exit(1);
        }
    	String filename = args[0];
    	fapi = new FilesAPITests();
    	System.out.println("Upload file: '" + filename + "'");
    	fapi.uploadFile(filename);
    }
}
