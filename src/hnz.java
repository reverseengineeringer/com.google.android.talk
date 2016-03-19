public final class hnz
  extends Exception
{
  private hoa a;
  private String b;
  
  public hnz(hoa paramhoa, String paramString)
  {
    super(paramString);
    b = paramString;
    a = paramhoa;
  }
  
  public hoa a()
  {
    return a;
  }
  
  public String toString()
  {
    String str1 = String.valueOf(String.valueOf(a));
    String str2 = String.valueOf(String.valueOf(b));
    return str1.length() + 14 + str2.length() + "Error type: " + str1 + ". " + str2;
  }
}

/* Location:
 * Qualified Name:     hnz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */