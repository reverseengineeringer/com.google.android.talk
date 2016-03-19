final class akk<Z>
{
  private aiw a;
  private ajc<Z> b;
  private alp<Z> c;
  
  <X> void a(aiw paramaiw, ajc<X> paramajc, alp<X> paramalp)
  {
    a = paramaiw;
    b = paramajc;
    c = paramalp;
  }
  
  void a(akl paramakl, aja paramaja)
  {
    try
    {
      paramakl.a().a(a, new amw(b, c, paramaja));
      return;
    }
    finally
    {
      c.a();
    }
  }
  
  boolean a()
  {
    return c != null;
  }
  
  void b()
  {
    a = null;
    b = null;
    c = null;
  }
}

/* Location:
 * Qualified Name:     akk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */