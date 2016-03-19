class dbd
  extends bis
{
  private int c;
  
  public dbd(das paramdas, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramdas, paramInt, paramBoolean1, true, fcj.a);
  }
  
  public dbd(das paramdas, int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    super(paramdas, paramInt1 - 1, dbg.f - 1, paramBoolean1, paramBoolean2);
    c = paramInt2;
  }
  
  protected void a(aao paramaao) {}
  
  protected void a(aao paramaao, bec parambec)
  {
    paramaao = (fce)a;
    paramaao.j();
    paramaao.k();
    parambec = parambec.a();
    a = d.i;
    boolean bool1 = d.f.c(parambec);
    boolean bool2 = d.f.b(parambec);
    paramaao.a(parambec, d.i, bool2, c);
    paramaao.a(bool1, false);
  }
}

/* Location:
 * Qualified Name:     dbd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */