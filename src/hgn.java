import java.util.concurrent.atomic.AtomicReference;

public abstract class hgn
{
  public final hee l;
  public final hfn m;
  public final AtomicReference<hlc> n = new AtomicReference(new hlc());
  public volatile boolean o = true;
  public hla p;
  
  hgn(hee paramhee, hfn paramhfn)
  {
    l = paramhee;
    m = paramhfn;
  }
  
  void a(hla paramhla)
  {
    p = paramhla;
  }
  
  void a(hla paramhla, Runnable paramRunnable)
  {
    if (paramhla.equals(p)) {
      p = null;
    }
    if (paramRunnable != null) {
      aal.a(paramRunnable);
    }
  }
  
  void a(boolean paramBoolean)
  {
    if (o != paramBoolean)
    {
      o = paramBoolean;
      m.e();
    }
  }
  
  abstract boolean b();
  
  abstract String c();
  
  abstract int d();
  
  boolean e()
  {
    return false;
  }
  
  boolean f()
  {
    return false;
  }
  
  public hlc n()
  {
    return (hlc)n.get();
  }
  
  hla o()
  {
    return p;
  }
  
  public String toString()
  {
    String str1 = String.valueOf(c());
    String str2 = String.valueOf(n());
    return String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + "/" + str2;
  }
}

/* Location:
 * Qualified Name:     hgn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */