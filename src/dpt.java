import java.util.concurrent.TimeUnit;

public class dpt
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final long a;
  
  public dpt(long paramLong)
  {
    a = paramLong;
  }
  
  public String a()
  {
    return "ui_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    if (doo.e)
    {
      l = a;
      new StringBuilder(57).append("SetDndPresenceRequest build protobuf ").append(l);
    }
    ken localken = new ken();
    jyy localjyy = new jyy();
    long l = TimeUnit.MILLISECONDS.toSeconds(TimeUnit.MICROSECONDS.toMillis(a) - System.currentTimeMillis());
    boolean bool;
    if (l > 0L)
    {
      bool = true;
      a = Boolean.valueOf(bool);
      if (l <= 0L) {
        break label140;
      }
    }
    for (;;)
    {
      b = Long.valueOf(l);
      b = localjyy;
      requestHeader = don.a(paramString, paramInt1, paramInt2, h);
      return localken;
      bool = false;
      break;
      label140:
      l = 0L;
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    return true;
  }
  
  public String f()
  {
    return "presence/setpresence";
  }
}

/* Location:
 * Qualified Name:     dpt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */