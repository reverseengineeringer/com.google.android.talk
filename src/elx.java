import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

final class elx
  extends ArrayAdapter<CharSequence>
{
  private CharSequence[] b = null;
  
  public elx(elw paramelw, Context paramContext, int paramInt, CharSequence[] paramArrayOfCharSequence1, CharSequence[] paramArrayOfCharSequence2)
  {
    super(paramContext, paramInt, paramArrayOfCharSequence1);
    b = paramArrayOfCharSequence2;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = LayoutInflater.from(getContext()).inflate(aal.gQ, paramViewGroup, false);
    ((TextView)paramView.findViewById(aen.cb)).setText(a.f()[paramInt]);
    ((TextView)paramView.findViewById(aen.ca)).setText(b[paramInt]);
    return paramView;
  }
}

/* Location:
 * Qualified Name:     elx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */