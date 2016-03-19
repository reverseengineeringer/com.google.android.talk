import java.util.concurrent.TimeUnit;

public class dpq
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final String a;
  public final boolean b;
  public final int c;
  public final boolean d;
  
  public dpq(String paramString, int paramInt)
  {
    a = paramString;
    b = true;
    c = paramInt;
    d = true;
  }
  
  public String a()
  {
    return "background_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    kea localkea = new kea();
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    b = a;
    a = Boolean.valueOf(b);
    c = Integer.valueOf(c);
    d = Boolean.valueOf(d);
    return localkea;
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    paramdvn = eck.a(parambfd);
    parambfd = String.valueOf(ezi.b(parambfd.a()));
    if (parambfd.length() != 0) {}
    for (parambfd = "SetActiveClientOperation failed: ".concat(parambfd);; parambfd = new String("SetActiveClientOperation failed: "))
    {
      ezi.d("Babel_RequestWriter", parambfd, new Object[0]);
      paramdvn.a(0);
      return;
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    return true;
  }
  
  public long b()
  {
    return TimeUnit.SECONDS.toMillis(120L);
  }
  
  public String f()
  {
    return "clients/setactiveclient";
  }
}

/* Location:
 * Qualified Name:     dpq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */