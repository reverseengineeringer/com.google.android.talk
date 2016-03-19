final class aoz
  implements aow
{
  private final String a;
  
  aoz(String paramString)
  {
    a = paramString;
  }
  
  public String a()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof aoz))
    {
      paramObject = (aoz)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf("StringHeaderFactory{value='");
    String str2 = a;
    return String.valueOf(str1).length() + 2 + String.valueOf(str2).length() + str1 + str2 + "'}";
  }
}

/* Location:
 * Qualified Name:     aoz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */