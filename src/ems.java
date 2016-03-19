public abstract class ems
{
  public abstract int a();
  
  public abstract long b();
  
  public abstract long c();
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof ems))) {}
    do
    {
      return false;
      paramObject = (ems)paramObject;
    } while ((a() != ((ems)paramObject).a()) || (b() != ((ems)paramObject).b()));
    return true;
  }
  
  public int hashCode()
  {
    String str1 = String.valueOf(Integer.toString(a()));
    String str2 = String.valueOf(Long.toString(b()));
    if (str2.length() != 0) {}
    for (str1 = str1.concat(str2);; str1 = new String(str1)) {
      return str1.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     ems
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */