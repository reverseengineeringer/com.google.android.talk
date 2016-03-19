import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class eol
{
  public static final String[] a = { "type", "mmsc", "mmsproxy", "mmsport" };
  private List<eom> b = new ArrayList();
  private boolean c;
  
  private eol()
  {
    this(false);
  }
  
  private eol(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  private static eol a(Context paramContext)
  {
    Object localObject2 = a(ezm.k().getSimOperator());
    Object localObject1 = String.valueOf(localObject2);
    if (((String)localObject1).length() != 0) {
      localObject1 = "TransactionSettings: loaded from local APN table, mcc/mnc=".concat((String)localObject1);
    }
    for (;;)
    {
      ezi.c("Babel_SMS", (String)localObject1, new Object[0]);
      Object localObject3 = bei.a(paramContext);
      localObject1 = null;
      paramContext = null;
      eol localeol = new eol(true);
      try
      {
        localObject2 = b((SQLiteDatabase)localObject3, (String)localObject2);
        if (localObject2 != null) {
          for (;;)
          {
            paramContext = (Context)localObject2;
            localObject1 = localObject2;
            if (!((Cursor)localObject2).moveToNext()) {
              break;
            }
            paramContext = (Context)localObject2;
            localObject1 = localObject2;
            localObject3 = eom.a((Cursor)localObject2, true);
            if (localObject3 != null)
            {
              paramContext = (Context)localObject2;
              localObject1 = localObject2;
              localeol.a((eom)localObject3);
            }
          }
        }
      }
      catch (Exception localException)
      {
        localObject1 = paramContext;
        localObject3 = String.valueOf(localException);
        localObject1 = paramContext;
        ezi.d("Babel_SMS", String.valueOf(localObject3).length() + 56 + "TransactionSettings.getFromLocalTable: failed to query. " + (String)localObject3, localException);
        if (paramContext != null) {
          paramContext.close();
        }
        do
        {
          return localeol;
          localObject1 = new String("TransactionSettings: loaded from local APN table, mcc/mnc=");
          break;
        } while (localException == null);
        localException.close();
        return localeol;
      }
      finally
      {
        if (localObject1 != null) {
          ((Cursor)localObject1).close();
        }
      }
    }
  }
  
  public static eol a(Context paramContext, String paramString)
  {
    String str = aal.a(aal.oJ, "babel_mms_mmsc", eea.g);
    eol localeol;
    if (!TextUtils.isEmpty(str))
    {
      localeol = new eol();
      localeol.a(new eom(str, b(aal.a(aal.oJ, "babel_mms_proxy_address", eea.h)), aal.a(aal.oJ, "babel_mms_proxy_port", -1)));
    }
    while ((localeol != null) && (localeol.b()))
    {
      ezi.c("Babel_SMS", "TransactionSettings: loaded from Gservcies", new Object[0]);
      return localeol;
      localeol = null;
    }
    paramString = b(paramContext, paramString);
    if ((paramString != null) && (paramString.b()))
    {
      ezi.c("Babel_SMS", "TransactionSettings: loaded from system", new Object[0]);
      return paramString;
    }
    return a(paramContext);
  }
  
  /* Error */
  public static String a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore_2
    //   4: aload_0
    //   5: aload_1
    //   6: invokestatic 85	eol:b	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    //   9: astore_0
    //   10: aload_0
    //   11: astore_1
    //   12: aload_0
    //   13: invokeinterface 177 1 0
    //   18: ifeq +13 -> 31
    //   21: aload_0
    //   22: astore_1
    //   23: aload_0
    //   24: iconst_4
    //   25: invokeinterface 181 2 0
    //   30: astore_2
    //   31: aload_2
    //   32: astore_1
    //   33: aload_0
    //   34: ifnull +11 -> 45
    //   37: aload_0
    //   38: invokeinterface 120 1 0
    //   43: aload_2
    //   44: astore_1
    //   45: aload_1
    //   46: areturn
    //   47: astore_2
    //   48: aconst_null
    //   49: astore_0
    //   50: aload_0
    //   51: astore_1
    //   52: ldc 72
    //   54: ldc -73
    //   56: aload_2
    //   57: invokestatic 117	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   60: aload_3
    //   61: astore_1
    //   62: aload_0
    //   63: ifnull -18 -> 45
    //   66: aload_0
    //   67: invokeinterface 120 1 0
    //   72: aconst_null
    //   73: areturn
    //   74: astore_0
    //   75: aconst_null
    //   76: astore_1
    //   77: aload_1
    //   78: ifnull +9 -> 87
    //   81: aload_1
    //   82: invokeinterface 120 1 0
    //   87: aload_0
    //   88: athrow
    //   89: astore_0
    //   90: goto -13 -> 77
    //   93: astore_2
    //   94: goto -44 -> 50
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	97	1	paramString	String
    //   3	41	2	str	String
    //   47	10	2	localException1	Exception
    //   93	1	2	localException2	Exception
    //   1	60	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	10	47	java/lang/Exception
    //   4	10	74	finally
    //   12	21	89	finally
    //   23	31	89	finally
    //   52	60	89	finally
    //   12	21	93	java/lang/Exception
    //   23	31	93	java/lang/Exception
  }
  
  public static String a(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramString.length() > 6))
    {
      String str = String.valueOf(paramString);
      if (str.length() != 0) {}
      for (str = "canonicalizeMccMnc: invalid mccmnc ".concat(str);; str = new String("canonicalizeMccMnc: invalid mccmnc "))
      {
        ezi.e("Babel_SMS", str, new Object[0]);
        return paramString;
      }
    }
    return a(paramString.substring(0, 3), paramString.substring(3));
  }
  
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      String str = String.format(Locale.US, "%03d%03d", new Object[] { Integer.valueOf(Integer.parseInt(paramString1)), Integer.valueOf(Integer.parseInt(paramString2)) });
      return str;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      ezi.e("Babel_SMS", String.valueOf(paramString1).length() + 35 + String.valueOf(paramString2).length() + "canonicalizeMccMnc: invalid mccmnc " + paramString1 + paramString2, new Object[0]);
      paramString1 = String.valueOf(paramString1);
      paramString2 = String.valueOf(paramString2);
      if (paramString2.length() != 0) {
        return paramString1.concat(paramString2);
      }
    }
    return new String(paramString1);
  }
  
  private void a(eom parameom)
  {
    if (parameom != null) {}
    try
    {
      if (parameom.a()) {
        b.add(parameom);
      }
      return;
    }
    finally {}
  }
  
  private static Cursor b(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    try
    {
      Cursor localCursor = paramSQLiteDatabase.query("apn", bei.a, "numeric =?", new String[] { paramString }, null, null, "current DESC", null);
      return localCursor;
    }
    catch (SQLiteException localSQLiteException)
    {
      ezi.c("Babel_SMS", "TransactionSettings.queryLocalApns: table not exist? Try rebuilding.", localSQLiteException);
      bei.b(paramSQLiteDatabase);
    }
    return paramSQLiteDatabase.query("apn", bei.a, "numeric =?", tmp52_49, null, null, "current DESC", null);
  }
  
  private static eol b(Context paramContext, String paramString)
  {
    Object localObject4 = null;
    Object localObject3 = null;
    Object localObject1 = null;
    Object localObject2;
    String[] arrayOfString;
    if (enn.b(paramContext))
    {
      localObject2 = "current IS NOT NULL";
      if (TextUtils.isEmpty(paramString)) {
        break label242;
      }
      localObject1 = String.valueOf("current IS NOT NULL");
      localObject2 = String.valueOf(" AND apn=?");
      if (((String)localObject2).length() == 0) {
        break label158;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      arrayOfString = new String[1];
      arrayOfString[0] = paramString.trim();
      localObject2 = localObject1;
    }
    for (;;)
    {
      eol localeol = new eol();
      paramString = (String)localObject4;
      localObject1 = localObject3;
      try
      {
        paramContext = aal.a(paramContext.getContentResolver(), enn.b, a, (String)localObject2, arrayOfString, null);
        if (paramContext != null)
        {
          do
          {
            paramString = paramContext;
            localObject1 = paramContext;
            if (!paramContext.moveToNext()) {
              break;
            }
            paramString = paramContext;
            localObject1 = paramContext;
            localObject2 = eom.a(paramContext, false);
          } while (localObject2 == null);
          paramString = paramContext;
          localObject1 = paramContext;
          localeol.a((eom)localObject2);
        }
        if (paramContext != null) {
          paramContext.close();
        }
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          localObject1 = paramString;
          localObject2 = String.valueOf(paramContext);
          localObject1 = paramString;
          ezi.d("Babel_SMS", String.valueOf(localObject2).length() + 52 + "TransactionSettings.getFromSystem: failed to query. " + (String)localObject2, paramContext);
          if (paramString != null) {
            paramString.close();
          }
        }
      }
      finally
      {
        if (localObject1 == null) {
          break label240;
        }
        ((Cursor)localObject1).close();
      }
      localObject1 = localeol;
      return (eol)localObject1;
      label158:
      localObject1 = new String((String)localObject1);
      break;
      label240:
      label242:
      arrayOfString = null;
    }
  }
  
  public static String b(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    for (;;)
    {
      return str;
      String[] arrayOfString = paramString.split("\\.");
      str = paramString;
      StringBuilder localStringBuilder;
      int i;
      if (arrayOfString.length == 4)
      {
        localStringBuilder = new StringBuilder(16);
        i = 0;
        if (i < 4) {
          str = paramString;
        }
      }
      try
      {
        if (arrayOfString[i].length() <= 3)
        {
          localStringBuilder.append(Integer.parseInt(arrayOfString[i]));
          if (i < 3) {
            localStringBuilder.append('.');
          }
          i += 1;
        }
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    return localStringBuilder.toString();
    return paramString;
  }
  
  public static boolean b(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return true;
    }
    paramString1 = paramString1.split(",");
    int j = paramString1.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label59;
      }
      Object localObject = paramString1[i];
      if ((((String)localObject).equals(paramString2)) || (((String)localObject).equals("*"))) {
        break;
      }
      i += 1;
    }
    label59:
    return false;
  }
  
  public List<eom> a()
  {
    try
    {
      ksf localksf = ksf.a(b);
      return localksf;
    }
    finally {}
  }
  
  public void a(Context paramContext, eom parameom)
  {
    int j = 1;
    for (;;)
    {
      try
      {
        if ((c) && (h <= 0))
        {
          h = 1;
          i = j;
          if (b.size() > 1)
          {
            b.remove(parameom);
            b.add(0, parameom);
            i = j;
          }
          if (i != 0) {
            parameom.a(paramContext);
          }
          return;
        }
      }
      finally {}
      int i = 0;
    }
  }
  
  public boolean b()
  {
    for (;;)
    {
      try
      {
        if (b.size() > 0)
        {
          bool = true;
          return bool;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     eol
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */