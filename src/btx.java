import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.conversation.v2.stickerpicker.impl.SlidingTabLayout;

public final class btx
  implements View.OnClickListener
{
  public btx(SlidingTabLayout paramSlidingTabLayout) {}
  
  public void onClick(View paramView)
  {
    int i = 0;
    for (;;)
    {
      if (i < a.c.getChildCount())
      {
        if (paramView == a.c.getChildAt(i)) {
          a.a.b(i);
        }
      }
      else {
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     btx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */