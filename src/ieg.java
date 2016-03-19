import android.net.Uri;

final class ieg
  implements ifa
{
  private final Uri b;
  private final long c;
  private final long d;
  private long e = 0L;
  private idq f;
  
  public ieg(ied paramied, Uri paramUri, long paramLong1, long paramLong2)
  {
    b = paramUri;
    c = paramLong1;
    d = 0L;
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    if (paramLong1 - e > ied.a) {
      e = paramLong1;
    }
    try
    {
      a.b();
      if (d + paramLong1 < paramLong2) {
        a.b.a(d + paramLong1, c);
      }
      return;
    }
    catch (idq localidq)
    {
      for (;;)
      {
        f = localidq;
        a.a();
      }
    }
  }
  
  public boolean a()
  {
    return f != null;
  }
  
  public idq b()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     ieg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */