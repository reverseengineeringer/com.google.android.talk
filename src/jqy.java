public final class jqy
  extends jqt
{
  private final int a;
  
  public jqy(int paramInt)
  {
    a = paramInt;
  }
  
  public int a()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof jqt)) {
        break;
      }
      paramObject = (jqt)paramObject;
    } while (a == ((jqt)paramObject).a());
    return false;
    return false;
  }
  
  public int hashCode()
  {
    return 0xF4243 ^ a;
  }
  
  public String toString()
  {
    String str = String.valueOf("AccountId{id=");
    int i = a;
    return String.valueOf(str).length() + 12 + str + i + "}";
  }
}

/* Location:
 * Qualified Name:     jqy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */