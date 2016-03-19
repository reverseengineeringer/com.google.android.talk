public final class hgt
  extends hgc
{
  private hgn i;
  private hla j;
  
  public hgt()
  {
    super("Invalid");
  }
  
  public void a(hla paramhla, hgn paramhgn)
  {
    j = paramhla;
    i = paramhgn;
  }
  
  public boolean d()
  {
    hlc localhlc = i.n();
    if ((i.d() == 0) || (localhlc.b() == 0) || (localhlc.c() == 0)) {
      return false;
    }
    a(i.d(), localhlc.b(), localhlc.c(), i.e(), i.f());
    a(localhlc.g());
    b(localhlc.f());
    if (j.c() == -1) {
      a(localhlc.b(), localhlc.c(), false);
    }
    for (;;)
    {
      return super.d();
      a(j.c(), j.d(), j.e());
    }
  }
}

/* Location:
 * Qualified Name:     hgt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */