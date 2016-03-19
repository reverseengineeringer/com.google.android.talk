import android.support.v4.widget.NestedScrollView;
import android.view.View;

final class qt
  implements Runnable
{
  qt(qr paramqr, View paramView1, View paramView2) {}
  
  public void run()
  {
    int j = 0;
    NestedScrollView localNestedScrollView = c.i;
    View localView1 = a;
    View localView2 = b;
    if (localView1 != null)
    {
      if (ks.b(localNestedScrollView, -1))
      {
        i = 0;
        localView1.setVisibility(i);
      }
    }
    else if (localView2 != null) {
      if (!ks.b(localNestedScrollView, 1)) {
        break label70;
      }
    }
    label70:
    for (int i = j;; i = 4)
    {
      localView2.setVisibility(i);
      return;
      i = 4;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     qt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */