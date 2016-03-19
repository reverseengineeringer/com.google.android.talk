import java.util.List;

public final class dya
  implements eff
{
  private static final long serialVersionUID = 1L;
  private final ksf<dne> a;
  private int b = 0;
  private final String c;
  private String d;
  
  public dya(List<dne> paramList)
  {
    a = ksf.a(paramList);
    c = ezi.a(new Throwable());
  }
  
  public ksf<dne> a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void a_(String paramString)
  {
    d = paramString;
  }
  
  public int c()
  {
    return b;
  }
  
  public cwi d()
  {
    return new dxz(this);
  }
  
  public String toString()
  {
    String str1 = String.valueOf("mark event observed request: len(observed events): ");
    int i = a.size();
    String str2 = c;
    String str3 = d;
    return String.valueOf(str1).length() + 43 + String.valueOf(str2).length() + String.valueOf(str3).length() + str1 + i + "\nCreation stack:\n" + str2 + "\nOrigin stack:\n" + str3;
  }
}

/* Location:
 * Qualified Name:     dya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */