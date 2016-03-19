public final class avp
{
  private Class<?> a;
  private Class<?> b;
  private Class<?> c;
  
  public avp() {}
  
  public avp(Class<?> paramClass1, Class<?> paramClass2)
  {
    a(paramClass1, paramClass2);
  }
  
  public avp(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3)
  {
    a(paramClass1, paramClass2, paramClass3);
  }
  
  public void a(Class<?> paramClass1, Class<?> paramClass2)
  {
    a(paramClass1, paramClass2, null);
  }
  
  public void a(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3)
  {
    a = paramClass1;
    b = paramClass2;
    c = paramClass3;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (avp)paramObject;
      if (!a.equals(a)) {
        return false;
      }
      if (!b.equals(b)) {
        return false;
      }
    } while (avq.a(c, c));
    return false;
  }
  
  public int hashCode()
  {
    int j = a.hashCode();
    int k = b.hashCode();
    if (c != null) {}
    for (int i = c.hashCode();; i = 0) {
      return i + (j * 31 + k) * 31;
    }
  }
  
  public String toString()
  {
    String str1 = String.valueOf("MultiClassKey{first=");
    String str2 = String.valueOf(a);
    String str3 = String.valueOf(b);
    return String.valueOf(str1).length() + 10 + String.valueOf(str2).length() + String.valueOf(str3).length() + str1 + str2 + ", second=" + str3 + "}";
  }
}

/* Location:
 * Qualified Name:     avp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */