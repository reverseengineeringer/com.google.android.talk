import android.content.Context;
import com.google.api.client.http.HttpTransport;
import java.util.LinkedList;
import java.util.Queue;

public final class hgv
{
  hhb a;
  private final Context b;
  private final String c;
  private final boolean d;
  private final Queue<hgz<byte[]>> e;
  private String f;
  private long g;
  private HttpTransport h;
  
  public hgv(Context paramContext, String paramString) {}
  
  private hgv(Context paramContext, String paramString, HttpTransport paramHttpTransport, boolean paramBoolean)
  {
    b = paramContext;
    c = paramString;
    h = paramHttpTransport;
    d = paramBoolean;
    e = new LinkedList();
  }
  
  private void a(long paramLong, String paramString, byte[] paramArrayOfByte, int paramInt, hhb paramhhb)
  {
    if (d) {}
    for (paramArrayOfByte = new hhd(paramLong, paramString, paramArrayOfByte, paramInt, (hbr)ilh.b(b, hbr.class), c, paramhhb, b); f != null; paramArrayOfByte = new hgz(paramLong, paramString, paramArrayOfByte, paramInt, h, c, paramhhb))
    {
      paramArrayOfByte.a(f, g);
      new hhc(this, paramArrayOfByte).a(new Void[0]);
      hlk.a(3, "vclib", "Starting apiary request: %s", new Object[] { paramString });
      return;
    }
    e.add(paramArrayOfByte);
    hlk.a(3, "vclib", "authToken not available yet, delaying request. #pending: %d", new Object[] { Integer.valueOf(e.size()) });
  }
  
  public void a(long paramLong, String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    hbs.b("Expected non-null", a);
    a(paramLong, paramString, paramArrayOfByte, paramInt, new hgw(this));
  }
  
  public void a(hhb paramhhb)
  {
    a = paramhhb;
  }
  
  public void a(String paramString, long paramLong)
  {
    if (f == null) {}
    for (boolean bool = true;; bool = false)
    {
      hlk.a(3, "vclib", "Setting authToken, wasNull: %s", new Object[] { Boolean.valueOf(bool) });
      f = paramString;
      g = paramLong;
      if (!bool) {
        break;
      }
      hlk.a(3, "vclib", "Issuing any pending requests, #requests: %d", new Object[] { Integer.valueOf(e.size()) });
      while (!e.isEmpty())
      {
        paramString = (hgz)e.remove();
        paramString.a(f, g);
        new hhc(this, paramString).a(new Void[0]);
      }
    }
  }
  
  public void a(String paramString, byte[] paramArrayOfByte, int paramInt, hhb paramhhb)
  {
    hbs.b("Expected non-null", paramhhb);
    a(0L, paramString, paramArrayOfByte, paramInt, paramhhb);
  }
}

/* Location:
 * Qualified Name:     hgv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */