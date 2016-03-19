import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

final class car
  extends ArrayAdapter<String>
{
  public car(caq paramcaq, Context paramContext, String[] paramArrayOfString)
  {
    super(paramContext, aal.gI, paramArrayOfString);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView == null) || (!(paramView instanceof TextView))) {}
    for (paramView = (TextView)LayoutInflater.from(getContext()).inflate(aal.gI, paramViewGroup, false);; paramView = (TextView)paramView)
    {
      paramViewGroup = (String)getItem(paramInt);
      paramView.setText(paramViewGroup);
      paramView.setOnClickListener(new cas(this, paramViewGroup));
      return paramView;
    }
  }
}

/* Location:
 * Qualified Name:     car
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */