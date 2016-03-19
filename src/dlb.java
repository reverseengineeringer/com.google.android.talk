import android.content.Context;
import android.database.Cursor;

final class dlb
  extends bio
{
  dlb(dky paramdky, Context paramContext, hpz paramhpz, int paramInt, String paramString)
  {
    super(paramContext, paramhpz, paramInt, paramString);
  }
  
  protected void a(Cursor paramCursor)
  {
    synchronized (c.a)
    {
      c.a(b, true).a(paramCursor);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dlb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */