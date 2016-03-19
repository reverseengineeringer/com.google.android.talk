import android.support.v7.internal.view.menu.ListMenuItemView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

final class ty
  extends BaseAdapter
{
  tl a;
  private int c = -1;
  
  public ty(tx paramtx, tl paramtl)
  {
    a = paramtl;
    a();
  }
  
  private void a()
  {
    tp localtp = b.c.t();
    if (localtp != null)
    {
      ArrayList localArrayList = b.c.n();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        if ((tp)localArrayList.get(i) == localtp)
        {
          c = i;
          return;
        }
        i += 1;
      }
    }
    c = -1;
  }
  
  public tp a(int paramInt)
  {
    if (b.d) {}
    for (ArrayList localArrayList = a.n();; localArrayList = a.k())
    {
      int i = paramInt;
      if (c >= 0)
      {
        i = paramInt;
        if (paramInt >= c) {
          i = paramInt + 1;
        }
      }
      return (tp)localArrayList.get(i);
    }
  }
  
  public int getCount()
  {
    if (b.d) {}
    for (ArrayList localArrayList = a.n(); c < 0; localArrayList = a.k()) {
      return localArrayList.size();
    }
    return localArrayList.size() - 1;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = b.b.inflate(tx.a, paramViewGroup, false);
    }
    for (;;)
    {
      paramViewGroup = (uc)paramView;
      if (b.e) {
        ((ListMenuItemView)paramView).b();
      }
      paramViewGroup.a(a(paramInt));
      return paramView;
    }
  }
  
  public void notifyDataSetChanged()
  {
    a();
    super.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     ty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */