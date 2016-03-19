import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.chromium.net.CronetEngine;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlRequest.Callback;
import org.chromium.net.Version;

public final class mpb
  extends CronetEngine
{
  private final String a;
  private final ExecutorService b = Executors.newCachedThreadPool(new mpc(this));
  
  public mpb(String paramString)
  {
    a = paramString;
  }
  
  public UrlRequest a(String paramString, UrlRequest.Callback paramCallback, Executor paramExecutor, int paramInt, Collection<Object> paramCollection)
  {
    return new mpe(paramCallback, b, paramExecutor, paramString, a);
  }
  
  boolean a()
  {
    return true;
  }
  
  public String b()
  {
    return "CronetHttpURLConnection/" + Version.a();
  }
}

/* Location:
 * Qualified Name:     mpb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */