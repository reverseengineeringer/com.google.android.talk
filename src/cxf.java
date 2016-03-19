import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.google.android.apps.hangouts.content.EsProvider;

final class cxf
{
  static void a(Context paramContext, int paramInt)
  {
    Object localObject = EsProvider.a(EsProvider.k, paramInt);
    localObject = paramContext.getContentResolver().query((Uri)localObject, cxs.a, cxb.a, null, "timestamp ASC");
    if (localObject != null) {}
    try
    {
      exn localexn = new exn();
      int i = 0;
      int j = -1;
      long l1 = 0L;
      ((Cursor)localObject).moveToPosition(-1);
      for (;;)
      {
        emc localemc;
        String str;
        long l2;
        if (((Cursor)localObject).moveToNext())
        {
          localemc = emc.values()[localObject.getInt(12)];
          str = ((Cursor)localObject).getString(7);
          l2 = ((Cursor)localObject).getLong(11) / 1000L;
        }
        switch (cxc.a[localemc.ordinal()])
        {
        case 1: 
        case 2: 
        case 3: 
          int k = i + 1;
          localexn.add(str);
          int m = ((Cursor)localObject).getPosition();
          j = m;
          i = k;
          if (l2 > l1)
          {
            l1 = l2;
            j = m;
            i = k;
            break label307;
            if (cyb.n) {
              new StringBuilder(43).append("query for failed message sends: ").append(i);
            }
            if (i > 0) {
              if (i == 1)
              {
                ((Cursor)localObject).moveToPosition(j);
                paramContext = new cxh(paramContext, paramInt, new cxq((Cursor)localObject, paramInt), l1);
                paramContext.a(true);
              }
            }
            for (;;)
            {
              return;
              paramContext = new cxg(paramContext, paramInt, localexn, i, l1);
              break;
              cxb.a(paramContext, paramInt);
            }
          }
          break;
        }
      }
    }
    finally
    {
      ((Cursor)localObject).close();
    }
  }
}

/* Location:
 * Qualified Name:     cxf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */