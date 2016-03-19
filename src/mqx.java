import android.net.http.X509TrustManagerExtensions;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.X509TrustManager;

public final class mqx
  implements mqw
{
  private final X509TrustManagerExtensions a;
  
  public mqx(X509TrustManager paramX509TrustManager)
  {
    a = new X509TrustManagerExtensions(paramX509TrustManager);
  }
  
  public List<X509Certificate> a(X509Certificate[] paramArrayOfX509Certificate, String paramString1, String paramString2)
  {
    return a.checkServerTrusted(paramArrayOfX509Certificate, paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     mqx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */