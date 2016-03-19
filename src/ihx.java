public final class ihx
{
  String a;
  String b;
  boolean c;
  ihb d;
  boolean e;
  ihp f;
  private boolean g;
  
  public ihw a()
  {
    boolean bool2 = false;
    if ((g) || (a != null)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      aen.b(bool1, "Authenticated request requires account name");
      if (g)
      {
        bool1 = bool2;
        if (a != null) {}
      }
      else
      {
        bool1 = true;
      }
      aen.b(bool1, "Unauthenticated request should not specify account name");
      return new ihw(this);
    }
  }
  
  public ihx a(ihb paramihb)
  {
    d = paramihb;
    return this;
  }
  
  public ihx a(ihp paramihp)
  {
    f = paramihp;
    return this;
  }
  
  public ihx a(String paramString)
  {
    a = paramString;
    return this;
  }
  
  public ihx a(boolean paramBoolean)
  {
    c = paramBoolean;
    return this;
  }
  
  public ihx b(String paramString)
  {
    b = paramString;
    return this;
  }
  
  public ihx b(boolean paramBoolean)
  {
    e = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     ihx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */