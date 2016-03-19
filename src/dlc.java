import android.content.ContentValues;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class dlc
  implements dmk
{
  private static final Handler d = new Handler(Looper.getMainLooper());
  public final String a;
  public dns b;
  final List<dle> c = new ArrayList();
  private int e;
  
  public dlc(String paramString)
  {
    a = paramString;
  }
  
  private void a(int paramInt)
  {
    d.post(new dld(this, paramInt));
  }
  
  int a(long paramLong)
  {
    int i;
    if (paramLong <= 0L)
    {
      i = 1;
      if ((i != 0) || (e == 0)) {
        break label26;
      }
    }
    label26:
    int j;
    do
    {
      return 0;
      i = 0;
      break;
      Iterator localIterator = c.iterator();
      for (j = 0; localIterator.hasNext(); j = nexta | j) {}
    } while ((i == 0) && (b != null) && (b.a(j, paramLong)));
    return j;
  }
  
  public int a(Cursor paramCursor)
  {
    int i = b.a(paramCursor);
    if (i != 0) {
      a(i);
    }
    return i;
  }
  
  public int a(dtk paramdtk, int paramInt)
  {
    paramInt = b.a(paramdtk, paramInt);
    if (paramInt != 0) {
      a(paramInt);
    }
    return paramInt;
  }
  
  public void a(int paramInt, ContentValues paramContentValues)
  {
    if (b != null) {
      b.a(paramInt, paramContentValues);
    }
  }
  
  void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      e = paramInt;
    }
    while (e != paramInt) {
      return;
    }
    e = 0;
  }
  
  boolean a(dli paramdli)
  {
    int i = c.size() - 1;
    while (i >= 0)
    {
      if (c.get(i)).b == paramdli) {
        c.remove(i);
      }
      i -= 1;
    }
    return !c.isEmpty();
  }
  
  boolean a(dli paramdli, int paramInt)
  {
    boolean bool = true;
    dle localdle = new dle(paramdli, paramInt);
    c.add(localdle);
    long l = System.currentTimeMillis();
    int i;
    if (b != null)
    {
      i = b.b(paramInt, l);
      if (!b.a(paramInt, l)) {
        paramInt = i;
      }
    }
    for (;;)
    {
      if (paramInt != 0) {
        paramdli.a(b);
      }
      if ((bool) && (e != 0)) {
        e = 0;
      }
      return bool;
      bool = false;
      paramInt = i;
      continue;
      paramInt = 0;
    }
  }
  
  public boolean a(dnv paramdnv, Object paramObject, long paramLong)
  {
    boolean bool = b.a(paramdnv, paramObject, paramLong);
    if (bool) {
      a(l);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     dlc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */