public final class hpc
  extends lyi
{
  public String a = "";
  public String b = "";
  public String c = "";
  
  public hpc()
  {
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (!a.equals("")) {
      paramlxz.a(2, a);
    }
    if (!b.equals("")) {
      paramlxz.a(3, b);
    }
    if (!c.equals("")) {
      paramlxz.a(6, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (!a.equals("")) {
      i = j + lxz.b(2, a);
    }
    j = i;
    if (!b.equals("")) {
      j = i + lxz.b(3, b);
    }
    i = j;
    if (!c.equals("")) {
      i = j + lxz.b(6, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     hpc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */