import android.support.v4.widget.NestedScrollView;
import android.view.View;

public final class pg
{
  public pg(qr paramqr, View paramView1, View paramView2) {}
  
  public void a(NestedScrollView paramNestedScrollView)
  {
    int j = 0;
    View localView1 = a;
    View localView2 = b;
    if (localView1 != null)
    {
      if (ks.b(paramNestedScrollView, -1))
      {
        i = 0;
        localView1.setVisibility(i);
      }
    }
    else if (localView2 != null) {
      if (!ks.b(paramNestedScrollView, 1)) {
        break label62;
      }
    }
    label62:
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
 * Qualified Name:     pg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */