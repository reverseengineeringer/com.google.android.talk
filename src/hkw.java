public final class hkw
{
  private final String a;
  private String b;
  
  public hkw(String paramString)
  {
    a = paramString;
  }
  
  public hkw a(String paramString)
  {
    b = paramString;
    return this;
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public String toString()
  {
    String str1 = a;
    String str2 = b;
    return String.valueOf(str1).length() + 40 + String.valueOf(str2).length() + "JoinInfo(hangoutId=" + str1 + ",localParticipantId=" + str2 + ")";
  }
}

/* Location:
 * Qualified Name:     hkw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */