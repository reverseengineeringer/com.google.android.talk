import android.view.MenuItem;
import android.view.Window.Callback;

final class sk
  implements tm
{
  sk(sh paramsh) {}
  
  public void a(tl paramtl)
  {
    if (a.c != null)
    {
      if (!a.a.f()) {
        break label39;
      }
      a.c.onPanelClosed(108, paramtl);
    }
    label39:
    while (!a.c.onPreparePanel(0, null, paramtl)) {
      return;
    }
    a.c.onMenuOpened(108, paramtl);
  }
  
  public boolean a(tl paramtl, MenuItem paramMenuItem)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     sk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */