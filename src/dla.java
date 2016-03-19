import android.content.Context;
import android.database.Cursor;

final class dla
  extends bio
{
  dla(dky paramdky, Context paramContext, hpz paramhpz, int paramInt, String paramString, dnv paramdnv, Object paramObject)
  {
    super(paramContext, paramhpz, paramInt, paramString);
  }
  
  protected void a(Cursor paramCursor)
  {
    synchronized (e.a)
    {
      dmk localdmk = e.a(b, true);
      localdmk.a(paramCursor);
      e.a(localdmk, b, c, d);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dla
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */