public final class ism
{
  private final String a;
  private isn b = new isn();
  private isn c = b;
  private boolean d;
  
  public ism(String paramString)
  {
    a = paramString;
  }
  
  public ism a(String paramString, Object paramObject)
  {
    isn localisn = new isn();
    c.c = localisn;
    c = localisn;
    b = paramObject;
    a = ((String)fii.a(paramString));
    return this;
  }
  
  public String toString()
  {
    boolean bool = d;
    StringBuilder localStringBuilder = new StringBuilder(32).append(a).append('{');
    isn localisn = b.c;
    Object localObject2;
    for (Object localObject1 = ""; localisn != null; localObject1 = localObject2)
    {
      if (bool)
      {
        localObject2 = localObject1;
        if (b == null) {}
      }
      else
      {
        localStringBuilder.append((String)localObject1);
        localObject2 = ", ";
        if (a != null) {
          localStringBuilder.append(a).append('=');
        }
        localStringBuilder.append(b);
      }
      localisn = c;
    }
    return '}';
  }
}

/* Location:
 * Qualified Name:     ism
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */