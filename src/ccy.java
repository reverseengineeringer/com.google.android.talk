import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;

final class ccy
  extends bzp
{
  public ccy(bzn parambzn, BaseAdapter paramBaseAdapter)
  {
    super(parambzn, true, paramBaseAdapter);
  }
  
  public View a(View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView != null) && (paramView.getId() == aen.bk)) {}
    for (;;)
    {
      ((TextView)paramView.findViewById(aen.dj)).setText(StressMode.hm);
      return paramView;
      paramView = LayoutInflater.from(e.a()).inflate(aal.fo, paramViewGroup, false);
    }
  }
  
  public void e()
  {
    if (d() != null)
    {
      og localog = (og)d();
      if (localog.a() != null) {
        localog.a().close();
      }
    }
  }
}

/* Location:
 * Qualified Name:     ccy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */