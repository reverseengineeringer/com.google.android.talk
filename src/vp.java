import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;

final class vp
  extends BaseAdapter
{
  vp(vn paramvn) {}
  
  public int getCount()
  {
    return a.b.getChildCount();
  }
  
  public Object getItem(int paramInt)
  {
    return ((vq)a.b.getChildAt(paramInt)).a();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = a;
      paramViewGroup = (qh)getItem(paramInt);
      paramViewGroup = new vq(paramView, paramView.getContext(), paramViewGroup, true);
      paramViewGroup.setBackgroundDrawable(null);
      paramViewGroup.setLayoutParams(new AbsListView.LayoutParams(-1, e));
      return paramViewGroup;
    }
    ((vq)paramView).a((qh)getItem(paramInt));
    return paramView;
  }
}

/* Location:
 * Qualified Name:     vp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */