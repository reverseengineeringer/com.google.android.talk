import android.support.v7.internal.widget.ActionBarContextView;
import android.view.View;

final class rt
  extends mo
{
  rt(ri paramri) {}
  
  public void a(View paramView)
  {
    a.s.setVisibility(0);
    a.s.sendAccessibilityEvent(32);
    if (a.s.getParent() != null)
    {
      paramView = (View)a.s.getParent();
      ks.a.r(paramView);
    }
  }
  
  public void b(View paramView)
  {
    ks.c(a.s, 1.0F);
    a.v.a(null);
    a.v = null;
  }
}

/* Location:
 * Qualified Name:     rt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */