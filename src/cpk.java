import android.database.DataSetObserver;

final class cpk
  extends DataSetObserver
{
  cpk(cpj paramcpj) {}
  
  public void onChanged()
  {
    a.notifyDataSetChanged();
    a.a(a.a.a());
  }
  
  public void onInvalidated()
  {
    a.notifyDataSetInvalidated();
    a.a(a.a.a());
  }
}

/* Location:
 * Qualified Name:     cpk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */