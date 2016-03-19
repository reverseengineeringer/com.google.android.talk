import android.support.v7.internal.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;

final class rv
  implements wc
{
  private wc b;
  
  public rv(ri paramri, wc paramwc)
  {
    b = paramwc;
  }
  
  public void a(wb paramwb)
  {
    b.a(paramwb);
    if (a.t != null) {
      a.b.getDecorView().removeCallbacks(a.u);
    }
    if (a.s != null)
    {
      a.o();
      paramwb = a;
      ActionBarContextView localActionBarContextView = a.s;
      v = ks.a.k(localActionBarContextView).a(0.0F);
      a.v.a(new rw(this));
    }
    if (a.e != null) {
      a.e.b(a.r);
    }
    a.r = null;
  }
  
  public boolean a(wb paramwb, Menu paramMenu)
  {
    return b.a(paramwb, paramMenu);
  }
  
  public boolean a(wb paramwb, MenuItem paramMenuItem)
  {
    return b.a(paramwb, paramMenuItem);
  }
  
  public boolean b(wb paramwb, Menu paramMenu)
  {
    return b.b(paramwb, paramMenu);
  }
}

/* Location:
 * Qualified Name:     rv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */