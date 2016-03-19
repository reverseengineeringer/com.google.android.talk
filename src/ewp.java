import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class ewp
  implements AdapterView.OnItemClickListener
{
  ewp(ewo paramewo) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      ((ewq)((ewh)a.getActivity()).g()).f();
      return;
    }
    ((ewq)((ewh)a.getActivity()).g()).g();
  }
}

/* Location:
 * Qualified Name:     ewp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */