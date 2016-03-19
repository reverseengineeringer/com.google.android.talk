final class fbj
  implements bhv
{
  fbj(fbg paramfbg) {}
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    if (a.d != parambhs) {
      if (parameys != null) {
        parameys.b();
      }
    }
    do
    {
      return;
      a.d = null;
    } while (!paramBoolean1);
    if (paramexs != null)
    {
      a.b(new fcd(paramexs));
      return;
    }
    hbs.b("Expected non-null", parameys);
    hbs.b("Expected non-null", parameys.e());
    hbs.a("Expected null", a.e);
    a.e = parameys;
    a.a(a.e.e());
    a.c(0);
  }
}

/* Location:
 * Qualified Name:     fbj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */