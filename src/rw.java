import android.support.v7.internal.widget.ActionBarContextView;
import android.view.View;
import android.widget.PopupWindow;

final class rw
  extends mo
{
  rw(rv paramrv) {}
  
  public void b(View paramView)
  {
    a.a.s.setVisibility(8);
    if (a.a.t != null) {
      a.a.t.dismiss();
    }
    for (;;)
    {
      a.a.s.removeAllViews();
      a.a.v.a(null);
      a.a.v = null;
      return;
      if ((a.a.s.getParent() instanceof View))
      {
        paramView = (View)a.a.s.getParent();
        ks.a.r(paramView);
      }
    }
  }
}

/* Location:
 * Qualified Name:     rw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */