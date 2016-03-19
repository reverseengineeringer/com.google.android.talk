import android.view.Window.Callback;

final class sj
  implements ua
{
  private boolean b;
  
  sj(sh paramsh) {}
  
  public void a(tl paramtl, boolean paramBoolean)
  {
    if (b) {
      return;
    }
    b = true;
    a.a.k();
    if (a.c != null) {
      a.c.onPanelClosed(108, paramtl);
    }
    b = false;
  }
  
  public boolean a(tl paramtl)
  {
    if (a.c != null)
    {
      a.c.onMenuOpened(108, paramtl);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     sj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */