import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

final class ra
  implements AdapterView.OnItemClickListener
{
  ra(qw paramqw, ListView paramListView, qr paramqr) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (c.C != null) {
      c.C[paramInt] = a.isItemChecked(paramInt);
    }
    c.G.onClick(b.a, paramInt, a.isItemChecked(paramInt));
  }
}

/* Location:
 * Qualified Name:     ra
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */