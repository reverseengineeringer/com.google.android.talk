public final class euq
  extends lyi
{
  public int a = 0;
  public String b = "";
  public String c = "";
  
  public euq()
  {
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != 0) {
      paramlxz.a(1, a);
    }
    if (!b.equals("")) {
      paramlxz.a(2, b);
    }
    if (!c.equals("")) {
      paramlxz.a(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != 0) {
      i = j + lxz.e(1, a);
    }
    j = i;
    if (!b.equals("")) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (!c.equals("")) {
      i = j + lxz.b(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     euq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */