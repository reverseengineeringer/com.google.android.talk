public final class gvd
  implements grk
{
  private int a;
  private grm b;
  
  public gvd(grk paramgrk)
  {
    a = paramgrk.b();
    b = ((grm)paramgrk.W_().f());
  }
  
  public boolean O_()
  {
    return true;
  }
  
  public grm W_()
  {
    return b;
  }
  
  public int b()
  {
    return a;
  }
  
  public String toString()
  {
    String str;
    if (b() == 1) {
      str = "changed";
    }
    for (;;)
    {
      return "DataEventEntity{ type=" + str + ", dataitem=" + W_() + " }";
      if (b() == 2) {
        str = "deleted";
      } else {
        str = "unknown";
      }
    }
  }
}

/* Location:
 * Qualified Name:     gvd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */