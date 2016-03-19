import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

final class ts
  extends FrameLayout
  implements wd
{
  final CollapsibleActionView a;
  
  ts(View paramView)
  {
    super(paramView.getContext());
    a = ((CollapsibleActionView)paramView);
    addView(paramView);
  }
  
  public void a()
  {
    a.onActionViewExpanded();
  }
  
  public void b()
  {
    a.onActionViewCollapsed();
  }
  
  View c()
  {
    return (View)a;
  }
}

/* Location:
 * Qualified Name:     ts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */