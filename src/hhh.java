import java.lang.reflect.Field;
import java.util.Locale;

final class hhh<T extends lyi>
  implements hhb, Runnable
{
  private final hhe a;
  private final String b;
  private final lyi c;
  private final Class<T> d;
  private final hbp<T> e;
  private final int f;
  private long g;
  private final int h;
  private int i;
  
  hhh(hhe paramhhe, String paramString, lyi paramlyi, Class<T> paramClass, hbp<T> paramhbp, int paramInt1, long paramLong, int paramInt2)
  {
    a = paramhhe;
    b = paramString;
    c = paramlyi;
    d = paramClass;
    e = paramhbp;
    f = paramInt1;
    g = 1000L;
    h = paramInt2;
    i = 0;
  }
  
  private void a(T paramT, kdp paramkdp)
  {
    if ((paramT == null) || (paramkdp == null) || (a.intValue() == 3) || (a.intValue() == 2)) {}
    for (int j = 1; (j == 0) || (i == h); j = 0)
    {
      hlk.c("vclib", "%s request failed after %d retries (%s)", new Object[] { b, Integer.valueOf(i), paramT });
      e.b(paramT);
      return;
    }
    i += 1;
    if ((paramkdp != null) && (f != null)) {}
    for (long l = f.longValue();; l = 0L)
    {
      l = Math.max(l, g);
      g <<= 1;
      hlk.a(3, "vclib", "Will retry %s request after %d milliseconds", new Object[] { b, Long.valueOf(l) });
      aal.a(this, l);
      return;
    }
  }
  
  public void a(long paramLong)
  {
    a(null, null);
  }
  
  public void a(long paramLong, String paramString) {}
  
  public void a(long paramLong, byte[] paramArrayOfByte)
  {
    try
    {
      lyi locallyi = (lyi)d.newInstance();
      lyi.b(locallyi, paramArrayOfByte, paramArrayOfByte.length);
      paramArrayOfByte = (kdp)d.getField("responseHeader").get(locallyi);
      if ((paramArrayOfByte == null) || (a.intValue() != 1))
      {
        a(locallyi, paramArrayOfByte);
        return;
      }
      hlk.a(3, "vclib", "%s request succeeded (%s)", new Object[] { b, locallyi });
      e.a(locallyi);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      hlk.a("vclib", "Failed to process mesi response", paramArrayOfByte);
      e.b(null);
    }
  }
  
  public void run()
  {
    try
    {
      Field localField = c.getClass().getField("requestHeader");
      lyi locallyi = c;
      kdo localkdo = new kdo();
      a = a.f;
      b = a.g;
      f = Integer.valueOf(i);
      String str = Locale.getDefault().getLanguage();
      if (!str.isEmpty()) {
        d = str;
      }
      g = a.h;
      localField.set(locallyi, localkdo);
      hlk.a(3, "vclib", "Issuing %s request attempt %d (%s)", new Object[] { b, Integer.valueOf(i), c });
      a.c.a(String.valueOf(b).concat("?alt=proto"), lyi.a(c), f, this);
      return;
    }
    catch (Exception localException)
    {
      hlk.a("vclib", "Failed to issue mesi request", localException);
      e.b(null);
    }
  }
}

/* Location:
 * Qualified Name:     hhh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */