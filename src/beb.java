import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class beb
{
  private String a;
  private String b;
  private List<bdx> c = new ArrayList();
  private String d;
  private String e;
  private boolean f;
  private boolean g;
  private boolean h;
  private boolean i;
  private ArrayList<bdw> j = new ArrayList();
  private ArrayList<bee> k = new ArrayList();
  
  public bea a()
  {
    return new bea(a, b, c, d, e, f, g, h, i, j, k);
  }
  
  public beb a(bdx parambdx)
  {
    c.add(parambdx);
    return this;
  }
  
  public beb a(String paramString)
  {
    a = paramString;
    return this;
  }
  
  public beb a(Collection<bdx> paramCollection)
  {
    if (paramCollection != null) {
      c.addAll(paramCollection);
    }
    return this;
  }
  
  public beb a(boolean paramBoolean)
  {
    f = paramBoolean;
    return this;
  }
  
  public beb b(String paramString)
  {
    b = paramString;
    return this;
  }
  
  public beb b(Collection<bdw> paramCollection)
  {
    j.addAll(paramCollection);
    return this;
  }
  
  public beb b(boolean paramBoolean)
  {
    g = paramBoolean;
    return this;
  }
  
  public beb c(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public beb c(Collection<bee> paramCollection)
  {
    k.addAll(paramCollection);
    return this;
  }
  
  public beb c(boolean paramBoolean)
  {
    i = paramBoolean;
    return this;
  }
  
  public beb d(String paramString)
  {
    e = paramString;
    return this;
  }
  
  public beb e(String paramString)
  {
    if (paramString != null) {
      j.add(new bdw(paramString));
    }
    return this;
  }
  
  public beb f(String paramString)
  {
    if (paramString != null) {
      k.add(new bee(paramString));
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     beb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */