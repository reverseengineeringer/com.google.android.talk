public final class ffw
{
  private grp a;
  
  public ffw()
  {
    this(new grp());
  }
  
  private ffw(grp paramgrp)
  {
    a = paramgrp;
  }
  
  public grp a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    a.a("6", paramInt);
  }
  
  public void a(long paramLong)
  {
    a.a("12", paramLong);
  }
  
  public void a(emc paramemc)
  {
    a.a("24", paramemc.ordinal());
  }
  
  public void a(emd paramemd)
  {
    a.a("15", paramemd.ordinal());
  }
  
  public void a(String paramString)
  {
    a.a("25", paramString);
  }
  
  public void b(int paramInt)
  {
    a.a("22", paramInt - 1);
  }
  
  public void b(long paramLong)
  {
    a.a("26", paramLong);
  }
  
  public void b(String paramString)
  {
    a.a("28", paramString);
  }
  
  public void c(String paramString)
  {
    a.a("18", paramString);
  }
}

/* Location:
 * Qualified Name:     ffw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */