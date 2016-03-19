public final class hvb
  extends icy
{
  private int k;
  private int l;
  
  public hvb(hva paramhva) {}
  
  public int a()
  {
    return e;
  }
  
  public void a(int paramInt1, icu paramicu, int paramInt2, int paramInt3, int paramInt4)
  {
    super.b(0, paramicu, paramInt2, paramInt2, paramInt3);
    l = paramInt4;
    k = 0;
  }
  
  public int b()
  {
    return l;
  }
  
  protected String c()
  {
    String str = super.c();
    switch (l)
    {
    default: 
      return str;
    case 0: 
      return String.valueOf(str).concat("-normal");
    case 1: 
      return String.valueOf(str).concat("-rounded");
    }
    return String.valueOf(str).concat("-roundedcorners");
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof hvb)) {
      return false;
    }
    hvb localhvb = (hvb)paramObject;
    if (l != l) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  public int hashCode()
  {
    if (k == 0) {
      k = (l + super.hashCode() * 31);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     hvb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */