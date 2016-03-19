import java.net.HttpURLConnection;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

final class gad
  extends BasicHttpResponse
{
  private static final StatusLine b = new BasicStatusLine(HttpVersion.HTTP_1_1, 500, "Unknown error");
  HttpURLConnection a;
  
  gad()
  {
    super(b, null, null);
  }
}

/* Location:
 * Qualified Name:     gad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */