import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.Map;
import java.util.Set;

final class azq
  extends hwd
{
  static final Map<Integer, azq> a = new hq();
  static final azs b = new azs();
  static final Map<Integer, Set<azr>> c = new hq();
  
  private azq(Context paramContext, int paramInt)
  {
    super(paramContext, "callerid_data", paramInt);
  }
  
  static azo a(Context paramContext, int paramInt)
  {
    if (!aal.a(paramContext, paramInt)) {
      return null;
    }
    return c(paramContext, paramInt);
  }
  
  private static jxg a(Cursor paramCursor)
  {
    try
    {
      jxg localjxg = new jxg();
      paramCursor = paramCursor.getBlob(1);
      paramCursor = (jxg)lyi.b(localjxg, paramCursor, paramCursor.length);
      return paramCursor;
    }
    catch (lyg paramCursor)
    {
      throw new RuntimeException("Issue parsing ClientCallerIdSetting data from database partition", paramCursor);
    }
  }
  
  static void a(int paramInt, azr paramazr)
  {
    if (c.containsKey(Integer.valueOf(paramInt))) {
      ((Set)c.get(Integer.valueOf(paramInt))).remove(paramazr);
    }
  }
  
  static void a(Context paramContext, int paramInt, long paramLong, jxg[] paramArrayOfjxg)
  {
    boolean bool = false;
    paramContext = b(paramContext, paramInt).getWritableDatabase();
    paramContext.beginTransaction();
    if (paramArrayOfjxg.length > 0)
    {
      int m = paramArrayOfjxg.length;
      int j = 0;
      for (int i = 0;; i = k)
      {
        k = i;
        if (j >= m) {
          break;
        }
        jxg localjxg = paramArrayOfjxg[j];
        k = i;
        if (aal.a(d, false))
        {
          b.a(paramInt, new azo(paramLong, localjxg));
          k = i + 1;
        }
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("phone_number_e164", a.a);
        localContentValues.put("is_default", Integer.valueOf(ezc.a(aal.a(d, false))));
        localContentValues.put("refreshed_at", Long.valueOf(paramLong));
        localContentValues.put("client_callerid_setting", lyi.a(localjxg));
        paramContext.replace("client_callerid_settings", null, localContentValues);
        j += 1;
      }
    }
    int k = 0;
    paramContext.delete("client_callerid_settings", "refreshed_at< ?", new String[] { String.valueOf(paramLong) });
    paramContext.setTransactionSuccessful();
    paramContext.endTransaction();
    if (k == 0) {
      b.a(paramInt, null);
    }
    if (k <= 1) {
      bool = true;
    }
    aen.a(bool);
  }
  
  private static azq b(Context paramContext, int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException(31 + "Invalid account ID: " + paramInt);
    }
    synchronized (a)
    {
      if (a.get(Integer.valueOf(paramInt)) == null) {
        a.put(Integer.valueOf(paramInt), new azq(paramContext, paramInt));
      }
      paramContext = (azq)a.get(Integer.valueOf(paramInt));
      return paramContext;
    }
  }
  
  private static azo c(Context paramContext, int paramInt)
  {
    
    if (!b.a(paramInt))
    {
      paramContext = b(paramContext, paramInt).getReadableDatabase();
      String[] arrayOfString = bav.a;
      String str = String.valueOf("is_default=");
      int i = ezc.a(true);
      paramContext = paramContext.query("client_callerid_settings", arrayOfString, String.valueOf(str).length() + 11 + str + i, null, null, null, null, null);
    }
    for (;;)
    {
      try
      {
        switch (paramContext.getCount())
        {
        case 0: 
          paramInt = paramContext.getCount();
          throw new RuntimeException(69 + "Expected max of 1 default ClientCallerIdSetting but found " + paramInt);
        }
      }
      finally
      {
        paramContext.close();
      }
      b.a(paramInt, null);
      for (;;)
      {
        paramContext.close();
        return b.b(paramInt);
        paramContext.moveToFirst();
        b.a(paramInt, new azo(paramContext.getLong(0), a(paramContext)));
      }
    }
  }
}

/* Location:
 * Qualified Name:     azq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */