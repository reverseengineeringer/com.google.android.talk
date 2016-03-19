public final class jqx
  implements jqv
{
  private final Class<? extends hpu> a;
  
  public jqx(Class<? extends hpu> paramClass)
  {
    a = paramClass;
  }
  
  public Class<? extends hpu> a()
  {
    return a;
  }
  
  public Class<? extends jqv> annotationType()
  {
    return jqv.class;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof jqv))
    {
      paramObject = (jqv)paramObject;
      return a.equals(((jqv)paramObject).a());
    }
    return false;
  }
  
  public int hashCode()
  {
    return 0x7C604DB6 ^ a.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("@com.google.apps.tiktok.account.ActivityAccountHandler(");
    localStringBuilder.append("handler=");
    localStringBuilder.append(a);
    return ')';
  }
}

/* Location:
 * Qualified Name:     jqx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */