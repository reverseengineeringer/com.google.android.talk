import java.net.ConnectException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.util.ArrayList;
import org.apache.http.HttpHost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.impl.conn.DefaultClientConnectionOperator;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public final class aeh
  extends DefaultClientConnectionOperator
{
  private static final PlainSocketFactory a = new PlainSocketFactory();
  private final boolean b;
  
  public aeh(SchemeRegistry paramSchemeRegistry, boolean paramBoolean)
  {
    super(paramSchemeRegistry);
    b = paramBoolean;
  }
  
  private ArrayList<InetAddress> a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    paramString = InetAddress.getAllByName(paramString);
    int j = paramString.length;
    int i = 0;
    if (i < j)
    {
      Object localObject = paramString[i];
      if ((b) && ((localObject instanceof Inet6Address))) {
        localArrayList.add(localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        if ((!b) && ((localObject instanceof Inet4Address))) {
          localArrayList.add(localObject);
        }
      }
    }
    return localArrayList;
  }
  
  public void openConnection(OperatedClientConnection paramOperatedClientConnection, HttpHost paramHttpHost, InetAddress paramInetAddress, HttpContext paramHttpContext, HttpParams paramHttpParams)
  {
    if (paramOperatedClientConnection == null) {
      throw new IllegalArgumentException("Connection must not be null.");
    }
    if (paramHttpHost == null) {
      throw new IllegalArgumentException("Target host must not be null.");
    }
    if (paramHttpParams == null) {
      throw new IllegalArgumentException("Parameters must not be null.");
    }
    if (paramOperatedClientConnection.isOpen()) {
      throw new IllegalArgumentException("Connection must not be open.");
    }
    Scheme localScheme = schemeRegistry.getScheme(paramHttpHost.getSchemeName());
    SocketFactory localSocketFactory = localScheme.getSocketFactory();
    Object localObject;
    LayeredSocketFactory localLayeredSocketFactory;
    if ((localSocketFactory instanceof LayeredSocketFactory))
    {
      localObject = a;
      localLayeredSocketFactory = (LayeredSocketFactory)localSocketFactory;
    }
    for (;;)
    {
      ArrayList localArrayList = a(paramHttpHost.getHostName());
      int i = 0;
      while (i < localArrayList.size())
      {
        Socket localSocket2 = ((SocketFactory)localObject).createSocket();
        paramOperatedClientConnection.opening(localSocket2, paramHttpHost);
        try
        {
          Socket localSocket3 = ((SocketFactory)localObject).connectSocket(localSocket2, ((InetAddress)localArrayList.get(i)).getHostAddress(), localScheme.resolvePort(paramHttpHost.getPort()), paramInetAddress, 0, paramHttpParams);
          Socket localSocket1 = localSocket2;
          if (localSocket2 != localSocket3)
          {
            paramOperatedClientConnection.opening(localSocket3, paramHttpHost);
            localSocket1 = localSocket3;
          }
          prepareSocket(localSocket1, paramHttpContext, paramHttpParams);
          if (localLayeredSocketFactory != null)
          {
            localSocket2 = localLayeredSocketFactory.createSocket(localSocket1, paramHttpHost.getHostName(), localScheme.resolvePort(paramHttpHost.getPort()), true);
            if (localSocket2 != localSocket1) {
              paramOperatedClientConnection.opening(localSocket2, paramHttpHost);
            }
            paramOperatedClientConnection.openCompleted(localSocketFactory.isSecure(localSocket2), paramHttpParams);
            return;
          }
          paramOperatedClientConnection.openCompleted(localSocketFactory.isSecure(localSocket1), paramHttpParams);
          return;
        }
        catch (SocketException localSocketException)
        {
          if (i == localArrayList.size() - 1)
          {
            if ((localSocketException instanceof ConnectException)) {}
            for (paramOperatedClientConnection = (ConnectException)localSocketException;; paramOperatedClientConnection = (ConnectException)new ConnectException(localSocketException.getMessage()).initCause(localSocketException)) {
              throw new HttpHostConnectException(paramHttpHost, paramOperatedClientConnection);
            }
          }
        }
        catch (ConnectTimeoutException localConnectTimeoutException)
        {
          if (i == localArrayList.size() - 1) {
            throw localConnectTimeoutException;
          }
          i += 1;
        }
      }
      return;
      localLayeredSocketFactory = null;
      localObject = localSocketFactory;
    }
  }
}

/* Location:
 * Qualified Name:     aeh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */