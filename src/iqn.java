import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

public final class iqn
{
  final Proxy a = null;
  
  public iqn()
  {
    this((byte)0);
  }
  
  private iqn(byte paramByte) {}
  
  public HttpURLConnection a(URL paramURL)
  {
    if (a == null) {}
    for (paramURL = paramURL.openConnection();; paramURL = paramURL.openConnection(a)) {
      return (HttpURLConnection)paramURL;
    }
  }
}

/* Location:
 * Qualified Name:     iqn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */