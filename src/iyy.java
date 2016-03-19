public final class iyy
  extends lyb<iyy>
{
  public izs a = null;
  public iyc apiHeader = null;
  
  public iyy()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (apiHeader != null) {
      paramlxz.b(1, apiHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (apiHeader != null) {
      i = j + lxz.d(1, apiHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    return j;
  }
  
  public iyy b(lxy paramlxy)
  {
    for (;;)
    {
      int i = paramlxy.a();
      switch (i)
      {
      default: 
        if (super.a(paramlxy, i)) {}
        break;
      case 0: 
        return this;
      case 10: 
        if (apiHeader == null) {
          apiHeader = new iyc();
        }
        paramlxy.a(apiHeader);
        break;
      case 18: 
        if (a == null) {
          a = new izs();
        }
        paramlxy.a(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     iyy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */