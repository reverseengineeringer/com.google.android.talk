import android.support.v7.widget.RecyclerView;
import android.widget.AbsListView.OnScrollListener;

public final class aip
  extends aae
{
  private final AbsListView.OnScrollListener a;
  private int b = -1;
  private int c = -1;
  private int d = -1;
  
  public aip(AbsListView.OnScrollListener paramOnScrollListener)
  {
    a = paramOnScrollListener;
  }
  
  public void a(RecyclerView paramRecyclerView, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      paramInt = Integer.MIN_VALUE;
    }
    for (;;)
    {
      a.onScrollStateChanged(null, paramInt);
      return;
      paramInt = 1;
      continue;
      paramInt = 0;
      continue;
      paramInt = 2;
    }
  }
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    yu localyu = (yu)paramRecyclerView.d();
    paramInt1 = localyu.p();
    paramInt2 = Math.abs(paramInt1 - localyu.q());
    int i = paramRecyclerView.c().a();
    if ((paramInt1 != b) || (paramInt2 != c) || (i != d))
    {
      a.onScroll(null, paramInt1, paramInt2, i);
      b = paramInt1;
      c = paramInt2;
      d = i;
    }
  }
}

/* Location:
 * Qualified Name:     aip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */