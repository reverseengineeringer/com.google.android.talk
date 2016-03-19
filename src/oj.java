import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filter.FilterResults;

final class oj
  extends Filter
{
  ok a;
  
  oj(ok paramok)
  {
    a = paramok;
  }
  
  public CharSequence convertResultToString(Object paramObject)
  {
    return a.c((Cursor)paramObject);
  }
  
  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    paramCharSequence = a.a(paramCharSequence);
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    if (paramCharSequence != null)
    {
      count = paramCharSequence.getCount();
      values = paramCharSequence;
      return localFilterResults;
    }
    count = 0;
    values = null;
    return localFilterResults;
  }
  
  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    paramCharSequence = a.a();
    if ((values != null) && (values != paramCharSequence)) {
      a.a((Cursor)values);
    }
  }
}

/* Location:
 * Qualified Name:     oj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */