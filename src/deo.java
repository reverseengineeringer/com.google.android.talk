import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.apps.hangouts.phone.DebugActivity;
import java.util.List;

public final class deo
  extends BaseAdapter
{
  public deo(DebugActivity paramDebugActivity, List paramList1, List paramList2) {}
  
  public int getCount()
  {
    return a.size();
  }
  
  public Object getItem(int paramInt)
  {
    return new dfl(c, (String)a.get(paramInt), b.get(paramInt));
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = c.getLayoutInflater().inflate(aal.gl, paramViewGroup, false);
    }
    paramView = (TextView)localView.findViewById(aen.dL);
    paramViewGroup = (TextView)localView.findViewById(aen.he);
    String str = (String)a.get(paramInt);
    paramView.setText(str);
    paramViewGroup.setText(DebugActivity.a(str, b.get(paramInt)));
    return localView;
  }
}

/* Location:
 * Qualified Name:     deo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */