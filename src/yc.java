import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.List;

public final class yc
{
  public yc(RecyclerView paramRecyclerView) {}
  
  public static void b(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    if (paramView != null)
    {
      ks.c(a, n);
      n = 0;
    }
  }
  
  public int a()
  {
    return a.getChildCount();
  }
  
  public int a(View paramView)
  {
    return a.indexOfChild(paramView);
  }
  
  public void a(int paramInt)
  {
    View localView = a.getChildAt(paramInt);
    if (localView != null) {
      a.e(localView);
    }
    a.removeViewAt(paramInt);
  }
  
  public void a(View paramView, int paramInt)
  {
    a.addView(paramView, paramInt);
    RecyclerView localRecyclerView = a;
    RecyclerView.b(paramView);
    if (q != null)
    {
      paramInt = q.size() - 1;
      while (paramInt >= 0)
      {
        q.get(paramInt);
        paramInt -= 1;
      }
    }
  }
  
  public void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    aao localaao = RecyclerView.b(paramView);
    if (localaao != null)
    {
      if ((!localaao.n()) && (!localaao.c())) {
        throw new IllegalArgumentException("Called attach on a child which is not detached: " + localaao);
      }
      localaao.i();
    }
    RecyclerView.a(a, paramView, paramInt, paramLayoutParams);
  }
  
  public View b(int paramInt)
  {
    return a.getChildAt(paramInt);
  }
  
  public void b()
  {
    int j = a();
    int i = 0;
    while (i < j)
    {
      a.e(b(i));
      i += 1;
    }
    a.removeAllViews();
  }
  
  public void c(int paramInt)
  {
    Object localObject = b(paramInt);
    if (localObject != null)
    {
      localObject = RecyclerView.b((View)localObject);
      if (localObject != null)
      {
        if ((((aao)localObject).n()) && (!((aao)localObject).c())) {
          throw new IllegalArgumentException("called detach on an already detached child " + localObject);
        }
        ((aao)localObject).b(256);
      }
    }
    RecyclerView.a(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     yc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */