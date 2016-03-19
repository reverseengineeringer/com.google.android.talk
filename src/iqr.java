import com.google.api.client.http.HttpTransport;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class iqr
  extends HttpTransport
{
  private static final String[] a;
  private final iqn b = new iqn();
  private final SSLSocketFactory c = null;
  private final HostnameVerifier d = null;
  
  static
  {
    String[] arrayOfString = new String[7];
    arrayOfString[0] = "DELETE";
    arrayOfString[1] = "GET";
    arrayOfString[2] = "HEAD";
    arrayOfString[3] = "OPTIONS";
    arrayOfString[4] = "POST";
    arrayOfString[5] = "PUT";
    arrayOfString[6] = "TRACE";
    a = arrayOfString;
    Arrays.sort(arrayOfString);
  }
  
  public iqr()
  {
    this((byte)0);
  }
  
  private iqr(byte paramByte) {}
  
  public boolean supportsMethod(String paramString)
  {
    return Arrays.binarySearch(a, paramString) >= 0;
  }
}

/* Location:
 * Qualified Name:     iqr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */