final class hkp
  extends hku
{
  hkp(hko paramhko) {}
  
  public void c(hkx paramhkx)
  {
    if (((paramhkx.a().equals(a.h)) || ((paramhkx.g()) && ("localParticipant".equals(a.h)))) && (a.i != paramhkx.e()))
    {
      a.b(paramhkx.e());
      a.i = paramhkx.e();
    }
  }
  
  public void d(hkx paramhkx)
  {
    if ("focusedParticipant".equals(a.g))
    {
      a.h = paramhkx.a();
      a.a(paramhkx.e());
      a.i = paramhkx.e();
      if ((a.f != null) && (a.j)) {
        a.f.a(a.h);
      }
    }
  }
}

/* Location:
 * Qualified Name:     hkp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */