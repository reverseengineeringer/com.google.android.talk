public final class bvm
  implements eff
{
  private static final long serialVersionUID = 1L;
  private final int a;
  private final String b;
  private final String c;
  private int d = 0;
  private final String e;
  private String f;
  
  public bvm(String paramString1, String paramString2, int paramInt)
  {
    c = paramString1;
    b = paramString2;
    a = paramInt;
    e = ezi.a(new Throwable());
  }
  
  public String a()
  {
    return c;
  }
  
  public void a(int paramInt)
  {
    d = paramInt;
  }
  
  public void a_(String paramString)
  {
    f = paramString;
  }
  
  public String b()
  {
    return b;
  }
  
  public int c()
  {
    return d;
  }
  
  public cwi d()
  {
    return new bvk(this);
  }
  
  public int e()
  {
    return a;
  }
  
  public String toString()
  {
    String str1 = String.valueOf("modify OTR request: newOtrStatus=");
    int i = a;
    String str2 = b;
    String str3 = c;
    String str4 = e;
    String str5 = f;
    return String.valueOf(str1).length() + 76 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + str1 + i + "conversationId=" + str2 + "clientGeneratedId=" + str3 + "\nCreation stack:\n" + str4 + "\nOrigin stack:\n" + str5;
  }
}

/* Location:
 * Qualified Name:     bvm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */