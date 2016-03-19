import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.apps.hangouts.realtimechat.wakelock.impl.DebugWakelocksActivity;
import java.util.List;

public final class eek
  extends BaseAdapter
{
  eek(DebugWakelocksActivity paramDebugWakelocksActivity, List paramList1, List paramList2) {}
  
  public int getCount()
  {
    return a.size();
  }
  
  public Object getItem(int paramInt)
  {
    return knr.a(a.get(paramInt), b.get(paramInt));
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = c.getLayoutInflater().inflate(aen.jT, paramViewGroup, false);
    }
    paramView = (TextView)localView.findViewById(aal.pW);
    paramViewGroup = (TextView)localView.findViewById(aal.pX);
    paramView.setText((CharSequence)a.get(paramInt));
    paramViewGroup.setText((CharSequence)b.get(paramInt));
    return localView;
  }
}

/* Location:
 * Qualified Name:     eek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */