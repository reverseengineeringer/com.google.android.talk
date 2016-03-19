import java.security.MessageDigest;

public final class avg
  implements aiw
{
  private final String b;
  
  public avg(String paramString)
  {
    b = ((String)aal.a(paramString, "Argument must not be null"));
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(b.getBytes(a));
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (avg)paramObject;
    return b.equals(b);
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf("StringSignature{signature='");
    String str2 = b;
    return String.valueOf(str1).length() + 2 + String.valueOf(str2).length() + str1 + str2 + "'}";
  }
}

/* Location:
 * Qualified Name:     avg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */