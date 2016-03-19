import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;

public abstract class hpi
  extends ArrayAdapter<hpk>
{
  public hpi(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }
  
  public abstract Object a(int paramInt, View paramView);
  
  public abstract void a(int paramInt, Object paramObject);
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    hpk localhpk = (hpk)getItem(paramInt);
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(getContext()).inflate(localhpk.b(), paramViewGroup, false);
      localView.setTag(a(paramInt, localView));
    }
    a(paramInt, localView.getTag());
    return localView;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return ((hpk)getItem(paramInt)).a();
  }
}

/* Location:
 * Qualified Name:     hpi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */