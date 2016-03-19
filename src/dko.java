import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

final class dko
  extends ArrayAdapter<eho>
{
  public dko(Context paramContext, List<eho> paramList)
  {
    super(paramList, aal.oN, localList);
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return getView(paramInt, paramView, paramViewGroup);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView == null) || (!(paramView instanceof TextView))) {}
    for (paramView = (TextView)LayoutInflater.from(a.context).inflate(aal.oN, paramViewGroup, false);; paramView = (TextView)paramView)
    {
      Object localObject = (eho)getItem(paramInt);
      paramView.setSingleLine(false);
      paramView.setSingleLine(true);
      paramViewGroup = String.valueOf(d);
      localObject = String.valueOf(c);
      paramView.setText(String.valueOf(paramViewGroup).length() + 6 + String.valueOf(localObject).length() + paramViewGroup + " ‪(+" + (String)localObject + ")‬");
      return paramView;
    }
  }
}

/* Location:
 * Qualified Name:     dko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */