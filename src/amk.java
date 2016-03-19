final class amk
  implements amp
{
  int a;
  private final aml b;
  private Class c;
  
  amk(aml paramaml)
  {
    b = paramaml;
  }
  
  public void a()
  {
    b.a(this);
  }
  
  void a(int paramInt, Class paramClass)
  {
    a = paramInt;
    c = paramClass;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof amk))
    {
      paramObject = (amk)paramObject;
      bool1 = bool2;
      if (a == a)
      {
        bool1 = bool2;
        if (c == c) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    int j = a;
    if (c != null) {}
    for (int i = c.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
  
  public String toString()
  {
    String str1 = String.valueOf("Key{size=");
    int i = a;
    String str2 = String.valueOf(c);
    return String.valueOf(str1).length() + 18 + String.valueOf(str2).length() + str1 + i + "array=" + str2 + "}";
  }
}

/* Location:
 * Qualified Name:     amk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */