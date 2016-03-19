import android.view.View;
import com.google.android.apps.hangouts.conversation.v2.stickerpicker.impl.SlidingTabLayout;

public final class btw
  implements lt
{
  private int b;
  
  public btw(SlidingTabLayout paramSlidingTabLayout) {}
  
  public void a(int paramInt)
  {
    if (b == 0)
    {
      a.c.a(paramInt, 0.0F);
      a.b(paramInt, 0);
    }
    int i = 0;
    if (i < a.c.getChildCount())
    {
      View localView = a.c.getChildAt(i);
      if (paramInt == i) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        i += 1;
        break;
      }
    }
    if (a.b != null) {
      a.b.a(paramInt);
    }
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    int i = a.c.getChildCount();
    if ((i == 0) || (paramInt1 < 0) || (paramInt1 >= i)) {
      return;
    }
    a.c.a(paramInt1, paramFloat);
    View localView = a.c.getChildAt(paramInt1);
    if (localView != null) {}
    for (i = (int)(localView.getWidth() * paramFloat);; i = 0)
    {
      a.b(paramInt1, i);
      if (a.b == null) {
        break;
      }
      a.b.a(paramInt1, paramFloat, paramInt2);
      return;
    }
  }
  
  public void b(int paramInt)
  {
    b = paramInt;
    if (a.b != null) {
      a.b.b(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     btw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */