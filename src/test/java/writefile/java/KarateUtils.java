package writefile.java;

import java.io.FileOutputStream;
import java.io.IOException;

import com.intuit.karate.http.Response;

public class KarateUtils {
	public static void write(Response response, String filePath) throws IOException {
		try (FileOutputStream fos = new FileOutputStream(filePath)) {
		fos.write(response.getBody().toString().getBytes());
		}
		}
}
