import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

final class gag
  implements HostnameVerifier
{
  gag(gaf paramgaf) {}
  
  public boolean verify(String paramString, SSLSession paramSSLSession)
  {
    HostnameVerifier localHostnameVerifier = HttpsURLConnection.getDefaultHostnameVerifier();
    if (localHostnameVerifier.verify(paramString, paramSSLSession)) {
      return true;
    }
    if ("android.clients.google.com".equalsIgnoreCase(paramString)) {
      return localHostnameVerifier.verify("clients.google.com", paramSSLSession);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     gag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */