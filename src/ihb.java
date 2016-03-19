import java.io.Serializable;
import java.util.List;

public final class ihb
  implements Serializable
{
  private static final long serialVersionUID = 3145206267302890026L;
  public List<axt> a;
  public List<axn> b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  private final String g;
  private final ihb h;
  
  public ihb(axm paramaxm)
  {
    a = a;
    b = b;
  }
  
  public static axm newBuilder()
  {
    return new axm();
  }
  
  public axt a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= a.size())) {
      return null;
    }
    return (axt)a.get(paramInt);
  }
  
  public String a()
  {
    return c;
  }
  
  public axn b(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= b.size())) {
      return null;
    }
    return (axn)b.get(paramInt);
  }
  
  public String b()
  {
    return d;
  }
  
  public String c()
  {
    return e;
  }
  
  public String d()
  {
    return f;
  }
  
  public ihb e()
  {
    return h;
  }
  
  public String f()
  {
    return g;
  }
  
  public List<axt> g()
  {
    return a;
  }
  
  public int h()
  {
    return a.size();
  }
  
  public List<axn> i()
  {
    return b;
  }
  
  public int j()
  {
    return b.size();
  }
}

/* Location:
 * Qualified Name:     ihb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */