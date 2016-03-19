import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

public final class ccv
  extends BaseAdapter
{
  private final List<ccw> a;
  private final View.OnClickListener b;
  private final Context c;
  
  public ccv(Context paramContext, List<ccw> paramList, View.OnClickListener paramOnClickListener)
  {
    c = paramContext;
    a = paramList;
    b = paramOnClickListener;
  }
  
  public int getCount()
  {
    return a.size();
  }
  
  public Object getItem(int paramInt)
  {
    return a;
  }
  
  public long getItemId(int paramInt)
  {
    return -paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ccw localccw = (ccw)a.get(paramInt);
    TextView localTextView;
    SwitchCompat localSwitchCompat;
    if ((paramView != null) && (paramView.getId() == aen.bo))
    {
      g = paramView;
      paramViewGroup = (TextView)paramView.findViewById(aen.gM);
      localTextView = (TextView)paramView.findViewById(aen.gy);
      localSwitchCompat = (SwitchCompat)paramView.findViewById(aen.gz);
      paramViewGroup.setText(a);
      if (!TextUtils.isEmpty(b)) {
        break label179;
      }
      localTextView.setText("");
      localTextView.setVisibility(8);
      label104:
      if (!c) {
        break label198;
      }
      localSwitchCompat.setVisibility(0);
      localSwitchCompat.setChecked(d);
    }
    for (;;)
    {
      localccw.a();
      paramView.setTag(Integer.valueOf(f));
      paramView.setOnClickListener(b);
      return paramView;
      paramView = LayoutInflater.from(c).inflate(aal.fn, paramViewGroup, false);
      ezc.a(paramView, true);
      break;
      label179:
      localTextView.setText(b);
      localTextView.setVisibility(0);
      break label104;
      label198:
      localSwitchCompat.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     ccv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */