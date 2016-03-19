import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;

final class dbs
  implements ck<Cursor>
{
  dbs(dbh paramdbh) {}
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      throw new AssertionError(27 + "Unknown loader: " + paramInt);
    case 0: 
      a.a = SystemClock.elapsedRealtime();
      paramBundle = ctr.d.buildUpon();
      paramBundle.appendQueryParameter("account_id", Integer.toString(a.c.a()));
      paramBundle.appendQueryParameter("conversation_type", Integer.toString(a.h.ordinal()));
      paramBundle.appendQueryParameter("is_frequent", "true");
      if (!TextUtils.isEmpty(a.g.g())) {
        paramBundle.appendQueryParameter("query", a.g.g());
      }
      return new ez(a.getActivity(), paramBundle.build(), ctr.g, null, null, "UPPER(display_name)");
    }
    a.b = SystemClock.elapsedRealtime();
    paramBundle = ctr.d.buildUpon();
    paramBundle.appendQueryParameter("account_id", Integer.toString(a.c.a()));
    paramBundle.appendQueryParameter("conversation_type", Integer.toString(a.h.ordinal()));
    if (!TextUtils.isEmpty(a.g.g())) {
      paramBundle.appendQueryParameter("query", a.g.g());
    }
    return new ez(a.getActivity(), paramBundle.build(), ctr.g, null, null, "UPPER(display_name)");
  }
  
  public void onLoaderReset(fe<Cursor> paramfe)
  {
    switch (paramfe.o())
    {
    default: 
      int i = paramfe.o();
      throw new AssertionError(27 + "unknown loader: " + i);
    case 0: 
      a.d.a(null);
    }
    for (;;)
    {
      a.a(a.getView());
      return;
      a.d.b(null);
    }
  }
}

/* Location:
 * Qualified Name:     dbs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */