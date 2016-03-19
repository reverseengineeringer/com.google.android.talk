import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.PopupWindow;

final class zj
  implements AbsListView.OnScrollListener
{
  zj(za paramza) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 1) && (!a.o()) && (a.d.getContentView() != null))
    {
      a.h.removeCallbacks(a.g);
      a.g.run();
    }
  }
}

/* Location:
 * Qualified Name:     zj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */