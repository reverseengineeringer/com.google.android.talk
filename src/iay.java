import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

final class iay
  extends BaseAdapter
{
  private final Context a;
  private final int[] b;
  private final boolean c;
  
  iay(Context paramContext, int[] paramArrayOfInt, boolean paramBoolean)
  {
    a = paramContext;
    b = paramArrayOfInt;
    c = paramBoolean;
  }
  
  public int getCount()
  {
    int j = b.length;
    if (c) {}
    for (int i = 1;; i = 0) {
      return i + j;
    }
  }
  
  public Object getItem(int paramInt)
  {
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((c) && (paramInt == b.length)) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      paramViewGroup = null;
    }
    do
    {
      return paramViewGroup;
      paramViewGroup = (ico)paramView;
      paramView = paramViewGroup;
      if (paramViewGroup == null) {
        paramView = new ico(a);
      }
      paramView.a(b[paramInt]);
      return paramView;
      paramViewGroup = paramView;
    } while (paramView != null);
    return LayoutInflater.from(a).inflate(aal.uq, null);
  }
  
  public int getViewTypeCount()
  {
    if (c) {
      return 2;
    }
    return 1;
  }
}

/* Location:
 * Qualified Name:     iay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */