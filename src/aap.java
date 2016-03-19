import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public final class aap
  extends ii
{
  final RecyclerView b;
  final ii c = new aaq(this);
  
  public aap(RecyclerView paramRecyclerView)
  {
    b = paramRecyclerView;
  }
  
  public void a(View paramView, my parammy)
  {
    super.a(paramView, parammy);
    parammy.b(RecyclerView.class.getName());
    if ((!b.y()) && (b.d() != null)) {
      b.d().a(parammy);
    }
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    if ((!b.y()) && (b.d() != null)) {
      return b.d().i(paramInt);
    }
    return false;
  }
  
  ii b()
  {
    return c;
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if (((paramView instanceof RecyclerView)) && (!b.y()))
    {
      paramView = (RecyclerView)paramView;
      if (paramView.d() != null) {
        paramView.d().a(paramAccessibilityEvent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     aap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */