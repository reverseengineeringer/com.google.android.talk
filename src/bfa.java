public final class bfa
  extends ehx
{
  private final bfd a;
  private final String b;
  
  public bfa(String paramString, bfd parambfd)
  {
    a = parambfd;
    b = paramString;
  }
  
  public String a()
  {
    return b;
  }
  
  public String c()
  {
    String str = String.valueOf(b);
    if (str.length() != 0) {
      return "###".concat(str);
    }
    return new String("###");
  }
}

/* Location:
 * Qualified Name:     bfa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */