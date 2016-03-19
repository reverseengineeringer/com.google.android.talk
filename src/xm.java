import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

final class xm
  implements AdapterView.OnItemClickListener
{
  xm(xl paramxl, xi paramxi) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    b.c.setSelection(paramInt);
    if (b.c.getOnItemClickListener() != null) {
      b.c.performItemClick(paramView, paramInt, b.a.getItemId(paramInt));
    }
    b.k();
  }
}

/* Location:
 * Qualified Name:     xm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */