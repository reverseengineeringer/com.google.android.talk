import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;

final class bti
  extends aaa
{
  private final int a;
  
  public bti(int paramInt)
  {
    a = paramInt;
  }
  
  public void a(Rect paramRect, View paramView, RecyclerView paramRecyclerView)
  {
    left = a;
    if (paramRecyclerView.c(paramView) == 0) {
      left = 0;
    }
  }
}

/* Location:
 * Qualified Name:     bti
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */