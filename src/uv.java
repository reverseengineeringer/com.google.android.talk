import android.database.DataSetObserver;
import android.support.v7.internal.widget.ActivityChooserView;

public final class uv
  extends DataSetObserver
{
  public uv(ActivityChooserView paramActivityChooserView) {}
  
  public void onChanged()
  {
    super.onChanged();
    a.a.notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    super.onInvalidated();
    a.a.notifyDataSetInvalidated();
  }
}

/* Location:
 * Qualified Name:     uv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */