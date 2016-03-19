import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.ListView;

final class qy
  extends CursorAdapter
{
  private final int d;
  private final int e;
  
  qy(qw paramqw, Context paramContext, Cursor paramCursor, ListView paramListView, qr paramqr)
  {
    super(paramContext, paramCursor, false);
    paramqw = getCursor();
    d = paramqw.getColumnIndexOrThrow(c.I);
    e = paramqw.getColumnIndexOrThrow(c.J);
  }
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    ((CheckedTextView)paramView.findViewById(16908308)).setText(paramCursor.getString(d));
    paramView = a;
    int i = paramCursor.getPosition();
    if (paramCursor.getInt(e) == 1) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.setItemChecked(i, bool);
      return;
    }
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return c.b.inflate(b.m, paramViewGroup, false);
  }
}

/* Location:
 * Qualified Name:     qy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */