import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

final class tk
  extends BaseAdapter
{
  private int b = -1;
  
  public tk(tj paramtj)
  {
    a();
  }
  
  private void a()
  {
    tp localtp = a.c.t();
    if (localtp != null)
    {
      ArrayList localArrayList = a.c.n();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        if ((tp)localArrayList.get(i) == localtp)
        {
          b = i;
          return;
        }
        i += 1;
      }
    }
    b = -1;
  }
  
  public tp a(int paramInt)
  {
    ArrayList localArrayList = a.c.n();
    int i = a.e + paramInt;
    paramInt = i;
    if (b >= 0)
    {
      paramInt = i;
      if (i >= b) {
        paramInt = i + 1;
      }
    }
    return (tp)localArrayList.get(paramInt);
  }
  
  public int getCount()
  {
    int i = a.c.n().size() - a.e;
    if (b < 0) {
      return i;
    }
    return i - 1;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = a.b.inflate(a.g, paramViewGroup, false);
    }
    for (;;)
    {
      ((uc)paramView).a(a(paramInt));
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
 * Qualified Name:     tk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */