import android.content.Context;

final class hbz
  implements haw
{
  private haw b;
  private Context c;
  
  public hbz(hby paramhby, Context paramContext)
  {
    c = paramContext;
  }
  
  private void b()
  {
    if (b == null)
    {
      hba localhba = (hba)ilh.b(c, hba.class);
      if (localhba != null) {
        b = localhba.a();
      }
    }
  }
  
  public hax a(int paramInt)
  {
    b();
    if (b == null) {
      return null;
    }
    return b.a(paramInt);
  }
  
  public void a()
  {
    b();
    if (b != null) {
      b.a();
    }
  }
  
  public void a(kls paramkls)
  {
    b();
    if (b != null) {
      b.a(paramkls);
    }
  }
}

/* Location:
 * Qualified Name:     hbz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */