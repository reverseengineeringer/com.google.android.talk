import java.util.List;

public final class dyv
  implements eff
{
  private static final long serialVersionUID = 2L;
  private final ksf<String> a;
  private final int b;
  private int c = 0;
  private final String d;
  private String e;
  
  public dyv(List<String> paramList, int paramInt)
  {
    a = ksf.a(paramList);
    b = paramInt;
    d = ezi.a(new Throwable());
  }
  
  public int a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    c = paramInt;
  }
  
  public void a_(String paramString)
  {
    e = paramString;
  }
  
  public ksf<String> b()
  {
    return a;
  }
  
  public int c()
  {
    return c;
  }
  
  public cwi d()
  {
    return new dyu(this);
  }
  
  public String toString()
  {
    int i = b;
    int j = a.size();
    String str1 = d;
    String str2 = e;
    return String.valueOf(str1).length() + 102 + String.valueOf(str2).length() + "query presence request: field mask=" + i + " len(gaiaIds)" + j + "\nCreation stack:\n" + str1 + "\nOrigin stack:\n" + str2;
  }
}

/* Location:
 * Qualified Name:     dyv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */