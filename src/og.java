import android.content.Context;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class og
  extends BaseAdapter
  implements Filterable, ok
{
  public boolean a;
  public boolean b;
  public Cursor c;
  public Context d;
  public int e;
  public oh f;
  public DataSetObserver g;
  public oj h;
  public FilterQueryProvider i;
  
  @Deprecated
  public og(Context paramContext, Cursor paramCursor)
  {
    a(paramContext, null, 1);
  }
  
  public og(Context paramContext, Cursor paramCursor, byte paramByte)
  {
    a(paramContext, paramCursor, 0);
  }
  
  public Cursor a()
  {
    return c;
  }
  
  public Cursor a(CharSequence paramCharSequence)
  {
    if (i != null) {
      return i.runQuery(paramCharSequence);
    }
    return c;
  }
  
  public abstract View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup);
  
  void a(Context paramContext, Cursor paramCursor, int paramInt)
  {
    boolean bool = true;
    label23:
    int j;
    if ((paramInt & 0x1) == 1)
    {
      paramInt |= 0x2;
      b = true;
      if (paramCursor == null) {
        break label139;
      }
      c = paramCursor;
      a = bool;
      d = paramContext;
      if (!bool) {
        break label145;
      }
      j = paramCursor.getColumnIndexOrThrow("_id");
      label54:
      e = j;
      if ((paramInt & 0x2) != 2) {
        break label151;
      }
      f = new oh(this);
    }
    for (g = new oi(this);; g = null)
    {
      if (bool)
      {
        if (f != null) {
          paramCursor.registerContentObserver(f);
        }
        if (g != null) {
          paramCursor.registerDataSetObserver(g);
        }
      }
      return;
      b = false;
      break;
      label139:
      bool = false;
      break label23;
      label145:
      j = -1;
      break label54;
      label151:
      f = null;
    }
  }
  
  public void a(Cursor paramCursor)
  {
    paramCursor = b(paramCursor);
    if (paramCursor != null) {
      paramCursor.close();
    }
  }
  
  public abstract void a(View paramView, Cursor paramCursor);
  
  public Cursor b(Cursor paramCursor)
  {
    if (paramCursor == c) {
      return null;
    }
    Cursor localCursor = c;
    if (localCursor != null)
    {
      if (f != null) {
        localCursor.unregisterContentObserver(f);
      }
      if (g != null) {
        localCursor.unregisterDataSetObserver(g);
      }
    }
    c = paramCursor;
    if (paramCursor != null)
    {
      if (f != null) {
        paramCursor.registerContentObserver(f);
      }
      if (g != null) {
        paramCursor.registerDataSetObserver(g);
      }
      e = paramCursor.getColumnIndexOrThrow("_id");
      a = true;
      notifyDataSetChanged();
      return localCursor;
    }
    e = -1;
    a = false;
    notifyDataSetInvalidated();
    return localCursor;
  }
  
  public View b(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return a(paramContext, paramCursor, paramViewGroup);
  }
  
  protected void b()
  {
    if ((b) && (c != null) && (!c.isClosed())) {
      a = c.requery();
    }
  }
  
  public CharSequence c(Cursor paramCursor)
  {
    if (paramCursor == null) {
      return "";
    }
    return paramCursor.toString();
  }
  
  public int getCount()
  {
    if ((a) && (c != null)) {
      return c.getCount();
    }
    return 0;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (a)
    {
      c.moveToPosition(paramInt);
      View localView = paramView;
      if (paramView == null) {
        localView = b(d, c, paramViewGroup);
      }
      a(localView, c);
      return localView;
    }
    return null;
  }
  
  public Filter getFilter()
  {
    if (h == null) {
      h = new oj(this);
    }
    return h;
  }
  
  public Object getItem(int paramInt)
  {
    if ((a) && (c != null))
    {
      c.moveToPosition(paramInt);
      return c;
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    long l2 = 0L;
    long l1 = l2;
    if (a)
    {
      l1 = l2;
      if (c != null)
      {
        l1 = l2;
        if (c.moveToPosition(paramInt)) {
          l1 = c.getLong(e);
        }
      }
    }
    return l1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!a) {
      throw new IllegalStateException("this should only be called when the cursor is valid");
    }
    if (!c.moveToPosition(paramInt)) {
      throw new IllegalStateException("couldn't move cursor to position " + paramInt);
    }
    View localView = paramView;
    if (paramView == null) {
      localView = a(d, c, paramViewGroup);
    }
    a(localView, c);
    return localView;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     og
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */