import java.security.MessageDigest;

final class akd
  implements aiw
{
  private final aiw b;
  private final aiw c;
  
  public akd(aiw paramaiw1, aiw paramaiw2)
  {
    b = paramaiw1;
    c = paramaiw2;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    b.a(paramMessageDigest);
    c.a(paramMessageDigest);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof akd))
    {
      paramObject = (akd)paramObject;
      bool1 = bool2;
      if (b.equals(b))
      {
        bool1 = bool2;
        if (c.equals(c)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return b.hashCode() * 31 + c.hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf("DataCacheKey{sourceKey=");
    String str2 = String.valueOf(b);
    String str3 = String.valueOf(c);
    return String.valueOf(str1).length() + 13 + String.valueOf(str2).length() + String.valueOf(str3).length() + str1 + str2 + ", signature=" + str3 + "}";
  }
}

/* Location:
 * Qualified Name:     akd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */