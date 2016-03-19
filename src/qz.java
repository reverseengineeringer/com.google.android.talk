import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class qz
  implements AdapterView.OnItemClickListener
{
  qz(qw paramqw, qr paramqr) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    b.u.onClick(a.a, paramInt);
    if (!b.E) {
      a.a.dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     qz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */