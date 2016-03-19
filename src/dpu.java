import java.util.concurrent.TimeUnit;

public class dpu
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final int a;
  public final boolean b;
  
  public String a()
  {
    return "ui_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject;
    kba localkba;
    boolean bool;
    if (doo.e)
    {
      int i = a;
      if (b)
      {
        localObject = " in a call.";
        new StringBuilder(String.valueOf(localObject).length() + 51).append("SetInCallPresenceRequest build protobuf ").append(i).append((String)localObject);
      }
    }
    else
    {
      localObject = new ken();
      localkba = new kba();
      if (!b) {
        break label160;
      }
      if (a <= 0) {
        break label154;
      }
      bool = true;
      label92:
      hbs.a("Expected condition to be true", bool);
      a = Integer.valueOf(100);
      b = Long.valueOf(a);
    }
    for (;;)
    {
      e = localkba;
      requestHeader = don.a(paramString, paramInt1, paramInt2, h);
      return (lyi)localObject;
      localObject = " NOT in a call.";
      break;
      label154:
      bool = false;
      break label92;
      label160:
      a = Integer.valueOf(0);
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    return true;
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    return false;
  }
  
  public long b()
  {
    return TimeUnit.SECONDS.toMillis(a);
  }
  
  public String f()
  {
    return "presence/setpresence";
  }
}

/* Location:
 * Qualified Name:     dpu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */