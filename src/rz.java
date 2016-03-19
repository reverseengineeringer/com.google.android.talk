import android.view.Window;
import android.view.Window.Callback;

final class rz
  implements ua
{
  rz(ri paramri) {}
  
  public void a(tl paramtl, boolean paramBoolean)
  {
    tl localtl = paramtl.r();
    if (localtl != paramtl) {}
    for (int i = 1;; i = 0)
    {
      ri localri = a;
      if (i != 0) {
        paramtl = localtl;
      }
      paramtl = localri.a(paramtl);
      if (paramtl != null)
      {
        if (i == 0) {
          break;
        }
        a.a(a, paramtl, localtl);
        a.a(paramtl, true);
      }
      return;
    }
    a.a(paramtl, paramBoolean);
  }
  
  public boolean a(tl paramtl)
  {
    if ((paramtl == null) && (a.h))
    {
      Window.Callback localCallback = a.b.getCallback();
      if ((localCallback != null) && (!a.n)) {
        localCallback.onMenuOpened(108, paramtl);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     rz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */