import android.content.Context;
import java.io.InputStream;
import java.nio.channels.Channels;
import java.util.Map;
import org.chromium.net.HttpUrlRequest;

final class ies
  extends iej
{
  private final Context h;
  private final String i;
  private final String j;
  private final long k;
  private final long l;
  private final InputStream m;
  private final boolean n;
  private final ifa o;
  private HttpUrlRequest p;
  
  public ies(Context paramContext, ihs paramihs, String paramString1, String paramString2, long paramLong1, long paramLong2, InputStream paramInputStream, boolean paramBoolean, ifa paramifa)
  {
    super(paramihs);
    h = paramContext;
    i = paramString1;
    j = paramString2;
    k = 0L;
    l = paramLong2;
    m = paramInputStream;
    n = paramBoolean;
    o = paramifa;
  }
  
  public void a()
  {
    hq localhq = new hq();
    localhq.putAll(j().a(i));
    long l1 = k;
    long l2 = l;
    long l3 = l;
    localhq.put("Content-Range", 68 + "bytes " + l1 + "-" + (l2 - 1L) + "/" + l3);
    p = iff.a(h, i, 3, localhq, g);
    p.a(j, new ife(Channels.newChannel(m), o, l - k), l - k);
    p.a("PUT");
  }
  
  protected void a(HttpUrlRequest paramHttpUrlRequest) {}
  
  protected HttpUrlRequest b()
  {
    return p;
  }
  
  public void c()
  {
    p.i();
  }
}

/* Location:
 * Qualified Name:     ies
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */