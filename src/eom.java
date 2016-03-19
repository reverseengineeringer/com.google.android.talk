import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;

public final class eom
{
  private static final ContentValues n;
  private static final ContentValues o;
  private static final String[] p = { "1" };
  public final long a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final int f;
  public final String g;
  public int h;
  public String i;
  public String j;
  public String k;
  public String l;
  public String m;
  
  static
  {
    ContentValues localContentValues = new ContentValues(1);
    n = localContentValues;
    localContentValues.putNull("current");
    localContentValues = new ContentValues(1);
    o = localContentValues;
    localContentValues.put("current", "1");
  }
  
  private eom(long paramLong, String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10)
  {
    a = paramLong;
    b = paramString1;
    d = paramString2;
    f = paramInt1;
    h = paramInt2;
    i = paramString3;
    j = paramString4;
    k = paramString5;
    l = paramString6;
    paramString1 = paramString7;
    if (paramString7 == null) {
      paramString1 = "";
    }
    g = paramString1;
    paramString1 = paramString8;
    if (paramString8 == null) {
      paramString1 = "";
    }
    e = paramString1;
    paramString1 = paramString9;
    if (paramString9 == null) {
      paramString1 = "";
    }
    c = paramString1;
    paramString1 = paramString10;
    if (paramString10 == null) {
      paramString1 = "";
    }
    m = paramString1;
  }
  
  public eom(String paramString1, String paramString2, int paramInt)
  {
    this(-1L, paramString1, paramString2, paramInt, -1, null, null, null, null, null, null, null, null);
  }
  
  public static eom a(Cursor paramCursor, boolean paramBoolean)
  {
    long l1;
    String str7;
    Object localObject1;
    String str9;
    String str8;
    String str1;
    Object localObject2;
    if ((paramCursor != null) && (eol.b(paramCursor.getString(0), "mms")))
    {
      l1 = -1L;
      if (paramBoolean) {
        l1 = paramCursor.getLong(4);
      }
      str7 = paramCursor.getString(1);
      if (str7 != null) {}
      for (localObject1 = str7.trim(); TextUtils.isEmpty((CharSequence)localObject1); localObject1 = str7) {
        return null;
      }
      str9 = eol.b((String)localObject1);
      str8 = paramCursor.getString(2);
      if (str8 != null)
      {
        localObject1 = str8.trim();
        str1 = null;
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          break label425;
        }
        localObject2 = eol.b((String)localObject1);
        localObject1 = str1;
      }
    }
    for (;;)
    {
      try
      {
        str1 = paramCursor.getString(3);
        if (str1 == null) {
          break label420;
        }
        localObject1 = str1;
        i1 = Integer.parseInt(str1);
        localObject1 = localObject2;
        localObject2 = str1;
      }
      catch (Exception localException1)
      {
        localObject3 = String.valueOf(localException1);
        ezi.e("Babel_SMS", String.valueOf(localObject3).length() + 55 + "TransactionSettings.Apn.fromCursor: invalid proxy port " + (String)localObject3, new Object[0]);
        localObject3 = localObject1;
        localObject1 = localObject2;
        i1 = -1;
        localObject2 = localObject3;
        continue;
        int i2 = 0;
        continue;
      }
      i2 = 0;
      if (paramBoolean)
      {
        try
        {
          str1 = paramCursor.getString(5);
          if (str1 != null) {
            i2 = Integer.parseInt(str1);
          }
          str1 = null;
          String str3 = null;
          String str4 = null;
          String str5 = null;
          String str6 = null;
          if (paramCursor.getColumnCount() >= 10)
          {
            str1 = paramCursor.getString(6);
            str3 = paramCursor.getString(7);
            str4 = paramCursor.getString(8);
            str5 = paramCursor.getString(9);
            str6 = paramCursor.getString(10);
          }
          return new eom(l1, str9, (String)localObject1, i1, i2, str1, str3, str4, str5, (String)localObject2, str8, str7, str6);
        }
        catch (Exception localException2)
        {
          Object localObject3;
          String str2 = String.valueOf(localException2);
          ezi.e("Babel_SMS", String.valueOf(str2).length() + 58 + "TransactionSettings.Apn.fromCursor: invalid current value " + str2, new Object[0]);
        }
        localObject1 = str8;
        break;
      }
      return null;
      label420:
      int i1 = -1;
      continue;
      label425:
      localObject2 = null;
      i1 = -1;
    }
  }
  
  public void a(Context paramContext)
  {
    if (ezi.a("Babel_SMS", 2))
    {
      long l1 = a;
      new StringBuilder(59).append("TransactionSettings: set ").append(l1).append(" to be current");
    }
    paramContext = bei.a(paramContext);
    paramContext.beginTransaction();
    try
    {
      paramContext.update("apn", n, "current =?", p);
      paramContext.update("apn", o, "_id =?", new String[] { Long.toString(a) });
      paramContext.setTransactionSuccessful();
      return;
    }
    finally
    {
      paramContext.endTransaction();
    }
  }
  
  public boolean a()
  {
    return !TextUtils.isEmpty(b);
  }
  
  public boolean b()
  {
    return !TextUtils.isEmpty(d);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("APN[");
    localStringBuilder.append("rowId=").append(a).append("|");
    localStringBuilder.append("mmsc=").append(b).append("|");
    localStringBuilder.append("raw mmsc=").append(c).append("|");
    localStringBuilder.append("proxy=").append(d).append("|");
    localStringBuilder.append("raw proxy=").append(e).append("|");
    localStringBuilder.append("port=").append(f).append("|");
    localStringBuilder.append("raw port=").append(g).append("|");
    localStringBuilder.append("numeric=").append(i).append("|");
    localStringBuilder.append("name=").append(j).append("|");
    localStringBuilder.append("mcc=").append(k).append("|");
    localStringBuilder.append("mnc=").append(l).append("|");
    localStringBuilder.append("raw apn").append(m).append("|");
    localStringBuilder.append("current=").append(h).append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     eom
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */