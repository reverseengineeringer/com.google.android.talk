import android.content.ContentValues;
import android.database.Cursor;
import java.util.Collection;
import java.util.concurrent.TimeUnit;

public enum dnv
{
  public static final dnv[] h = values();
  public final long i;
  public final long j;
  public final int k;
  public final int l;
  public final String m;
  public final String n;
  private final dtm o;
  
  private dnv(int paramInt, long paramLong1, long paramLong2, dtm paramdtm, String paramString1, String paramString2)
  {
    k = paramInt;
    i = TimeUnit.MINUTES.toMillis(paramLong1);
    j = TimeUnit.MINUTES.toMillis(paramLong2);
    o = paramdtm;
    m = paramString1;
    n = paramString2;
    ??? = ordinal();
    hbs.a("Ordinals should always be >= 0.  If the ordinal has exceeded 31, then the type of fieldMask must be bumped from an int => long.", ???, 0, 31);
    l = (1 << ???);
  }
  
  public static void a(int paramInt, Collection<Integer> paramCollection)
  {
    dnv[] arrayOfdnv = h;
    int i2 = arrayOfdnv.length;
    int i1 = 0;
    while (i1 < i2)
    {
      dnv localdnv = arrayOfdnv[i1];
      if (localdnv.a(paramInt)) {
        paramCollection.add(Integer.valueOf(k));
      }
      i1 += 1;
    }
  }
  
  private static boolean a(long paramLong1, long paramLong2, long paramLong3)
  {
    return ((paramLong1 >= paramLong2 - paramLong3) && (paramLong1 <= paramLong2)) || (paramLong3 == 0L);
  }
  
  public long a(Cursor paramCursor)
  {
    return paramCursor.getLong(ordinal() * 2 + 1);
  }
  
  public void a(Object paramObject, Long paramLong, ContentValues paramContentValues)
  {
    o.a(m, paramObject, paramContentValues);
    paramContentValues.put(n, paramLong);
  }
  
  public boolean a(int paramInt)
  {
    return (l & paramInt) != 0;
  }
  
  public boolean a(long paramLong1, long paramLong2)
  {
    return a(paramLong1, paramLong2, j);
  }
  
  public Object b(Cursor paramCursor)
  {
    int i1 = ordinal() * 2;
    if (paramCursor.isNull(i1)) {
      return null;
    }
    return o.a(paramCursor, i1);
  }
  
  public boolean b(long paramLong1, long paramLong2)
  {
    return a(paramLong1, paramLong2, i);
  }
}

/* Location:
 * Qualified Name:     dnv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */