import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

public final class ahh
  extends HttpEntityEnclosingRequestBase
{
  public ahh() {}
  
  public ahh(String paramString)
  {
    setURI(URI.create(paramString));
  }
  
  public String getMethod()
  {
    return "PATCH";
  }
}

/* Location:
 * Qualified Name:     ahh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */