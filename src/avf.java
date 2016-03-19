import java.security.MessageDigest;

public final class avf
  implements aiw
{
  private final Object b;
  
  public avf(Object paramObject)
  {
    b = aal.a(paramObject, "Argument must not be null");
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(b.toString().getBytes(a));
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof avf))
    {
      paramObject = (avf)paramObject;
      return b.equals(b);
    }
    return false;
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf("ObjectKey{object=");
    String str2 = String.valueOf(b);
    return String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + str2 + "}";
  }
}

/* Location:
 * Qualified Name:     avf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */