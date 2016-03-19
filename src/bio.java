import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.AsyncTask;
import com.google.android.apps.hangouts.content.EsProvider;

public abstract class bio
  extends AsyncTask<Void, Void, Void>
{
  private static final String[] c;
  public final int a;
  public final String b;
  private final Context d;
  private final hpz e;
  
  static
  {
    String[] arrayOfString = new String[dnv.h.length << 1];
    int i = 0;
    while (i < dnv.h.length)
    {
      dnv localdnv = dnv.h[i];
      int j = i << 1;
      arrayOfString[j] = m;
      arrayOfString[(j + 1)] = n;
      i += 1;
    }
    c = arrayOfString;
  }
  
  public bio(Context paramContext, hpz paramhpz, int paramInt, String paramString)
  {
    d = paramContext;
    e = paramhpz;
    a = paramInt;
    b = paramString;
  }
  
  private Void a()
  {
    if (!e.d(a)) {}
    Object localObject1;
    do
    {
      return null;
      localObject1 = d.getContentResolver();
      int i = a;
      Uri.Builder localBuilder = EsProvider.t.buildUpon();
      localBuilder.appendQueryParameter("account_id", 11 + i);
      localObject1 = ((ContentResolver)localObject1).query(localBuilder.build(), c, "gaia_id=?", new String[] { b }, null);
    } while (localObject1 == null);
    try
    {
      if (((Cursor)localObject1).moveToFirst()) {
        a((Cursor)localObject1);
      }
      return null;
    }
    finally
    {
      ((Cursor)localObject1).close();
    }
  }
  
  public abstract void a(Cursor paramCursor);
}

/* Location:
 * Qualified Name:     bio
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */