import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import java.util.List;

public final class ahn<T>
  implements AbsListView.OnScrollListener
{
  private final int a;
  private final ahr b;
  private final ahw c;
  private final aho<T> d;
  private final ahp<T> e;
  private int f;
  private int g;
  private int h;
  private int i;
  private boolean j = true;
  
  public ahn(ahw paramahw, aho<T> paramaho, ahp<T> paramahp, int paramInt)
  {
    c = paramahw;
    d = paramaho;
    e = paramahp;
    a = 5;
    b = new ahr(6);
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    int k;
    if (j != paramBoolean)
    {
      j = paramBoolean;
      k = 0;
      while (k < a)
      {
        c.a(b.a(0, 0));
        k += 1;
      }
    }
    int m;
    int n;
    if (paramBoolean)
    {
      k = a;
      k = paramInt + k;
      if (paramInt >= k) {
        break label149;
      }
      m = Math.max(f, paramInt);
      n = k;
    }
    for (;;)
    {
      n = Math.min(i, n);
      m = Math.min(i, Math.max(0, m));
      if (paramInt >= k) {
        break label165;
      }
      paramInt = m;
      while (paramInt < n)
      {
        a(d.c(paramInt), paramInt, true);
        paramInt += 1;
      }
      k = -a;
      break;
      label149:
      n = Math.min(g, paramInt);
      m = k;
    }
    label165:
    paramInt = n - 1;
    while (paramInt >= m)
    {
      a(d.c(paramInt), paramInt, false);
      paramInt -= 1;
    }
    g = m;
    f = n;
  }
  
  private void a(T paramT, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = e.b();
    if (arrayOfInt != null) {
      d.a(paramT).a(b.a(arrayOfInt[0], arrayOfInt[1]));
    }
  }
  
  private void a(List<T> paramList, int paramInt, boolean paramBoolean)
  {
    int m = paramList.size();
    if (paramBoolean)
    {
      k = 0;
      while (k < m)
      {
        a(paramList.get(k), paramInt, k);
        k += 1;
      }
    }
    int k = m - 1;
    while (k >= 0)
    {
      a(paramList.get(k), paramInt, k);
      k -= 1;
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    i = paramInt3;
    if (paramInt1 > h) {
      a(paramInt1 + paramInt2, true);
    }
    for (;;)
    {
      h = paramInt1;
      return;
      if (paramInt1 < h) {
        a(paramInt1, false);
      }
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     ahn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */