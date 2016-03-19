import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.X509TrustManager;

public final class mqv
  implements mqw
{
  private final X509TrustManager a;
  
  public mqv(X509TrustManager paramX509TrustManager)
  {
    a = paramX509TrustManager;
  }
  
  public List<X509Certificate> a(X509Certificate[] paramArrayOfX509Certificate, String paramString1, String paramString2)
  {
    a.checkServerTrusted(paramArrayOfX509Certificate, paramString1);
    return Collections.emptyList();
  }
}

/* Location:
 * Qualified Name:     mqv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */