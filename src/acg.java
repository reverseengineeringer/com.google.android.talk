import android.content.Context;
import android.database.Cursor;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import java.util.HashMap;

public abstract class acg
  extends ach
{
  public Context a;
  public Cursor b;
  public int c;
  public SparseIntArray d;
  public final HashMap<Object, Integer> e = new HashMap();
  
  public acg(Context paramContext, bg parambg, Cursor paramCursor)
  {
    super(parambg);
    if (paramCursor != null)
    {
      i = 1;
      b = paramCursor;
      a = paramContext;
      if (i == 0) {
        break label64;
      }
    }
    label64:
    for (int i = b.getColumnIndex("uri");; i = -1)
    {
      c = i;
      return;
      i = 0;
      break;
    }
  }
  
  private boolean b(int paramInt)
  {
    if ((b != null) && (!b.isClosed())) {
      return b.moveToPosition(paramInt);
    }
    return false;
  }
  
  private void f()
  {
    if ((b == null) || (b.isClosed()))
    {
      d = null;
      return;
    }
    SparseIntArray localSparseIntArray = new SparseIntArray(b.getCount());
    b.moveToPosition(-1);
    while (b.moveToNext()) {
      localSparseIntArray.append(b.getString(c).hashCode(), b.getPosition());
    }
    d = localSparseIntArray;
  }
  
  public Cursor a(Cursor paramCursor)
  {
    int i;
    if (Log.isLoggable("BaseCursorPagerAdapter", 2))
    {
      if (b != null) {
        break label62;
      }
      i = -1;
      if (paramCursor != null) {
        break label75;
      }
    }
    label62:
    label75:
    for (int j = -1;; j = paramCursor.getCount())
    {
      new StringBuilder(43).append("swapCursor old=").append(i).append("; new=").append(j);
      if (paramCursor != b) {
        break label85;
      }
      return null;
      i = b.getCount();
      break;
    }
    label85:
    Cursor localCursor = b;
    b = paramCursor;
    if (paramCursor != null) {}
    for (c = paramCursor.getColumnIndex("uri");; c = -1)
    {
      f();
      d();
      return localCursor;
    }
  }
  
  public av a(int paramInt)
  {
    if ((b != null) && (b(paramInt))) {
      return a(b, paramInt);
    }
    return null;
  }
  
  public abstract av a(Cursor paramCursor, int paramInt);
  
  public Object a(View paramView, int paramInt)
  {
    if (b == null) {
      throw new IllegalStateException("this should only be called when the cursor is valid");
    }
    if (b(paramInt)) {}
    for (Integer localInteger = Integer.valueOf(b.getString(c).hashCode());; localInteger = null)
    {
      paramView = super.a(paramView, paramInt);
      if (paramView != null) {
        e.put(paramView, localInteger);
      }
      return paramView;
    }
  }
  
  protected String a(int paramInt1, int paramInt2)
  {
    if (b(paramInt2))
    {
      paramInt2 = b.getString(c).hashCode();
      return 37 + "android:pager:" + paramInt1 + ":" + paramInt2;
    }
    return super.a(paramInt1, paramInt2);
  }
  
  public void a(View paramView, int paramInt, Object paramObject)
  {
    e.remove(paramObject);
    super.a(paramView, paramInt, paramObject);
  }
  
  public int b()
  {
    if (b != null) {
      return b.getCount();
    }
    return 0;
  }
  
  public int c(Object paramObject)
  {
    paramObject = (Integer)e.get(paramObject);
    if ((paramObject == null) || (d == null)) {
      return -2;
    }
    return d.get(((Integer)paramObject).intValue(), -2);
  }
  
  public Cursor e()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     acg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */