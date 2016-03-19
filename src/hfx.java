import android.view.Surface;

final class hfx
  implements Runnable
{
  hfx(hfu paramhfu, hla paramhla, Runnable paramRunnable) {}
  
  public void run()
  {
    if (!a.equals(c.p))
    {
      hlk.a("vclib", "Video source %s not bound to this surface %s", new Object[] { c.c(), a });
      aal.a(b);
      return;
    }
    if (c.i != null)
    {
      c.i.release();
      c.i = null;
    }
    ((hff)c.e).a(null, b);
    c.p = null;
    c.i();
  }
}

/* Location:
 * Qualified Name:     hfx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */