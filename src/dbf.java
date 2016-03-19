import android.view.View;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;

final class dbf
  extends aao
{
  final TextView p;
  
  public dbf(das paramdas, View paramView)
  {
    super(paramView);
    p = ((TextView)paramView.findViewById(StressMode.tK));
  }
  
  public void c(int paramInt)
  {
    p.setText(paramInt);
  }
}

/* Location:
 * Qualified Name:     dbf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */