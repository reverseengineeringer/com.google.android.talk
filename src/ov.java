import android.support.v4.widget.DrawerLayout;
import android.view.View;

final class ov
  implements Runnable
{
  ov(ou paramou) {}
  
  public void run()
  {
    int j = 0;
    ou localou = a;
    int k = b.b();
    int i;
    View localView;
    if (a == 3)
    {
      i = 1;
      if (i == 0) {
        break label163;
      }
      localView = c.c(3);
      if (localView != null) {
        j = -localView.getWidth();
      }
      j += k;
    }
    for (;;)
    {
      if ((localView != null) && (((i != 0) && (localView.getLeft() < j)) || ((i == 0) && (localView.getLeft() > j) && (c.a(localView) == 0))))
      {
        or localor = (or)localView.getLayoutParams();
        b.a(localView, j, localView.getTop());
        c = true;
        c.invalidate();
        localou.b();
        c.h();
      }
      return;
      i = 0;
      break;
      label163:
      localView = c.c(5);
      j = c.getWidth();
      j -= k;
    }
  }
}

/* Location:
 * Qualified Name:     ov
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */