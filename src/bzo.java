import android.database.DataSetObserver;

final class bzo
  extends DataSetObserver
{
  bzo(bzn parambzn) {}
  
  public void onChanged()
  {
    a.notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    a.notifyDataSetInvalidated();
  }
}

/* Location:
 * Qualified Name:     bzo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */