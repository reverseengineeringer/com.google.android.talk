import android.database.DataSetObserver;

final class oi
  extends DataSetObserver
{
  oi(og paramog) {}
  
  public void onChanged()
  {
    a.a = true;
    a.notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    a.a = false;
    a.notifyDataSetInvalidated();
  }
}

/* Location:
 * Qualified Name:     oi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */