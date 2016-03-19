import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public final class ls
  extends ii
{
  public ls(ViewPager paramViewPager) {}
  
  private boolean b()
  {
    return (b.b != null) && (b.b.b() > 1);
  }
  
  public void a(View paramView, my parammy)
  {
    super.a(paramView, parammy);
    parammy.b(ViewPager.class.getName());
    parammy.i(b());
    if (b.canScrollHorizontally(1)) {
      parammy.a(4096);
    }
    if (b.canScrollHorizontally(-1)) {
      parammy.a(8192);
    }
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 4096: 
      if (b.canScrollHorizontally(1))
      {
        b.b(b.c + 1);
        return true;
      }
      return false;
    }
    if (b.canScrollHorizontally(-1))
    {
      b.b(b.c - 1);
      return true;
    }
    return false;
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    paramView = new nq(nq.a.a());
    paramView.a(b());
    if ((paramAccessibilityEvent.getEventType() == 4096) && (b.b != null))
    {
      paramView.a(b.b.b());
      paramView.b(b.c);
      paramView.c(b.c);
    }
  }
}

/* Location:
 * Qualified Name:     ls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */