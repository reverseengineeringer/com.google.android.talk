import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

final class cdp
  extends ArrayAdapter<String>
{
  public cdp(Context paramContext, List<String> paramList)
  {
    super(paramList, aal.gH, localList);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView == null) || (!(paramView instanceof TextView))) {}
    for (paramView = (TextView)LayoutInflater.from(getContext()).inflate(aal.gH, paramViewGroup, false);; paramView = (TextView)paramView)
    {
      paramView.setText((String)getItem(paramInt));
      paramView.setOnClickListener(new cdq(this, paramInt));
      return paramView;
    }
  }
}

/* Location:
 * Qualified Name:     cdp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */