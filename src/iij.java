final class iij
  extends iic
{
  private final String a;
  private final long b;
  
  iij(String paramString, long paramLong)
  {
    if (paramString == null) {
      throw new NullPointerException("Null token");
    }
    a = paramString;
    b = paramLong;
  }
  
  public String a()
  {
    return a;
  }
  
  public long b()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof iic)) {
        break;
      }
      paramObject = (iic)paramObject;
    } while ((a.equals(((iic)paramObject).a())) && (b == ((iic)paramObject).b()));
    return false;
    return false;
  }
  
  public int hashCode()
  {
    return (int)((a.hashCode() ^ 0xF4243) * 1000003 ^ b >>> 32 ^ b);
  }
  
  public String toString()
  {
    String str1 = String.valueOf("ApiaryAuthToken{token=");
    String str2 = a;
    long l = b;
    return String.valueOf(str1).length() + 28 + String.valueOf(str2).length() + str1 + str2 + ", time=" + l + "}";
  }
}

/* Location:
 * Qualified Name:     iij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */