import android.app.ActivityManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.apps.hangouts.content.EsProvider;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public final class bgw
  extends SQLiteOpenHelper
{
  static final boolean a = false;
  private static final String[] c = { "name" };
  private static final Map<Integer, bgw> d = new hq();
  private static final String[] e = { "_id" };
  private static final String[] f = { "circle_id" };
  public final Context b;
  private boolean g;
  private final int h;
  private final String i;
  
  static
  {
    imx localimx = ezi.d;
  }
  
  private bgw(Context paramContext, int paramInt)
  {
    super(paramContext, String.valueOf(str1).length() + 11 + String.valueOf(str2).length() + str1 + paramInt + str2, null, 1150);
    b = paramContext;
    h = paramInt;
    paramContext = String.valueOf("babel");
    str1 = String.valueOf(".db");
    i = (String.valueOf(paramContext).length() + 11 + String.valueOf(str1).length() + paramContext + paramInt + str1);
    setWriteAheadLoggingEnabled(false);
  }
  
  /* Error */
  private static int a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +62 -> 63
    //   4: aload_0
    //   5: ldc 96
    //   7: getstatic 46	bgw:e	[Ljava/lang/String;
    //   10: ldc 98
    //   12: iconst_1
    //   13: anewarray 31	java/lang/String
    //   16: dup
    //   17: iconst_0
    //   18: aload_1
    //   19: aastore
    //   20: aconst_null
    //   21: aconst_null
    //   22: aconst_null
    //   23: invokevirtual 104	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   26: astore 7
    //   28: aload 7
    //   30: invokeinterface 110 1 0
    //   35: ifeq +163 -> 198
    //   38: aload 7
    //   40: iconst_0
    //   41: invokeinterface 114 2 0
    //   46: istore 6
    //   48: aload 7
    //   50: ifnull +10 -> 60
    //   53: aload 7
    //   55: invokeinterface 117 1 0
    //   60: iload 6
    //   62: ireturn
    //   63: aload_2
    //   64: ifnull +30 -> 94
    //   67: aload_0
    //   68: ldc 96
    //   70: getstatic 46	bgw:e	[Ljava/lang/String;
    //   73: ldc 119
    //   75: iconst_1
    //   76: anewarray 31	java/lang/String
    //   79: dup
    //   80: iconst_0
    //   81: aload_2
    //   82: aastore
    //   83: aconst_null
    //   84: aconst_null
    //   85: aconst_null
    //   86: invokevirtual 104	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   89: astore 7
    //   91: goto -63 -> 28
    //   94: aload_3
    //   95: ifnull +30 -> 125
    //   98: aload_0
    //   99: ldc 96
    //   101: getstatic 46	bgw:e	[Ljava/lang/String;
    //   104: ldc 121
    //   106: iconst_1
    //   107: anewarray 31	java/lang/String
    //   110: dup
    //   111: iconst_0
    //   112: aload_3
    //   113: aastore
    //   114: aconst_null
    //   115: aconst_null
    //   116: aconst_null
    //   117: invokevirtual 104	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   120: astore 7
    //   122: goto -94 -> 28
    //   125: aload 4
    //   127: ifnull +31 -> 158
    //   130: aload_0
    //   131: ldc 96
    //   133: getstatic 46	bgw:e	[Ljava/lang/String;
    //   136: ldc 123
    //   138: iconst_1
    //   139: anewarray 31	java/lang/String
    //   142: dup
    //   143: iconst_0
    //   144: aload 4
    //   146: aastore
    //   147: aconst_null
    //   148: aconst_null
    //   149: aconst_null
    //   150: invokevirtual 104	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   153: astore 7
    //   155: goto -127 -> 28
    //   158: aload 5
    //   160: ifnull +36 -> 196
    //   163: aload_0
    //   164: ldc 96
    //   166: getstatic 46	bgw:e	[Ljava/lang/String;
    //   169: ldc 125
    //   171: iconst_2
    //   172: anewarray 31	java/lang/String
    //   175: dup
    //   176: iconst_0
    //   177: aload 5
    //   179: aastore
    //   180: dup
    //   181: iconst_1
    //   182: aload 5
    //   184: aastore
    //   185: aconst_null
    //   186: aconst_null
    //   187: aconst_null
    //   188: invokevirtual 104	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   191: astore 7
    //   193: goto -165 -> 28
    //   196: iconst_m1
    //   197: ireturn
    //   198: aload 7
    //   200: ifnull +10 -> 210
    //   203: aload 7
    //   205: invokeinterface 117 1 0
    //   210: new 127	android/content/ContentValues
    //   213: dup
    //   214: invokespecial 128	android/content/ContentValues:<init>	()V
    //   217: astore 7
    //   219: aload_2
    //   220: ifnull +11 -> 231
    //   223: aload 7
    //   225: ldc -126
    //   227: aload_2
    //   228: invokevirtual 134	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   231: aload_1
    //   232: ifnull +11 -> 243
    //   235: aload 7
    //   237: ldc -120
    //   239: aload_1
    //   240: invokevirtual 134	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   243: aload_3
    //   244: ifnull +11 -> 255
    //   247: aload 7
    //   249: ldc -118
    //   251: aload_3
    //   252: invokevirtual 134	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   255: aload 4
    //   257: ifnull +12 -> 269
    //   260: aload 7
    //   262: ldc 48
    //   264: aload 4
    //   266: invokevirtual 134	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   269: aload 5
    //   271: ifnull +38 -> 309
    //   274: aload 7
    //   276: ldc -116
    //   278: aload 5
    //   280: invokevirtual 134	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   283: aload_2
    //   284: ifnonnull +25 -> 309
    //   287: aload_1
    //   288: ifnonnull +21 -> 309
    //   291: aload_3
    //   292: ifnonnull +17 -> 309
    //   295: aload 4
    //   297: ifnonnull +12 -> 309
    //   300: aload 7
    //   302: ldc -126
    //   304: aload 5
    //   306: invokevirtual 134	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   309: aload_1
    //   310: ifnonnull +12 -> 322
    //   313: aload 7
    //   315: ldc -114
    //   317: ldc -112
    //   319: invokevirtual 134	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   322: aload_0
    //   323: ldc 96
    //   325: aconst_null
    //   326: aload 7
    //   328: invokevirtual 148	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   331: l2i
    //   332: ireturn
    //   333: astore_0
    //   334: aconst_null
    //   335: astore 7
    //   337: aload 7
    //   339: ifnull +10 -> 349
    //   342: aload 7
    //   344: invokeinterface 117 1 0
    //   349: aload_0
    //   350: athrow
    //   351: astore_0
    //   352: goto -15 -> 337
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	355	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	355	1	paramString1	String
    //   0	355	2	paramString2	String
    //   0	355	3	paramString3	String
    //   0	355	4	paramString4	String
    //   0	355	5	paramString5	String
    //   46	15	6	j	int
    //   26	317	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	28	333	finally
    //   67	91	333	finally
    //   98	122	333	finally
    //   130	155	333	finally
    //   163	193	333	finally
    //   28	48	351	finally
  }
  
  public static bgw a(Context paramContext, int paramInt)
  {
    
    bgw localbgw1;
    try
    {
      hqb localhqb = ((hpz)ilh.a(paramContext, hpz.class)).a(paramInt);
      synchronized (d)
      {
        bgw localbgw2 = (bgw)d.get(Integer.valueOf(paramInt));
        localbgw1 = localbgw2;
        if (localbgw2 != null) {
          break label179;
        }
        if ((!localhqb.d("sms_only")) && (!localhqb.a()))
        {
          paramContext = String.valueOf(ezi.b(localhqb.b("account_name")));
          ezi.e("Babel", String.valueOf(paramContext).length() + 22 + "Account " + paramContext + " not logged in", new Object[0]);
          throw new bgz();
        }
      }
      localbgw1 = new bgw(paramContext, paramInt);
    }
    catch (hqd paramContext)
    {
      throw new bgz(paramContext);
    }
    d.put(Integer.valueOf(paramInt), localbgw1);
    label179:
    return localbgw1;
  }
  
  private static czb a(Context paramContext, SQLiteDatabase paramSQLiteDatabase)
  {
    String str = paramSQLiteDatabase.getPath();
    int j = str.lastIndexOf(File.separator);
    if (j >= 0) {}
    for (paramSQLiteDatabase = str.substring(j + 1);; paramSQLiteDatabase = str)
    {
      try
      {
        paramContext = bff.a(paramContext, Integer.parseInt(paramSQLiteDatabase.substring(5, paramSQLiteDatabase.length() - 3)));
        return paramContext;
      }
      catch (NumberFormatException paramSQLiteDatabase)
      {
        paramContext = String.valueOf(str);
        if (paramContext.length() == 0) {}
      }
      for (paramContext = "unable to parse database file name to determine index: ".concat(paramContext);; paramContext = new String("unable to parse database file name to determine index: "))
      {
        ezi.e("Babel", paramContext, new Object[0]);
        throw new RuntimeException("unable to parse database file name to determine index", paramSQLiteDatabase);
      }
    }
  }
  
  private static String a(SQLiteDatabase paramSQLiteDatabase, czb paramczb, Map<String, Object> paramMap)
  {
    Object localObject1 = null;
    Object localObject3 = paramMap.get("participant_ids");
    Object localObject4 = paramMap.get("participants");
    Object localObject2 = paramMap.get("1on1_participant_first_name");
    paramMap = (Map<String, Object>)localObject1;
    if (localObject3 != null)
    {
      paramMap = (Map<String, Object>)localObject1;
      if (localObject4 != null)
      {
        paramMap = (Map<String, Object>)localObject1;
        if ((localObject3 instanceof List))
        {
          paramMap = (Map<String, Object>)localObject1;
          if ((localObject4 instanceof eyp))
          {
            paramMap = new StringBuilder();
            localObject3 = (List)localObject3;
            localObject4 = (eyp)localObject4;
            Iterator localIterator = ((List)localObject3).iterator();
            while (localIterator.hasNext())
            {
              Object localObject5 = localIterator.next();
              if ((localObject5 instanceof czb))
              {
                localObject5 = (czb)localObject5;
                Object localObject6 = ((eyp)localObject4).get(localObject5);
                if ((localObject6 != null) && ((localObject6 instanceof String)))
                {
                  j = a(paramSQLiteDatabase, a, b, null, null, (String)localObject6);
                  if (j >= 0)
                  {
                    if (paramMap.length() > 0) {
                      paramMap.append('|');
                    }
                    paramMap.append(j);
                  }
                }
              }
            }
            if ((paramczb == null) || (localObject2 == null) || (!(localObject2 instanceof String)) || (((List)localObject3).size() != 1)) {
              break label316;
            }
            localObject3 = ((List)localObject3).get(0);
            if ((!(localObject3 instanceof czb)) || (!paramczb.a((czb)localObject3))) {
              break label316;
            }
            int j = a(paramSQLiteDatabase, null, null, null, null, (String)localObject2);
            if (j < 0) {
              break label316;
            }
            paramSQLiteDatabase = new StringBuilder();
            paramSQLiteDatabase.append(j);
          }
        }
      }
    }
    for (;;)
    {
      paramMap = (Map<String, Object>)localObject1;
      if (paramSQLiteDatabase.length() > 0) {
        paramMap = paramSQLiteDatabase.toString();
      }
      return paramMap;
      label316:
      paramSQLiteDatabase = paramMap;
    }
  }
  
  private static String a(SQLiteDatabase paramSQLiteDatabase, Map<String, Object> paramMap, boolean paramBoolean)
  {
    Iterator localIterator = null;
    Object localObject1 = paramMap.get("participant_ids");
    if ((paramBoolean) && (localObject1 != null) && ((localObject1 instanceof List)))
    {
      paramMap = new StringBuilder();
      localIterator = ((List)localObject1).iterator();
    }
    label212:
    label337:
    label344:
    label347:
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localObject1 = localIterator.next();
        if ((localObject1 == null) || (!(localObject1 instanceof dtw))) {
          break label344;
        }
        localObject1 = (dtw)localObject1;
      }
      for (int j = a(paramSQLiteDatabase, a, b, d, c, e);; j = -1)
      {
        if (j < 0) {
          break label347;
        }
        if (paramMap.length() > 0) {
          paramMap.append('|');
        }
        paramMap.append(j);
        break;
        if (paramMap.length() > 0) {}
        for (paramSQLiteDatabase = paramMap.toString();; paramSQLiteDatabase = null)
        {
          paramMap = paramSQLiteDatabase;
          Object localObject2;
          do
          {
            do
            {
              return paramMap;
              localObject2 = paramMap.get("participants");
              paramMap = localIterator;
            } while (localObject2 == null);
            paramMap = localIterator;
          } while (!(localObject2 instanceof List));
          localObject1 = new StringBuilder();
          paramMap = ((List)localObject2).iterator();
          for (;;)
          {
            if (paramMap.hasNext())
            {
              localObject2 = paramMap.next();
              if ((localObject2 instanceof String)) {
                j = a(paramSQLiteDatabase, null, null, null, null, (String)localObject2);
              }
            }
            for (;;)
            {
              if (j < 0) {
                break label337;
              }
              if (((StringBuilder)localObject1).length() > 0) {
                ((StringBuilder)localObject1).append('|');
              }
              ((StringBuilder)localObject1).append(j);
              break label212;
              if ((localObject2 instanceof czb))
              {
                localObject2 = (czb)localObject2;
                j = a(paramSQLiteDatabase, a, b, null, null, null);
                continue;
                paramMap = localIterator;
                if (((StringBuilder)localObject1).length() <= 0) {
                  break;
                }
                return ((StringBuilder)localObject1).toString();
              }
              j = -1;
            }
          }
        }
      }
    }
  }
  
  private static String a(Map<String, Object> paramMap)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localByteArrayOutputStream);
      localObjectOutputStream.writeObject(paramMap);
      localObjectOutputStream.close();
      paramMap = Base64.encodeToString(localByteArrayOutputStream.toByteArray(), 0);
      return paramMap;
    }
    catch (IOException paramMap)
    {
      ezi.d("Babel", "got exception serializing strings array", paramMap);
    }
    return null;
  }
  
  private static Map<String, Object> a(String paramString)
  {
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(paramString.getBytes(), 0)));
        try
        {
          paramString = (Map)paramString.readObject();
          return paramString;
        }
        catch (ClassNotFoundException paramString)
        {
          ezi.d("Babel", "error decoding", paramString);
          return null;
        }
      }
      return null;
    }
    catch (IOException paramString)
    {
      ezi.d("Babel", "decode object failure", paramString);
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor = paramSQLiteDatabase.query("conversations", new String[] { "conversation_id", "generated_name" }, null, null, null, null, null);
    try
    {
      ContentValues localContentValues;
      while (localCursor.moveToNext())
      {
        String str = localCursor.getString(1);
        if (str.matches("^\\+?[0-9]+$"))
        {
          localContentValues = new ContentValues();
          localContentValues.put("generated_name", ezm.p(str));
        }
      }
      return;
    }
    finally
    {
      if (localCursor != null) {
        localCursor.close();
      }
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2)
  {
    paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=OFF;");
    paramSQLiteDatabase.execSQL("alter table conversations rename to temp");
    paramSQLiteDatabase.execSQL(paramString2);
    paramString2 = String.valueOf("insert into conversations(");
    paramSQLiteDatabase.execSQL(String.valueOf(paramString2).length() + 20 + String.valueOf(paramString1).length() + String.valueOf(paramString1).length() + paramString2 + paramString1 + ") select " + paramString1 + " from temp;");
    paramSQLiteDatabase.execSQL("drop table temp");
    paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      String[] arrayOfString = new String[1];
      paramString2 = paramSQLiteDatabase.query(paramString1, paramArrayOfString, paramString2, null, null, null, null);
      try
      {
        while (paramString2.moveToNext())
        {
          Object localObject = a(paramString2.getString(1));
          if (localObject != null)
          {
            Integer localInteger = (Integer)((Map)localObject).get("type");
            if (localInteger != null)
            {
              ((Map)localObject).put("type", Integer.valueOf(aal.a(localInteger, 0) + 1));
              localObject = a((Map)localObject);
              localContentValues.put(paramArrayOfString[1], (String)localObject);
              arrayOfString[0] = paramString2.getString(0);
              paramSQLiteDatabase.update(paramString1, localContentValues, paramString3, arrayOfString);
            }
          }
        }
        if (paramString2 == null) {
          break label149;
        }
      }
      finally {}
    }
    finally
    {
      for (;;)
      {
        label149:
        paramString2 = null;
      }
    }
    paramString2.close();
    throw paramSQLiteDatabase;
    if (paramString2 != null) {
      paramString2.close();
    }
  }
  
  public static void b(Context arg0, int paramInt)
  {
    Object localObject1 = (hpz)ilh.a(???, hpz.class);
    if ((!((hpz)localObject1).c(paramInt)) || (!((hpz)localObject1).a(paramInt).a())) {}
    for (boolean bool = true;; bool = false)
    {
      aen.b(bool);
      localObject1 = String.valueOf("babel");
      String str = String.valueOf(".db");
      bool = ???.deleteDatabase(String.valueOf(localObject1).length() + 11 + String.valueOf(str).length() + (String)localObject1 + paramInt + str);
      ezi.c("Babel", 30 + "deleted: " + bool + " for " + paramInt, new Object[0]);
      synchronized (d)
      {
        d.remove(Integer.valueOf(paramInt));
        return;
      }
    }
  }
  
  private void b(SQLiteDatabase paramSQLiteDatabase)
  {
    HashSet localHashSet1 = new HashSet();
    localHashSet1.add("dnd_expiration");
    localHashSet1.add(EsProvider.a(3));
    localHashSet1.add(EsProvider.a(2));
    localHashSet1.add(EsProvider.a(1));
    localHashSet1.add(EsProvider.a(5));
    localHashSet1.add(EsProvider.a(4));
    localHashSet1.add("last_invite_seen_timestamp");
    localHashSet1.add("last_suggested_contacts_time");
    localHashSet1.add("sms_last_full_sync_time_millis");
    localHashSet1.add("refresh_participants_time");
    localHashSet1.add("last_warm_sync_localtime");
    localHashSet1.add("second_peak_scroll_time");
    localHashSet1.add("second_peak_scroll_to_conversation_timestamp");
    localHashSet1.add("sms_last_sync_time_millis");
    localHashSet1.add("last_successful_sync_time");
    HashSet localHashSet2 = new HashSet();
    localHashSet2.add("hash_pinned");
    localHashSet2.add("hash_favorites");
    localHashSet2.add("hash_people_you_hangout_with");
    localHashSet2.add("hash_other_people_on_hangout");
    localHashSet2.add("hash_dismissed_contacts");
    Cursor localCursor = paramSQLiteDatabase.query("realtimechat_metadata", new String[] { "key", "value" }, null, null, null, null, null);
    hqc localhqc = ((hpz)ilh.a(b, hpz.class)).b(h);
    for (;;)
    {
      String str2;
      try
      {
        if (!localCursor.moveToNext()) {
          break label426;
        }
        str1 = localCursor.getString(0);
        str2 = localCursor.getString(1);
        if (localHashSet1.contains(str1))
        {
          localhqc.b(str1, Long.parseLong(str2));
          continue;
        }
        if (!localHashSet2.contains(str1)) {
          break;
        }
      }
      finally
      {
        localCursor.close();
      }
      localhqc.b(str1, str2);
    }
    String str1 = String.valueOf(str1);
    if (str1.length() != 0) {}
    for (str1 = "Dropping metadata key ".concat(str1);; str1 = new String("Dropping metadata key "))
    {
      ezi.d("Babel", str1, new Object[0]);
      break;
    }
    label426:
    localhqc.d();
    localCursor.close();
    paramSQLiteDatabase.execSQL("drop table if exists realtimechat_metadata;");
  }
  
  private void c(SQLiteDatabase paramSQLiteDatabase)
  {
    Object localObject3 = a(b, paramSQLiteDatabase);
    for (;;)
    {
      try
      {
        localObject4 = new ContentValues();
        localObject5 = new String[1];
        localObject1 = String.valueOf("( type != ");
        j = emd.b.ordinal();
        localObject2 = String.valueOf("type");
        int k = emd.c.ordinal();
        localObject1 = String.valueOf(localObject1).length() + 33 + String.valueOf(localObject2).length() + (String)localObject1 + j + " AND " + (String)localObject2 + " != " + k + " )";
        localObject2 = paramSQLiteDatabase.query("messages", new String[] { "_id", "type", "text" }, (String)localObject1, null, null, null, null);
      }
      finally
      {
        Object localObject4;
        Object localObject5;
        Object localObject1;
        int j;
        Map localMap;
        Object localObject2 = null;
        continue;
        boolean bool = false;
        continue;
        bool = false;
        continue;
        continue;
        if (j != 1) {
          continue;
        }
        bool = true;
        continue;
        bool = false;
        continue;
        continue;
      }
      try
      {
        if (!((Cursor)localObject2).moveToNext()) {
          continue;
        }
        localObject1 = emd.values()[localObject2.getInt(1)];
        ((ContentValues)localObject4).clear();
        localMap = a(((Cursor)localObject2).getString(2));
        if ((localMap != null) && (localMap.size() != 0)) {
          continue;
        }
        hbs.b("No system message parameters for a membership change event", localObject1, emd.e);
        if (((ContentValues)localObject4).size() <= 0) {
          continue;
        }
        ((ContentValues)localObject4).putNull("text");
        localObject5[0] = ((Cursor)localObject2).getString(0);
        if (paramSQLiteDatabase.update("messages", (ContentValues)localObject4, "_id=?", (String[])localObject5) == 1) {
          continue;
        }
        paramSQLiteDatabase.update("messages", (ContentValues)localObject4, "_id=?", (String[])localObject5);
        continue;
        if (localObject2 == null) {
          continue;
        }
      }
      finally {}
      ((Cursor)localObject2).close();
      throw paramSQLiteDatabase;
      switch (bgy.a[localObject1.ordinal()])
      {
      case 6: 
      case 7: 
      case 1: 
        localObject1 = localMap.get("new_name");
        if ((localObject1 != null) && ((localObject1 instanceof String))) {
          ((ContentValues)localObject4).put("new_conversation_name", (String)localObject1);
        }
        break;
      case 2: 
        localObject1 = emd.m;
        Object localObject6 = localMap.get("type");
        if ((localObject6 == null) || (!(localObject6 instanceof Integer))) {
          continue;
        }
        j = aal.a((Integer)localObject6, 0);
        if (j == 2)
        {
          localObject1 = emd.l;
          continue;
          ((ContentValues)localObject4).put("type", Integer.valueOf(((emd)localObject1).ordinal()));
          localObject1 = a(paramSQLiteDatabase, localMap, bool);
          if (localObject1 != null) {
            ((ContentValues)localObject4).put("participant_keys", (String)localObject1);
          }
        }
        else
        {
          localObject1 = emd.m;
        }
        break;
      case 8: 
        localObject1 = a(paramSQLiteDatabase, (czb)localObject3, localMap);
        if (localObject1 != null) {
          ((ContentValues)localObject4).put("participant_keys", (String)localObject1);
        }
        break;
      }
    }
    if (localObject2 != null) {
      ((Cursor)localObject2).close();
    }
    localObject2 = null;
    localObject1 = localObject2;
    for (;;)
    {
      try
      {
        localObject3 = new ContentValues();
        localObject1 = localObject2;
        localObject4 = new String[1];
        localObject1 = localObject2;
        localObject2 = paramSQLiteDatabase.rawQuery("SELECT conversations._id, conversations.snippet_type, messages.author_chat_id, messages.author_gaia_id, messages.new_conversation_name, messages.participant_keys FROM conversations LEFT JOIN messages ON ( conversations.snippet_message_row_id = messages._id ) WHERE ( conversations.snippet_type = 4 OR conversations.snippet_type = 5 )", null);
        localObject1 = localObject2;
        if (!((Cursor)localObject2).moveToNext()) {
          break;
        }
        localObject1 = localObject2;
        j = ((Cursor)localObject2).getInt(1);
        localObject1 = localObject2;
        ((ContentValues)localObject3).clear();
        switch (j)
        {
        case 5: 
          localObject1 = localObject2;
          localObject5 = ((Cursor)localObject2).getString(2);
          if (localObject5 != null)
          {
            localObject1 = localObject2;
            ((ContentValues)localObject3).put("snippet_author_chat_id", (String)localObject5);
          }
          localObject1 = localObject2;
          localObject5 = ((Cursor)localObject2).getString(3);
          if (localObject5 != null)
          {
            localObject1 = localObject2;
            ((ContentValues)localObject3).put("snippet_author_gaia_id", (String)localObject5);
          }
          localObject1 = localObject2;
          if (((ContentValues)localObject3).size() <= 0) {
            continue;
          }
          localObject1 = localObject2;
          ((ContentValues)localObject3).putNull("snippet_text");
          localObject1 = localObject2;
          localObject4[0] = ((Cursor)localObject2).getString(0);
          localObject1 = localObject2;
          paramSQLiteDatabase.update("conversations", (ContentValues)localObject3, "_id=?", (String[])localObject4);
          continue;
          localObject1 = localObject2;
        }
      }
      finally
      {
        if (localObject1 != null) {
          ((Cursor)localObject1).close();
        }
      }
      localObject5 = ((Cursor)localObject2).getString(4);
      if (localObject5 != null)
      {
        localObject1 = localObject2;
        ((ContentValues)localObject3).put("snippet_new_conversation_name", (String)localObject5);
        continue;
        localObject1 = localObject2;
        localObject5 = ((Cursor)localObject2).getString(5);
        if (localObject5 != null)
        {
          localObject1 = localObject2;
          ((ContentValues)localObject3).put("snippet_participant_keys", (String)localObject5);
        }
      }
    }
    if (localObject2 != null) {
      ((Cursor)localObject2).close();
    }
  }
  
  /* Error */
  private static void d(SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 564
    //   4: iconst_2
    //   5: anewarray 31	java/lang/String
    //   8: dup
    //   9: iconst_0
    //   10: ldc_w 389
    //   13: aastore
    //   14: dup
    //   15: iconst_1
    //   16: ldc_w 611
    //   19: aastore
    //   20: ldc_w 631
    //   23: aconst_null
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: invokevirtual 104	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   30: astore 5
    //   32: aload 5
    //   34: invokeinterface 394 1 0
    //   39: ifeq +423 -> 462
    //   42: aload 5
    //   44: iconst_0
    //   45: invokeinterface 397 2 0
    //   50: astore 6
    //   52: aload 5
    //   54: iconst_1
    //   55: invokeinterface 397 2 0
    //   60: astore 4
    //   62: new 633	android/text/TextUtils$SimpleStringSplitter
    //   65: dup
    //   66: bipush 124
    //   68: invokespecial 636	android/text/TextUtils$SimpleStringSplitter:<init>	(C)V
    //   71: astore 7
    //   73: aload 7
    //   75: aload 4
    //   77: invokevirtual 639	android/text/TextUtils$SimpleStringSplitter:setString	(Ljava/lang/String;)V
    //   80: aload 7
    //   82: invokevirtual 640	android/text/TextUtils$SimpleStringSplitter:iterator	()Ljava/util/Iterator;
    //   85: astore 7
    //   87: aload 7
    //   89: invokeinterface 278 1 0
    //   94: ifeq -62 -> 32
    //   97: aload 7
    //   99: invokeinterface 282 1 0
    //   104: checkcast 31	java/lang/String
    //   107: astore 8
    //   109: aload_0
    //   110: ldc 96
    //   112: getstatic 50	bgw:f	[Ljava/lang/String;
    //   115: ldc_w 589
    //   118: iconst_1
    //   119: anewarray 31	java/lang/String
    //   122: dup
    //   123: iconst_0
    //   124: aload 8
    //   126: aastore
    //   127: aconst_null
    //   128: aconst_null
    //   129: aconst_null
    //   130: invokevirtual 104	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   133: astore 4
    //   135: aload 4
    //   137: invokeinterface 110 1 0
    //   142: ifeq +362 -> 504
    //   145: aload 4
    //   147: iconst_0
    //   148: invokeinterface 397 2 0
    //   153: astore 9
    //   155: aload 9
    //   157: ifnull +347 -> 504
    //   160: iconst_1
    //   161: istore_1
    //   162: aload 4
    //   164: ifnull +10 -> 174
    //   167: aload 4
    //   169: invokeinterface 117 1 0
    //   174: aload_0
    //   175: ldc_w 642
    //   178: iconst_1
    //   179: anewarray 31	java/lang/String
    //   182: dup
    //   183: iconst_0
    //   184: ldc 44
    //   186: aastore
    //   187: ldc_w 644
    //   190: iconst_2
    //   191: anewarray 31	java/lang/String
    //   194: dup
    //   195: iconst_0
    //   196: aload 8
    //   198: aastore
    //   199: dup
    //   200: iconst_1
    //   201: aload 6
    //   203: aastore
    //   204: aconst_null
    //   205: aconst_null
    //   206: aconst_null
    //   207: invokevirtual 104	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   210: astore 4
    //   212: aload 4
    //   214: invokeinterface 110 1 0
    //   219: istore_3
    //   220: iload_3
    //   221: ifeq +278 -> 499
    //   224: iconst_1
    //   225: istore_2
    //   226: aload 4
    //   228: ifnull +10 -> 238
    //   231: aload 4
    //   233: invokeinterface 117 1 0
    //   238: iload_2
    //   239: ifne -152 -> 87
    //   242: aload_0
    //   243: ldc_w 642
    //   246: iconst_1
    //   247: anewarray 31	java/lang/String
    //   250: dup
    //   251: iconst_0
    //   252: ldc_w 646
    //   255: aastore
    //   256: ldc_w 409
    //   259: iconst_1
    //   260: anewarray 31	java/lang/String
    //   263: dup
    //   264: iconst_0
    //   265: aload 6
    //   267: aastore
    //   268: aconst_null
    //   269: aconst_null
    //   270: aconst_null
    //   271: invokevirtual 104	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   274: astore 4
    //   276: aload 4
    //   278: invokeinterface 110 1 0
    //   283: ifeq +211 -> 494
    //   286: aload 4
    //   288: iconst_0
    //   289: invokeinterface 114 2 0
    //   294: istore_2
    //   295: aload 4
    //   297: ifnull +10 -> 307
    //   300: aload 4
    //   302: invokeinterface 117 1 0
    //   307: new 127	android/content/ContentValues
    //   310: dup
    //   311: invokespecial 128	android/content/ContentValues:<init>	()V
    //   314: astore 4
    //   316: aload 4
    //   318: ldc_w 389
    //   321: aload 6
    //   323: invokevirtual 134	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   326: iload_1
    //   327: ifeq +20 -> 347
    //   330: aload 4
    //   332: ldc_w 648
    //   335: getstatic 653	czd:c	Lczd;
    //   338: invokevirtual 654	czd:ordinal	()I
    //   341: invokestatic 171	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   344: invokevirtual 607	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   347: aload 4
    //   349: ldc_w 656
    //   352: aload 8
    //   354: invokevirtual 134	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   357: aload 4
    //   359: ldc_w 658
    //   362: iload_2
    //   363: iconst_1
    //   364: iadd
    //   365: invokestatic 171	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   368: invokevirtual 607	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   371: aload 4
    //   373: ldc_w 660
    //   376: iconst_0
    //   377: invokestatic 171	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   380: invokevirtual 607	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   383: aload_0
    //   384: ldc_w 642
    //   387: aconst_null
    //   388: aload 4
    //   390: invokevirtual 148	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   393: pop2
    //   394: goto -307 -> 87
    //   397: astore_0
    //   398: aload 5
    //   400: astore 4
    //   402: aload 4
    //   404: ifnull +10 -> 414
    //   407: aload 4
    //   409: invokeinterface 117 1 0
    //   414: aload_0
    //   415: athrow
    //   416: astore_0
    //   417: aconst_null
    //   418: astore 4
    //   420: aload 4
    //   422: ifnull +10 -> 432
    //   425: aload 4
    //   427: invokeinterface 117 1 0
    //   432: aload_0
    //   433: athrow
    //   434: aload 4
    //   436: ifnull +10 -> 446
    //   439: aload 4
    //   441: invokeinterface 117 1 0
    //   446: aload_0
    //   447: athrow
    //   448: aload 4
    //   450: ifnull +10 -> 460
    //   453: aload 4
    //   455: invokeinterface 117 1 0
    //   460: aload_0
    //   461: athrow
    //   462: aload 5
    //   464: ifnull +10 -> 474
    //   467: aload 5
    //   469: invokeinterface 117 1 0
    //   474: return
    //   475: astore_0
    //   476: aconst_null
    //   477: astore 4
    //   479: goto -77 -> 402
    //   482: astore_0
    //   483: goto -35 -> 448
    //   486: astore_0
    //   487: goto -53 -> 434
    //   490: astore_0
    //   491: goto -71 -> 420
    //   494: iconst_0
    //   495: istore_2
    //   496: goto -201 -> 295
    //   499: iconst_0
    //   500: istore_2
    //   501: goto -275 -> 226
    //   504: iconst_0
    //   505: istore_1
    //   506: goto -344 -> 162
    //   509: astore_0
    //   510: aconst_null
    //   511: astore 4
    //   513: goto -79 -> 434
    //   516: astore_0
    //   517: aconst_null
    //   518: astore 4
    //   520: goto -72 -> 448
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	523	0	paramSQLiteDatabase	SQLiteDatabase
    //   161	345	1	j	int
    //   225	276	2	k	int
    //   219	2	3	bool	boolean
    //   60	459	4	localObject1	Object
    //   30	438	5	localCursor	Cursor
    //   50	272	6	str1	String
    //   71	27	7	localObject2	Object
    //   107	246	8	str2	String
    //   153	3	9	str3	String
    // Exception table:
    //   from	to	target	type
    //   32	87	397	finally
    //   87	109	397	finally
    //   167	174	397	finally
    //   231	238	397	finally
    //   300	307	397	finally
    //   307	326	397	finally
    //   330	347	397	finally
    //   347	394	397	finally
    //   425	432	397	finally
    //   432	434	397	finally
    //   439	446	397	finally
    //   446	448	397	finally
    //   453	460	397	finally
    //   460	462	397	finally
    //   109	135	416	finally
    //   0	32	475	finally
    //   276	295	482	finally
    //   212	220	486	finally
    //   135	155	490	finally
    //   174	212	509	finally
    //   242	276	516	finally
  }
  
  private static void e(SQLiteDatabase paramSQLiteDatabase)
  {
    String[] arrayOfString = EsProvider.c();
    int j = 0;
    String str;
    while (j < 7)
    {
      str = arrayOfString[j];
      paramSQLiteDatabase.execSQL(String.valueOf(str).length() + 21 + "drop view if exists " + str + ";");
      j += 1;
    }
    arrayOfString = ctr.d();
    j = 0;
    while (j <= 0)
    {
      str = arrayOfString[0];
      paramSQLiteDatabase.execSQL(String.valueOf(str).length() + 21 + "drop view if exists " + str + ";");
      j += 1;
    }
    arrayOfString = EsProvider.d();
    j = 0;
    while (j < 7)
    {
      paramSQLiteDatabase.execSQL(arrayOfString[j]);
      j += 1;
    }
    arrayOfString = ctr.c();
    j = 0;
    while (j <= 0)
    {
      paramSQLiteDatabase.execSQL(arrayOfString[0]);
      j += 1;
    }
  }
  
  private void f(SQLiteDatabase paramSQLiteDatabase)
  {
    int j = 0;
    int k = 1;
    while (k != 0)
    {
      int m = j + 1;
      if (j >= 5) {
        break;
      }
      Cursor localCursor = paramSQLiteDatabase.query("sqlite_master", c, "type='table'", null, null, null, null);
      if (localCursor != null)
      {
        k = 0;
        try
        {
          for (;;)
          {
            if (localCursor.moveToNext())
            {
              String str3 = localCursor.getString(0);
              if (str3.startsWith("android_")) {
                continue;
              }
              boolean bool = str3.startsWith("sqlite_");
              if (bool) {
                continue;
              }
              try
              {
                String str1 = String.valueOf("DROP TABLE IF EXISTS ");
                String str4 = String.valueOf(str3);
                if (str4.length() != 0) {}
                for (str1 = str1.concat(str4);; str1 = new String(str1))
                {
                  paramSQLiteDatabase.execSQL(str1);
                  k = 1;
                  break;
                }
              }
              catch (SQLException localSQLException)
              {
                String str2 = String.valueOf(localSQLException);
                ezi.a("Babel", String.valueOf(str3).length() + 22 + String.valueOf(str2).length() + "unable to drop table " + str3 + " " + str2, new Object[0]);
              }
            }
          }
        }
        finally
        {
          localCursor.close();
        }
        j = m;
      }
      else
      {
        j = m;
        k = 0;
      }
    }
    g(paramSQLiteDatabase);
    h(paramSQLiteDatabase);
    onCreate(paramSQLiteDatabase);
  }
  
  private static void g(SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor = paramSQLiteDatabase.query("sqlite_master", c, "type='view'", null, null, null, null);
    if (localCursor != null)
    {
      label159:
      for (;;)
      {
        try
        {
          if (!localCursor.moveToNext()) {
            break;
          }
          String str3 = localCursor.getString(0);
          try
          {
            String str1 = String.valueOf("DROP VIEW IF EXISTS ");
            String str4 = String.valueOf(str3);
            if (str4.length() == 0) {
              break label159;
            }
            str1 = str1.concat(str4);
            paramSQLiteDatabase.execSQL(str1);
          }
          catch (SQLException localSQLException) {}
          if (ezi.a("Babel", 3))
          {
            String str2 = String.valueOf(localSQLException);
            ezi.a("Babel", String.valueOf(str3).length() + 21 + String.valueOf(str2).length() + "unable to drop view " + str3 + " " + str2, new Object[0]);
            continue;
            str2 = new String(str2);
          }
        }
        finally
        {
          localCursor.close();
        }
      }
      localCursor.close();
    }
  }
  
  private static void h(SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor = paramSQLiteDatabase.query("sqlite_master", c, "type='index'", null, null, null, null);
    if (localCursor != null)
    {
      label159:
      for (;;)
      {
        try
        {
          if (!localCursor.moveToNext()) {
            break;
          }
          String str3 = localCursor.getString(0);
          try
          {
            String str1 = String.valueOf("DROP INDEX IF EXISTS ");
            String str4 = String.valueOf(str3);
            if (str4.length() == 0) {
              break label159;
            }
            str1 = str1.concat(str4);
            paramSQLiteDatabase.execSQL(str1);
          }
          catch (SQLException localSQLException) {}
          if (ezi.a("Babel", 3))
          {
            String str2 = String.valueOf(localSQLException);
            ezi.a("Babel", String.valueOf(str3).length() + 22 + String.valueOf(str2).length() + "unable to drop index " + str3 + " " + str2, new Object[0]);
            continue;
            str2 = new String(str2);
          }
        }
        finally
        {
          localCursor.close();
        }
      }
      localCursor.close();
    }
  }
  
  public bha a()
  {
    try
    {
      bha localbha = bha.a(b, getReadableDatabase());
      return localbha;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public bha b()
  {
    try
    {
      bha localbha = bha.a(b, getWritableDatabase());
      return localbha;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void c()
  {
    g = false;
  }
  
  public SQLiteDatabase getReadableDatabase()
  {
    try
    {
      if (g) {
        throw new SQLiteException("Database deleted");
      }
    }
    finally {}
    try
    {
      SQLiteDatabase localSQLiteDatabase1 = super.getReadableDatabase();
      return localSQLiteDatabase1;
    }
    catch (SQLiteException localSQLiteException)
    {
      SQLiteDatabase localSQLiteDatabase2;
      for (;;)
      {
        String str = String.valueOf(localSQLiteException);
        ezi.d("Babel", String.valueOf(str).length() + 56 + "[EsDatabaseHelper] getWritableDatabase threw exception: " + str, new Object[0]);
        if (!(localSQLiteException instanceof SQLiteCantOpenDatabaseException)) {
          break;
        }
        b.deleteDatabase(i);
        localSQLiteDatabase2 = super.getReadableDatabase();
      }
      throw localSQLiteDatabase2;
    }
  }
  
  public SQLiteDatabase getWritableDatabase()
  {
    try
    {
      if (g) {
        throw new SQLiteException("Database deleted");
      }
    }
    finally {}
    try
    {
      SQLiteDatabase localSQLiteDatabase1 = super.getWritableDatabase();
      return localSQLiteDatabase1;
    }
    catch (SQLiteException localSQLiteException)
    {
      SQLiteDatabase localSQLiteDatabase2;
      for (;;)
      {
        String str = String.valueOf(localSQLiteException);
        ezi.d("Babel", String.valueOf(str).length() + 56 + "[EsDatabaseHelper] getWritableDatabase threw exception: " + str, new Object[0]);
        if (!(localSQLiteException instanceof SQLiteCantOpenDatabaseException)) {
          break;
        }
        b.deleteDatabase(i);
        localSQLiteDatabase2 = super.getWritableDatabase();
      }
      throw localSQLiteDatabase2;
    }
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    String[] arrayOfString = EsProvider.a();
    int j = 0;
    while (j < 16)
    {
      paramSQLiteDatabase.execSQL(arrayOfString[j]);
      j += 1;
    }
    arrayOfString = ctr.b();
    j = 0;
    while (j < 2)
    {
      paramSQLiteDatabase.execSQL(arrayOfString[j]);
      j += 1;
    }
    arrayOfString = EsProvider.b();
    j = 0;
    while (j < 16)
    {
      paramSQLiteDatabase.execSQL(arrayOfString[j]);
      j += 1;
    }
    arrayOfString = EsProvider.d();
    j = 0;
    while (j < 7)
    {
      paramSQLiteDatabase.execSQL(arrayOfString[j]);
      j += 1;
    }
    arrayOfString = ctr.c();
    j = 0;
    while (j <= 0)
    {
      paramSQLiteDatabase.execSQL(arrayOfString[0]);
      j += 1;
    }
    arrayOfString = EsProvider.e();
    j = 0;
    while (j <= 0)
    {
      paramSQLiteDatabase.execSQL(arrayOfString[0]);
      j += 1;
    }
    aal.a(new bgx(this));
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    ezi.e("Babel", 43 + "Downgrading from:" + paramInt1 + " to:" + paramInt2, new Object[0]);
    f(paramSQLiteDatabase);
    if (Build.VERSION.SDK_INT >= 19)
    {
      paramSQLiteDatabase = (ActivityManager)b.getSystemService("activity");
      ezi.e("Babel", "Clearing app data, service will be restarted!", new Object[0]);
      paramSQLiteDatabase.clearApplicationUserData();
    }
  }
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    if (!paramSQLiteDatabase.isReadOnly()) {
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
    }
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    int k = 1;
    if (ezi.a("Babel", 3)) {
      ezi.a("Babel", 45 + "Upgrade database: " + paramInt1 + " --> " + paramInt2, new Object[0]);
    }
    int j = 242;
    if ("hammerhead".equals(Build.HARDWARE)) {
      j = 234;
    }
    if ((paramInt1 < 138) || ((paramInt1 > 138) && (paramInt1 < j)) || ((paramInt1 > 219) && (paramInt1 < 225)) || ((paramInt1 > 402) && (paramInt1 < 430)))
    {
      ezi.d("Babel", 50 + "upgrade from " + paramInt1 + " not supported; recreating", new Object[0]);
      f(paramSQLiteDatabase);
      return;
    }
    String str;
    Object localObject;
    switch (paramInt1)
    {
    default: 
      try
      {
        throw new IllegalStateException(52 + "Must support upgrade from " + paramInt1 + " to " + paramInt2);
      }
      catch (Throwable localThrowable)
      {
        str = String.valueOf(localThrowable.getMessage());
        ezi.d("Babel", String.valueOf(str).length() + 53 + "Upgrade database failed: " + paramInt1 + " --> " + paramInt2 + " " + str, localThrowable);
        if (((fak)ilh.a(b, fak.class)).a())
        {
          j = k;
          if (j == 0) {
            break label3359;
          }
          throw new RuntimeException(49 + "Unable to upgrade from " + paramInt1 + " to " + paramInt2, localThrowable);
        }
      }
      finally
      {
        PreferenceManager.getDefaultSharedPreferences(b).edit().putInt("last_database_upgrade_version", paramInt2).commit();
      }
    case 138: 
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=OFF;");
      paramSQLiteDatabase.execSQL("ALTER TABLE messages ADD COLUMN attachment_content_type TEXT");
      paramSQLiteDatabase.execSQL("alter table participants rename to temp");
      paramSQLiteDatabase.execSQL(EsProvider.b);
      paramSQLiteDatabase.execSQL("insert into participants(_id, participant_type, gaia_id, chat_id, circle_id, first_name, full_name, fallback_name, profile_photo_url, batch_gebi_tag, blocked) select _id, participant_type, gaia_id, chat_id, circle_id, first_name, full_name, fallback_name, profile_photo_url, batch_gebi_tag, blocked from temp;");
      paramSQLiteDatabase.execSQL("drop table temp");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_participants_chat_id ON participants(chat_id)");
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
      paramSQLiteDatabase.execSQL("update conversations set otr_status = otr_status + 1;");
      localObject = String.valueOf("type=");
      j = emd.e.ordinal();
      localObject = String.valueOf(localObject).length() + 11 + (String)localObject + j;
      a(paramSQLiteDatabase, new String[] { "_id", "text" }, "messages", (String)localObject, "_id=?");
      a(paramSQLiteDatabase, new String[] { "_id", "snippet_text" }, "conversations", "snippet_type=4", "_id=?");
      paramSQLiteDatabase.execSQL("update conversations set conversation_type = conversation_type - 1;");
    case 200: 
    case 203: 
      paramSQLiteDatabase.execSQL("alter table messages add column transport_type INT NOT NULL DEFAULT(1);");
    case 204: 
    case 205: 
    case 206: 
    case 207: 
      paramSQLiteDatabase.execSQL("alter table messages add column external_ids TEXT;");
    case 208: 
    case 209: 
      paramSQLiteDatabase.execSQL("alter table messages add column sms_timestamp_sent INT DEFAULT(0);");
      paramSQLiteDatabase.execSQL("alter table messages add column sms_priority INT DEFAULT(0);");
      paramSQLiteDatabase.execSQL("alter table messages add column sms_message_size INT DEFAULT(0);");
    case 210: 
      paramSQLiteDatabase.execSQL("alter table messages add column mms_subject TEXT;");
      paramSQLiteDatabase.execSQL("alter table messages add column sms_raw_sender TEXT;");
      paramSQLiteDatabase.execSQL("alter table messages add column sms_raw_recipients TEXT;");
    case 211: 
    case 212: 
    case 213: 
    case 214: 
    case 215: 
      paramSQLiteDatabase.execSQL("alter table conversations add column transport_type INT DEFAULT(1);");
    case 216: 
      paramSQLiteDatabase.execSQL("alter table messages add column persisted INT DEFAULT(1);");
    case 217: 
      paramSQLiteDatabase.execSQL("alter table conversations add column sms_service_center TEXT;");
    case 218: 
      paramSQLiteDatabase.execSQL("alter table messages add column sms_message_status INT DEFAULT(-1);");
    case 220: 
    case 222: 
      paramSQLiteDatabase.execSQL("alter table conversations add column is_temporary INT DEFAULT(0);");
    case 223: 
      paramSQLiteDatabase.execSQL("alter table messages add column location_name TEXT;");
      paramSQLiteDatabase.execSQL("alter table messages add column latitude DOUBLE;");
      paramSQLiteDatabase.execSQL("alter table messages add column longitude DOUBLE;");
      paramSQLiteDatabase.execSQL("alter table messages add column static_map_url TEXT;");
      paramSQLiteDatabase.execSQL("alter table messages add column target_map_url TEXT;");
    case 224: 
    case 225: 
      paramSQLiteDatabase.execSQL("alter table messages add column sms_type INT DEFAULT(-1);");
      paramSQLiteDatabase.execSQL("UPDATE messages SET sms_type=(CASE WHEN external_ids LIKE 'content://sms/%' THEN 0 WHEN external_ids LIKE 'content://mms/%' THEN 1 ELSE 2 END) WHERE transport_type=1");
    case 227: 
      paramSQLiteDatabase.execSQL("alter table conversations add column sms_thread_id INT DEFAULT(-1);");
    case 228: 
      paramSQLiteDatabase.execSQL("alter table messages add column video_stream_url TEXT;");
    case 229: 
    case 230: 
    case 232: 
    case 233: 
    case 234: 
      paramSQLiteDatabase.execSQL("CREATE INDEX index_messages_conversation_id_timestamp ON messages(conversation_id, timestamp)");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_conversation_participants_sequence ON conversation_participants(sequence)");
    case 235: 
    case 236: 
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=OFF;");
      paramSQLiteDatabase.execSQL("alter table messages rename to temp");
      paramSQLiteDatabase.execSQL("CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, message_type INT, conversation_id TEXT, author_chat_id TEXT, author_gaia_id TEXT, text TEXT, timestamp INT, status INT, type INT, local_url TEXT, remote_url TEXT, attachment_content_type TEXT, width_pixels INT, height_pixels INT, stream_id TEXT, image_id TEXT, album_id TEXT, location_name TEXT, latitude DOUBLE, longitude DOUBLE, static_map_url TEXT, target_map_url TEXT, notification_level INT, expiration_timestamp INT, notified_for_failure INT DEFAULT(0), hidden_by INT, alert_status INT DEfAULT(0), off_the_record INT DEFAULT(0), transport_type INT NOT NULL DEFAULT(1), external_ids TEXT, sms_timestamp_sent INT DEFAULT(0), sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, sms_raw_sender TEXT, sms_raw_recipients TEXT, persisted INT DEFAULT(1), sms_message_status INT DEFAULT(-1), sms_type INT DEFAULT(-1), video_stream_url TEXT, FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE,UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);");
      paramSQLiteDatabase.execSQL("insert into messages(_id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, location_name, latitude, longitude, static_map_url, target_map_url, notification_level, expiration_timestamp, notified_for_failure, hidden_by, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url) select _id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, location_name, latitude, longitude, static_map_url, target_map_url, notification_level, expiration_timestamp, notified_for_failure, hidden_by, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url from temp;");
      paramSQLiteDatabase.execSQL("drop table temp");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_messages_conversation_id_timestamp ON messages(conversation_id, timestamp)");
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
    case 237: 
    case 238: 
      paramSQLiteDatabase.execSQL("CREATE TABLE mms_notification_inds (_id INTEGER PRIMARY KEY, content_location TEXT, transaction_id TEXT, from_address TEXT, message_size INT DEFAULT(0), expiry INT);");
    case 239: 
      paramSQLiteDatabase.execSQL("update messages set attachment_content_type = 'image/*' where attachment_content_type isnull and (remote_url notnull or local_url notnull)");
    case 240: 
    case 241: 
    case 242: 
      paramSQLiteDatabase.execSQL("CREATE TABLE multipart_attachments (_id INTEGER PRIMARY KEY, message_id TEXT, conversation_id TEXT, url TEXT, content_type TEXT, width INT, height INT, FOREIGN KEY (message_id, conversation_id) REFERENCES messages(message_id, conversation_id) ON DELETE CASCADE ON UPDATE CASCADE);");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_multipart_attachments_conversation_id_message_id ON multipart_attachments(conversation_id, message_id)");
      paramSQLiteDatabase.execSQL("DROP TABLE account_status;");
    case 271: 
      paramSQLiteDatabase.execSQL("alter table messages add column attachment_name TEXT;");
      paramSQLiteDatabase.execSQL("alter table messages add column attachment_target_url TEXT;");
      paramSQLiteDatabase.execSQL("UPDATE messages SET attachment_name = location_name, attachment_content_type = 'hangouts/location', attachment_target_url = target_map_url, remote_url = static_map_url WHERE location_name IS NOT NULL OR static_map_url IS NOT NULL OR target_map_url IS NOT NULL");
      paramSQLiteDatabase.execSQL("UPDATE messages SET location_name= NULL, target_map_url = NULL, static_map_url = NULL");
    case 400: 
    case 401: 
      paramSQLiteDatabase.execSQL("alter table messages add column image_rotation INT DEFAULT(0);");
    case 402: 
      paramSQLiteDatabase.execSQL("UPDATE messages SET transport_type=(CASE WHEN transport_type=1 THEN 0 WHEN transport_type=2 THEN 1 WHEN transport_type=4 THEN 3 ELSE 0 END)");
      paramSQLiteDatabase.execSQL("UPDATE conversations SET transport_type=(CASE WHEN transport_type=1 THEN 0 WHEN transport_type=2 THEN 1 WHEN transport_type=4 THEN 3 ELSE 0 END)");
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=OFF;");
      paramSQLiteDatabase.execSQL("alter table conversations rename to temp");
      paramSQLiteDatabase.execSQL("CREATE TABLE conversations (_id INTEGER PRIMARY KEY, conversation_id TEXT, conversation_type INT, latest_message_timestamp INT DEFAULT(0), latest_message_expiration_timestamp INT, metadata_present INT,notification_level INT, name TEXT, generated_name TEXT, snippet_type INT, snippet_text TEXT, snippet_image_url TEXT, snippet_author_gaia_id TEXT, snippet_author_chat_id TEXT, snippet_message_row_id INT, snippet_status INT, status INT, view INT, inviter_gaia_id TEXT, inviter_chat_id TEXT, inviter_affinity INT, is_pending_leave INT, account_id INT, is_otr INT, packed_avatar_urls TEXT, self_avatar_url TEXT, self_watermark INT DEFAULT(0), chat_watermark INT DEFAULT(0), hangout_watermark INT DEFAULT(0), is_draft INT, sequence_number INT, call_media_type INT, has_joined_hangout INT, last_hangout_event_time INT, draft TEXT, otr_status INT, otr_toggle INT, last_otr_modification_time INT, continuation_token BLOB, continuation_event_timestamp INT, has_oldest_message INT DEFAULT(0), sort_timestamp INT, first_peak_scroll_time INT, first_peak_scroll_to_message_timestamp INT, second_peak_scroll_time INT, second_peak_scroll_to_message_timestamp INT, conversation_hash BLOB, disposition INT DEFAULT(0), has_persistent_events INT DEFAULT(-1), transport_type INT DEFAULT(1), sms_service_center TEXT, is_temporary INT DEFAULT (0), sms_thread_id INT DEFAULT (-1), UNIQUE (conversation_id ));");
      paramSQLiteDatabase.execSQL("insert into conversations(_id, conversation_id, conversation_type, latest_message_timestamp, latest_message_expiration_timestamp, metadata_present, notification_level, name, generated_name, snippet_type, snippet_text, snippet_image_url, snippet_author_gaia_id, snippet_author_chat_id, snippet_message_row_id, snippet_status, status, view, inviter_gaia_id, inviter_chat_id, inviter_affinity, is_pending_leave, account_id, is_otr, packed_avatar_urls, self_avatar_url, self_watermark, chat_watermark, hangout_watermark, is_draft, sequence_number, has_joined_hangout, last_hangout_event_time, draft, otr_status, otr_toggle, last_otr_modification_time, continuation_token, continuation_event_timestamp, has_oldest_message, sort_timestamp, first_peak_scroll_time, first_peak_scroll_to_message_timestamp, second_peak_scroll_time, second_peak_scroll_to_message_timestamp, conversation_hash, disposition, has_persistent_events, transport_type, sms_service_center, is_temporary, sms_thread_id) select _id, conversation_id, conversation_type, latest_message_timestamp, latest_message_expiration_timestamp, metadata_present, notification_level, name, generated_name, snippet_type, snippet_text, snippet_image_url, snippet_author_gaia_id, snippet_author_chat_id, snippet_message_row_id, snippet_status, status, view, inviter_gaia_id, inviter_chat_id, inviter_affinity, is_pending_leave, account_id, is_otr, packed_avatar_urls, self_avatar_url, self_watermark, chat_watermark, hangout_watermark, is_draft, sequence_number, has_joined_hangout, last_hangout_event_time, draft, otr_status, otr_toggle, last_otr_modification_time, continuation_token, continuation_event_timestamp, has_oldest_message, sort_timestamp, first_peak_scroll_time, first_peak_scroll_to_message_timestamp, second_peak_scroll_time, second_peak_scroll_to_message_timestamp, conversation_hash, disposition, has_persistent_events, transport_type, sms_service_center, is_temporary, sms_thread_id from temp;");
      paramSQLiteDatabase.execSQL("drop table temp");
      paramSQLiteDatabase.execSQL("alter table messages rename to temp");
      paramSQLiteDatabase.execSQL("CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, message_type INT, conversation_id TEXT, author_chat_id TEXT, author_gaia_id TEXT, text TEXT, timestamp INT, status INT, type INT, local_url TEXT, remote_url TEXT, attachment_content_type TEXT, width_pixels INT, height_pixels INT, stream_id TEXT, image_id TEXT, album_id TEXT, location_name TEXT, latitude DOUBLE, longitude DOUBLE, static_map_url TEXT, target_map_url TEXT, notification_level INT, expiration_timestamp INT, notified_for_failure INT DEFAULT(0), alert_status INT DEfAULT(0), off_the_record INT DEFAULT(0), transport_type INT NOT NULL DEFAULT(1), external_ids TEXT, sms_timestamp_sent INT DEFAULT(0), sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, sms_raw_sender TEXT, sms_raw_recipients TEXT, persisted INT DEFAULT(1), sms_message_status INT DEFAULT(-1), sms_type INT DEFAULT(-1), video_stream_url TEXT, attachment_target_url TEXT, attachment_name TEXT, image_rotation INT DEFAULT (0), FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE,UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);");
      paramSQLiteDatabase.execSQL("insert into messages(_id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, width_pixels, height_pixels, local_url, stream_id, image_id, album_id, image_rotation, attachment_content_type, remote_url, attachment_name, attachment_target_url, location_name, static_map_url, target_map_url, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url) select _id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, width_pixels, height_pixels, local_url, stream_id, image_id, album_id, image_rotation, attachment_content_type, remote_url, attachment_name, attachment_target_url, location_name, static_map_url, target_map_url, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url from temp;");
      paramSQLiteDatabase.execSQL("drop table temp");
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
    case 403: 
      paramSQLiteDatabase.execSQL("CREATE TABLE event_suggestions (_id INTEGER PRIMARY KEY, conversation_id TEXT, suggestion_id TEXT, timestamp INT, expiration_time_usec INT, type INT, gem_asset_url STRING, gem_horizontal_alignment INT, FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE, UNIQUE (conversation_id,suggestion_id) ON CONFLICT REPLACE);");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_event_suggestions_conversation_id_expiration_time_timestamp  ON event_suggestions(conversation_id, expiration_time_usec, timestamp)");
    case 404: 
      paramSQLiteDatabase.execSQL("CREATE INDEX index_participants_blocked ON participants(blocked)");
    case 405: 
    case 406: 
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=OFF;");
      paramSQLiteDatabase.execSQL("alter table participants rename to temp");
      paramSQLiteDatabase.execSQL(EsProvider.b);
      paramSQLiteDatabase.execSQL("insert into participants(_id, participant_type, gaia_id, chat_id, circle_id, phone_id, first_name, full_name, fallback_name, profile_photo_url, batch_gebi_tag, blocked) select _id, participant_type, gaia_id, chat_id, circle_id, phone_id, first_name, full_name, fallback_name, profile_photo_url, batch_gebi_tag, blocked from temp;");
      paramSQLiteDatabase.execSQL("drop table temp");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_participants_chat_id ON participants(chat_id)");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_participants_blocked ON participants(blocked)");
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
    case 407: 
    case 408: 
      paramSQLiteDatabase.execSQL("alter table messages add column new_conversation_name TEXT;");
      paramSQLiteDatabase.execSQL("alter table messages add column participant_keys TEXT;");
      paramSQLiteDatabase.execSQL("alter table conversations add column previous_latest_timestamp INT;");
      paramSQLiteDatabase.execSQL("alter table conversations add column snippet_new_conversation_name TEXT;");
      paramSQLiteDatabase.execSQL("alter table conversations add column snippet_participant_keys TEXT;");
      c(paramSQLiteDatabase);
    case 409: 
    case 410: 
    case 411: 
    case 412: 
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=OFF;");
      paramSQLiteDatabase.execSQL("alter table messages rename to temp");
      paramSQLiteDatabase.execSQL("CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, message_type INT, conversation_id TEXT, author_chat_id TEXT, author_gaia_id TEXT, text TEXT, timestamp INT, status INT, type INT, local_url TEXT, remote_url TEXT, attachment_content_type TEXT, width_pixels INT, height_pixels INT, stream_id TEXT, image_id TEXT, album_id TEXT, latitude DOUBLE, longitude DOUBLE, notification_level INT, expiration_timestamp INT, notified_for_failure INT DEFAULT(0), alert_status INT DEfAULT(0), off_the_record INT DEFAULT(0), transport_type INT NOT NULL DEFAULT(1), external_ids TEXT, sms_timestamp_sent INT DEFAULT(0), sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, sms_raw_sender TEXT, sms_raw_recipients TEXT, persisted INT DEFAULT(1), sms_message_status INT DEFAULT(-1), sms_type INT DEFAULT(-1), video_stream_url TEXT, attachment_target_url TEXT, attachment_name TEXT, image_rotation INT DEFAULT (0), new_conversation_name TEXT, participant_keys TEXT, FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE,UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);");
      paramSQLiteDatabase.execSQL("insert into messages(_id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys) select _id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys from temp;");
      paramSQLiteDatabase.execSQL("drop table temp");
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
    case 413: 
      paramSQLiteDatabase.execSQL("alter table messages add column transport_phone TEXT;");
      paramSQLiteDatabase.execSQL("alter table conversations add column default_transport_phone TEXT;");
    case 414: 
      a(paramSQLiteDatabase, "_id, conversation_id, conversation_type, latest_message_timestamp, latest_message_expiration_timestamp, metadata_present,notification_level, name, generated_name, snippet_type, snippet_text, snippet_image_url, snippet_author_gaia_id, snippet_author_chat_id, snippet_message_row_id, snippet_status, snippet_new_conversation_name, snippet_participant_keys, previous_latest_timestamp, status, view, inviter_gaia_id, inviter_chat_id, inviter_affinity, is_pending_leave, account_id, is_otr, packed_avatar_urls, self_avatar_url, self_watermark, chat_watermark, hangout_watermark, is_draft, sequence_number, call_media_type, has_joined_hangout, last_hangout_event_time, draft, otr_status, otr_toggle, last_otr_modification_time, continuation_token, continuation_event_timestamp, has_oldest_message, sort_timestamp, first_peak_scroll_time, first_peak_scroll_to_message_timestamp, second_peak_scroll_time, second_peak_scroll_to_message_timestamp, conversation_hash, disposition, has_persistent_events, transport_type, default_transport_phone, sms_service_center, is_temporary, sms_thread_id", "CREATE TABLE conversations (_id INTEGER PRIMARY KEY, conversation_id TEXT, conversation_type INT, latest_message_timestamp INT DEFAULT(0), latest_message_expiration_timestamp INT, metadata_present INT,notification_level INT, name TEXT, generated_name TEXT, snippet_type INT, snippet_text TEXT, snippet_image_url TEXT, snippet_author_gaia_id TEXT, snippet_author_chat_id TEXT, snippet_message_row_id INT, snippet_status INT, snippet_new_conversation_name TEXT, snippet_participant_keys TEXT, previous_latest_timestamp INT, status INT, view INT, inviter_gaia_id TEXT, inviter_chat_id TEXT, inviter_affinity INT, is_pending_leave INT, account_id INT, is_otr INT, packed_avatar_urls TEXT, self_avatar_url TEXT, self_watermark INT DEFAULT(0), chat_watermark INT DEFAULT(0), hangout_watermark INT DEFAULT(0), is_draft INT, sequence_number INT, call_media_type INT DEFAULT(0), has_joined_hangout INT, last_hangout_event_time INT, draft TEXT, otr_status INT, otr_toggle INT, last_otr_modification_time INT, continuation_token BLOB, continuation_event_timestamp INT, has_oldest_message INT DEFAULT(0), sort_timestamp INT, first_peak_scroll_time INT, first_peak_scroll_to_message_timestamp INT, second_peak_scroll_time INT, second_peak_scroll_to_message_timestamp INT, conversation_hash BLOB, disposition INT DEFAULT(0), has_persistent_events INT DEFAULT(-1), transport_type INT DEFAULT(1), default_transport_phone TEXT, sms_service_center TEXT, is_temporary INT DEFAULT (0), sms_thread_id INT DEFAULT (-1), UNIQUE (conversation_id ));");
      paramSQLiteDatabase.execSQL("update conversations set call_media_type =  ( select case when conversations.call_media_type is null then 0 else conversations.call_media_type end );");
    case 415: 
    case 416: 
    case 417: 
      d(paramSQLiteDatabase);
    case 418: 
      paramSQLiteDatabase.execSQL("CREATE TABLE transport_events (_id INTEGER PRIMARY KEY, upload_key TEXT, message_row_id INT, request_trace_id INT, event_id TEXT, notified INT, was_newest INT, past_watermark INT, dnd INT, in_focused_conversation INT, active_client_state INT, notification_level INT, local_timestamp INT);");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_transport_events_upload_key ON transport_events(upload_key)");
    case 419: 
    case 420: 
      paramSQLiteDatabase.execSQL("alter table messages add column forwarded_mms_url TEXT;");
      paramSQLiteDatabase.execSQL("alter table messages add column forwarded_mms_count INT DEFAULT(0);");
    case 422: 
    case 423: 
    case 424: 
    case 425: 
      paramSQLiteDatabase.execSQL("alter table messages add column attachment_description TEXT;");
      paramSQLiteDatabase.execSQL("alter table messages add column attachment_target_url_description TEXT;");
      paramSQLiteDatabase.execSQL("alter table messages add column attachment_target_url_name TEXT;");
    case 426: 
    case 427: 
    case 428: 
    case 429: 
      paramSQLiteDatabase.execSQL("CREATE TABLE merge_keys (_id INTEGER PRIMARY KEY, conversation_id TEXT, merge_key TEXT, UNIQUE (conversation_id) ON CONFLICT REPLACE, FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE  );");
    case 430: 
    case 431: 
    case 432: 
    case 433: 
    case 434: 
    case 435: 
      a(paramSQLiteDatabase, "_id, conversation_id, conversation_type, latest_message_timestamp, latest_message_expiration_timestamp, metadata_present,notification_level, name, generated_name, snippet_type, snippet_text, snippet_image_url, snippet_author_gaia_id, snippet_author_chat_id, snippet_message_row_id, snippet_status, snippet_new_conversation_name, snippet_participant_keys, previous_latest_timestamp, status, view, inviter_gaia_id, inviter_chat_id, inviter_affinity, is_pending_leave, account_id, is_otr, packed_avatar_urls, self_avatar_url, self_watermark, chat_watermark, hangout_watermark, is_draft, sequence_number, has_joined_hangout, last_hangout_event_time, draft, otr_status, otr_toggle, last_otr_modification_time, continuation_token, continuation_event_timestamp, has_oldest_message, sort_timestamp, first_peak_scroll_time, first_peak_scroll_to_message_timestamp, second_peak_scroll_time, second_peak_scroll_to_message_timestamp, conversation_hash, disposition, has_persistent_events, transport_type, default_transport_phone, sms_service_center, is_temporary, sms_thread_id", "CREATE TABLE conversations (_id INTEGER PRIMARY KEY, conversation_id TEXT, conversation_type INT, latest_message_timestamp INT DEFAULT(0), latest_message_expiration_timestamp INT, metadata_present INT,notification_level INT, name TEXT, generated_name TEXT, snippet_type INT, snippet_text TEXT, snippet_image_url TEXT, snippet_author_gaia_id TEXT, snippet_author_chat_id TEXT, snippet_message_row_id INT, snippet_selector INT, snippet_status INT, snippet_new_conversation_name TEXT, snippet_participant_keys TEXT, previous_latest_timestamp INT, status INT, view INT, inviter_gaia_id TEXT, inviter_chat_id TEXT, inviter_affinity INT, is_pending_leave INT, account_id INT, is_otr INT, packed_avatar_urls TEXT, self_avatar_url TEXT, self_watermark INT DEFAULT(0), chat_watermark INT DEFAULT(0), hangout_watermark INT DEFAULT(0), is_draft INT, sequence_number INT, call_media_type INT DEFAULT(0), has_joined_hangout INT, last_hangout_event_time INT, draft TEXT, otr_status INT, otr_toggle INT, last_otr_modification_time INT, continuation_token BLOB, continuation_event_timestamp INT, has_oldest_message INT DEFAULT(0), sort_timestamp INT, first_peak_scroll_time INT, first_peak_scroll_to_message_timestamp INT, second_peak_scroll_time INT, second_peak_scroll_to_message_timestamp INT, conversation_hash BLOB, disposition INT DEFAULT(0), has_persistent_events INT DEFAULT(-1), transport_type INT DEFAULT(1), default_transport_phone TEXT, sms_service_center TEXT, is_temporary INT DEFAULT (0), sms_thread_id INT DEFAULT (-1), UNIQUE (conversation_id ));");
    case 436: 
    case 437: 
      paramSQLiteDatabase.execSQL(EsProvider.f);
    case 438: 
      paramSQLiteDatabase.execSQL(String.format(Locale.US, "INSERT INTO %s (%s, %s) SELECT %s, 'CONV:'||%s FROM %s;", new Object[] { "merge_keys", "conversation_id", "merge_key", "conversation_id", "conversation_id", "conversations" }));
    case 439: 
    case 440: 
    case 450: 
    case 460: 
    case 470: 
    case 480: 
    case 490: 
      paramSQLiteDatabase.execSQL("alter table conversations add column has_chat_notifications INT DEFAULT(0);");
      paramSQLiteDatabase.execSQL("alter table conversations add column has_video_notifications INT DEFAULT(0);");
      paramSQLiteDatabase.execSQL("update conversations SET has_chat_notifications= ( CASE WHEN latest_message_timestamp>chat_watermark THEN 1 ELSE 0 END);");
      paramSQLiteDatabase.execSQL("update conversations SET has_video_notifications= ( CASE WHEN latest_message_timestamp>hangout_watermark THEN 1 ELSE 0 END);");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_conversations_chat_notifications ON conversations(has_chat_notifications)");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_conversations_video_notifications ON conversations(has_video_notifications)");
    case 500: 
    case 510: 
      paramSQLiteDatabase.execSQL("alter table event_suggestions add column event_id TEXT;");
    case 520: 
      paramSQLiteDatabase.execSQL("alter table transport_events add column client_generated_id INT;");
      paramSQLiteDatabase.execSQL("alter table transport_events add column event_type INT;");
      paramSQLiteDatabase.execSQL("alter table transport_events add column chat_action INT;");
    case 530: 
      paramSQLiteDatabase.execSQL("UPDATE conversations SET has_oldest_message=0 WHERE continuation_event_timestamp=0;");
    case 540: 
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS index_merge_keys_merge_key");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS index_merge_keys_merge_key_NEW");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS index_merge_keys_merge_conversation_id");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_merge_keys_merge_key_NEW ON merge_keys(merge_key)");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_merge_keys_merge_conversation_id ON merge_keys(conversation_id); ");
    case 541: 
      paramSQLiteDatabase.execSQL("alter table conversations add column snippet_sms_type INT;");
      paramSQLiteDatabase.execSQL("UPDATE conversations SET snippet_sms_type = ( SELECT messages.sms_type FROM messages WHERE conversations.snippet_message_row_id = messages._id)");
    case 550: 
    case 560: 
      paramSQLiteDatabase.execSQL("CREATE TABLE dismissed_contacts (_id INTEGER PRIMARY KEY, chat_id TEXT, gaia_id TEXT, name TEXT, profile_photo_url TEXT);");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_dismissed_contacts_gaia_id ON dismissed_contacts(gaia_id)");
    case 570: 
      paramSQLiteDatabase.execSQL("alter table messages add column sending_error INT DEFAULT(0);");
    case 580: 
      paramSQLiteDatabase.execSQL("alter table conversations add column chat_ringtone_uri TEXT;");
      paramSQLiteDatabase.execSQL("alter table conversations add column hangout_ringtone_uri TEXT;");
    case 590: 
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=OFF;");
      paramSQLiteDatabase.execSQL("alter table messages rename to temp");
      paramSQLiteDatabase.execSQL("CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, message_type INT, conversation_id TEXT, author_chat_id TEXT, author_gaia_id TEXT, text TEXT, timestamp INT, status INT, type INT, local_url TEXT, remote_url TEXT, attachment_content_type TEXT, width_pixels INT, height_pixels INT, stream_id TEXT, image_id TEXT, album_id TEXT, latitude DOUBLE, longitude DOUBLE, notification_level INT, expiration_timestamp INT, notified_for_failure INT DEFAULT(0), alert_status INT DEfAULT(0), off_the_record INT DEFAULT(0), transport_type INT NOT NULL DEFAULT(1), transport_phone TEXT, external_ids TEXT, sms_timestamp_sent INT DEFAULT(0), sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, sms_raw_sender TEXT, sms_raw_recipients TEXT, persisted INT DEFAULT(1), sms_message_status INT DEFAULT(-1), sms_type INT DEFAULT(-1), stream_url TEXT, attachment_target_url TEXT, attachment_name TEXT, image_rotation INT DEFAULT (0), new_conversation_name TEXT, participant_keys TEXT, forwarded_mms_url TEXT, forwarded_mms_count INT DEFAULT(0), attachment_description TEXT, attachment_target_url_description TEXT, attachment_target_url_name TEXT, sending_error INT DEFAULT(0), stream_expiration INT, voicemail_length INT DEFAULT (0), FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE,UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);");
      paramSQLiteDatabase.execSQL("insert into messages(_id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, transport_phone, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys, forwarded_mms_url, forwarded_mms_count, attachment_description, attachment_target_url_description, attachment_target_url_name, sending_error) select _id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, transport_phone, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys, forwarded_mms_url, forwarded_mms_count, attachment_description, attachment_target_url_description, attachment_target_url_name, sending_error from temp;");
      paramSQLiteDatabase.execSQL("drop table temp");
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
    case 600: 
    case 610: 
      paramSQLiteDatabase.execSQL("alter table conversations add column wearable_watermark INT DEFAULT(0)");
    case 620: 
      paramSQLiteDatabase.execSQL("CREATE TABLE recent_calls (_id INTEGER PRIMARY KEY, normalized_number TEXT NOT NULL, phone_number TEXT, contact_id TEXT, call_timestamp INT, call_type INT, contact_type INT);");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_recent_calls_sequence ON recent_calls(call_timestamp)");
      paramSQLiteDatabase.execSQL("alter table messages add column call_media_type INT DEFAULT(0);");
      paramSQLiteDatabase.execSQL("alter table conversations add column snippet_voicemail_duration INT DEFAULT(0);");
    case 630: 
    case 640: 
    case 650: 
    case 770: 
      localObject = new ContentValues();
      ((ContentValues)localObject).put("phone_id", null);
      paramSQLiteDatabase.update("participants", (ContentValues)localObject, "participant_type = ? and phone_id = ?", new String[] { String.valueOf(czd.d.ordinal()), "" });
    case 780: 
      a(paramSQLiteDatabase);
    case 790: 
      paramSQLiteDatabase.execSQL("alter table transport_events add column event_reason INT;");
    case 800: 
      paramSQLiteDatabase.execSQL("CREATE TABLE sticker_albums (album_id TEXT NOT NULL, title TEXT, cover_photo_id TEXT, PRIMARY KEY (album_id));");
      paramSQLiteDatabase.execSQL("CREATE TABLE sticker_photos (photo_id TEXT NOT NULL, album_id TEXT NOT NULL, url TEXT NOT NULL, file_name TEXT, PRIMARY KEY (photo_id), FOREIGN KEY (album_id) REFERENCES sticker_albums(album_id) ON DELETE CASCADE)");
    case 810: 
      paramSQLiteDatabase.execSQL("alter table recent_calls add column call_rate TEXT;");
      paramSQLiteDatabase.execSQL("alter table recent_calls add column is_free_call BOOLEAN;");
    case 820: 
      paramSQLiteDatabase.execSQL("update transport_events set notified=3 where notified=4");
    case 830: 
      paramSQLiteDatabase.execSQL("CREATE TABLE presence (_id INTEGER PRIMARY KEY, gaia_id TEXT NOT NULL, reachable INT DEFAULT(0), reachable_time INT DEFAULT(0), available INT DEFAULT(0), available_time INT DEFAULT(0), status_message TEXT, status_message_time INT DEFAULT(0), call_type INT DEFAULT(0), call_type_time INT DEFAULT(0), device_status INT DEFAULT(0), device_status_time INT DEFAULT(0), last_seen INT DEFAULT(0), last_seen_time INT DEFAULT(0), UNIQUE (gaia_id) ON CONFLICT REPLACE);");
    case 840: 
      paramSQLiteDatabase.execSQL("alter table messages add column address TEXT;");
    case 850: 
      paramSQLiteDatabase.execSQL("drop table if exists transport_events;");
      paramSQLiteDatabase.execSQL("drop index if exists index_transport_events_upload_key;");
    case 860: 
      paramSQLiteDatabase.execSQL("alter table messages add column delete_after_read_timetamp INT;");
    case 870: 
    case 880: 
      paramSQLiteDatabase.execSQL("alter table event_suggestions add column matched_message_substring TEXT;");
    case 890: 
      paramSQLiteDatabase.execSQL("update conversations set chat_watermark = wearable_watermark WHERE wearable_watermark > chat_watermark");
      a(paramSQLiteDatabase, "_id,conversation_id,conversation_type,latest_message_timestamp,latest_message_expiration_timestamp,metadata_present,notification_level,name,generated_name,snippet_type,snippet_text,snippet_image_url,snippet_author_gaia_id,snippet_author_chat_id,snippet_message_row_id,snippet_selector,snippet_status,snippet_new_conversation_name,snippet_participant_keys,snippet_sms_type,previous_latest_timestamp,status,view,inviter_gaia_id,inviter_chat_id,inviter_affinity,is_pending_leave,account_id,is_otr,packed_avatar_urls,self_avatar_url,self_watermark,chat_watermark,hangout_watermark,is_draft,sequence_number,call_media_type,has_joined_hangout,has_chat_notifications,has_video_notifications,last_hangout_event_time,draft,otr_status,otr_toggle,last_otr_modification_time,continuation_token,continuation_event_timestamp,has_oldest_message,sort_timestamp,first_peak_scroll_time,first_peak_scroll_to_message_timestamp,second_peak_scroll_time,second_peak_scroll_to_message_timestamp,conversation_hash,disposition,has_persistent_events,transport_type,default_transport_phone,sms_service_center,is_temporary,sms_thread_id,chat_ringtone_uri,hangout_ringtone_uri,snippet_voicemail_duration", "CREATE TABLE conversations (_id INTEGER PRIMARY KEY, conversation_id TEXT, conversation_type INT, latest_message_timestamp INT DEFAULT(0), latest_message_expiration_timestamp INT, metadata_present INT,notification_level INT, name TEXT, generated_name TEXT, snippet_type INT, snippet_text TEXT, snippet_image_url TEXT, snippet_author_gaia_id TEXT, snippet_author_chat_id TEXT, snippet_message_row_id INT, snippet_selector INT, snippet_status INT, snippet_new_conversation_name TEXT, snippet_participant_keys TEXT, snippet_sms_type TEXT, previous_latest_timestamp INT, status INT, view INT, inviter_gaia_id TEXT, inviter_chat_id TEXT, inviter_affinity INT, is_pending_leave INT, account_id INT, is_otr INT, packed_avatar_urls TEXT, self_avatar_url TEXT, self_watermark INT DEFAULT(0), chat_watermark INT DEFAULT(0), hangout_watermark INT DEFAULT(0), is_draft INT, sequence_number INT, call_media_type INT DEFAULT(0), has_joined_hangout INT, has_chat_notifications DEFAULT(0),has_video_notifications DEFAULT(0),last_hangout_event_time INT, draft TEXT, otr_status INT, otr_toggle INT, last_otr_modification_time INT, continuation_token BLOB, continuation_event_timestamp INT, has_oldest_message INT DEFAULT(0), sort_timestamp INT, first_peak_scroll_time INT, first_peak_scroll_to_message_timestamp INT, second_peak_scroll_time INT, second_peak_scroll_to_message_timestamp INT, conversation_hash BLOB, disposition INT DEFAULT(0), has_persistent_events INT DEFAULT(-1), transport_type INT DEFAULT(1), default_transport_phone TEXT, sms_service_center TEXT, is_temporary INT DEFAULT (0), sms_thread_id INT DEFAULT (-1), chat_ringtone_uri TEXT, hangout_ringtone_uri TEXT, snippet_voicemail_duration INT DEFAULT (0), UNIQUE (conversation_id ));");
    case 900: 
      paramSQLiteDatabase.execSQL("alter table sticker_photos add column last_used INT DEFAULT(0);");
      paramSQLiteDatabase.execSQL("alter table sticker_albums add column last_used INT DEFAULT(0);");
    case 910: 
    case 920: 
      localObject = String.valueOf("update messages set status = ");
      j = emc.a.ordinal();
      str = String.valueOf("status");
      paramSQLiteDatabase.execSQL(String.valueOf(localObject).length() + 23 + String.valueOf(str).length() + (String)localObject + j + " WHERE " + str + " = -1");
      localObject = String.valueOf("update conversations set snippet_status = ");
      j = emc.a.ordinal();
      str = String.valueOf("snippet_status");
      paramSQLiteDatabase.execSQL(String.valueOf(localObject).length() + 23 + String.valueOf(str).length() + (String)localObject + j + " WHERE " + str + " = -1");
    case 930: 
      paramSQLiteDatabase.execSQL("alter table conversation_participants add column invitation_status INT DEFAULT(0);");
    case 940: 
      paramSQLiteDatabase.execSQL("alter table messages add column last_seen_timestamp INT DEFAULT(0);");
    case 950: 
    case 960: 
      b(paramSQLiteDatabase);
    case 970: 
      paramSQLiteDatabase.execSQL("alter table participants add column in_users_domain BOOLEAN;");
    case 980: 
      paramSQLiteDatabase.execSQL("drop index if exists index_dismissed_contacts_gaia_id");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_dismissed_contacts_gaia_id ON dismissed_contacts(gaia_id)");
      paramSQLiteDatabase.execSQL("CREATE INDEX index_conversation_participants_view_conversation_id ON conversation_participants(conversation_id)");
    case 990: 
    case 1000: 
    case 1010: 
    case 1020: 
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS merged_contact_details");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS merged_contacts");
      localObject = ctr.a();
      j = 0;
      while (j < 2)
      {
        paramSQLiteDatabase.execSQL(localObject[j]);
        j += 1;
      }
    case 1030: 
      paramSQLiteDatabase.execSQL("CREATE INDEX index_merged_contact_details_parent_key ON merged_contact_details(merged_contact_id)");
    case 1040: 
      paramSQLiteDatabase.execSQL("alter table merged_contacts add column is_frequent INT DEFAULT (0);");
      paramSQLiteDatabase.execSQL("alter table merged_contacts add column is_favorite INT DEFAULT (0);");
      paramSQLiteDatabase.execSQL("alter table merged_contact_details add column lookup_data_display TEXT;");
    case 1050: 
    case 1060: 
      paramSQLiteDatabase.execSQL("alter table messages add column observed_status INT DEFAULT(2);");
    case 1070: 
      paramSQLiteDatabase.execSQL("alter table presence add column location BLOB;");
      paramSQLiteDatabase.execSQL("alter table presence add column location_time INT DEFAULT(0);");
    case 1080: 
      paramSQLiteDatabase.execSQL("alter table messages add column attachment_blob_data BLOB;");
    case 1090: 
      paramSQLiteDatabase.execSQL("alter table conversations add column share_count INT DEFAULT(0);");
    case 1100: 
      paramSQLiteDatabase.execSQL("alter table messages add column attachment_uploading_progress INT DEFAULT(0);");
    case 1110: 
      paramSQLiteDatabase.execSQL("alter table conversations add column has_unobserved TEXT;");
    case 1120: 
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=OFF;");
      paramSQLiteDatabase.execSQL("alter table messages rename to temp");
      paramSQLiteDatabase.execSQL("CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, message_type INT, conversation_id TEXT, author_chat_id TEXT, author_gaia_id TEXT, text TEXT, timestamp INT, delete_after_read_timetamp INT, status INT, type INT, local_url TEXT, remote_url TEXT, attachment_content_type TEXT, width_pixels INT, height_pixels INT, stream_id TEXT, image_id TEXT, album_id TEXT, latitude DOUBLE, longitude DOUBLE, address ADDRESS, notification_level INT, expiration_timestamp INT, notified_for_failure INT DEFAULT(0), off_the_record INT DEFAULT(0), transport_type INT NOT NULL DEFAULT(1), transport_phone TEXT, external_ids TEXT, sms_timestamp_sent INT DEFAULT(0), sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, sms_raw_sender TEXT, sms_raw_recipients TEXT, persisted INT DEFAULT(1), sms_message_status INT DEFAULT(-1), sms_type INT DEFAULT(-1), stream_url TEXT, attachment_target_url TEXT, attachment_name TEXT, image_rotation INT DEFAULT (0), new_conversation_name TEXT, participant_keys TEXT, forwarded_mms_url TEXT, forwarded_mms_count INT DEFAULT(0), attachment_description TEXT, attachment_target_url_description TEXT, attachment_target_url_name TEXT, attachment_blob_data BLOB,attachment_uploading_progress INT DEFAULT(0), sending_error INT DEFAULT(0), stream_expiration INT, voicemail_length INT DEFAULT (0), call_media_type INT DEFAULT(0), last_seen_timestamp INT DEFAULT(0), observed_status INT DEFAULT(2), FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE,UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);");
      paramSQLiteDatabase.execSQL("insert into messages(message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, delete_after_read_timetamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, address, notification_level, expiration_timestamp, notified_for_failure, off_the_record, transport_type, transport_phone, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, stream_url, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys, forwarded_mms_url, forwarded_mms_count, attachment_description, attachment_target_url_description, attachment_target_url_name, attachment_blob_data,attachment_uploading_progress, sending_error, stream_expiration, voicemail_length, call_media_type, last_seen_timestamp, observed_status) select message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, delete_after_read_timetamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, address, notification_level, expiration_timestamp, notified_for_failure, off_the_record, transport_type, transport_phone, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, stream_url, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys, forwarded_mms_url, forwarded_mms_count, attachment_description, attachment_target_url_description, attachment_target_url_name, attachment_blob_data,attachment_uploading_progress, sending_error, stream_expiration, voicemail_length, call_media_type, last_seen_timestamp, observed_status from temp;");
      paramSQLiteDatabase.execSQL("drop table temp");
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
    case 1130: 
      paramSQLiteDatabase.execSQL("alter table conversations add column last_share_timestamp INT DEFAULT(0);");
    case 1140: 
      paramSQLiteDatabase.execSQL("alter table messages add column receive_type INT DEFAULT(0);");
      paramSQLiteDatabase.execSQL("alter table messages add column init_timestamp INT DEFAULT(0);");
      paramSQLiteDatabase.execSQL("alter table messages add column in_app_msg_latency INT DEFAULT(0);");
      paramSQLiteDatabase.execSQL("alter table messages add column notified INT DEFAULT(0);");
    case 1150: 
    case 2147483647: 
      e(paramSQLiteDatabase);
      bfz.a(new bfz(b, new bha(b, paramSQLiteDatabase), h), null);
      PreferenceManager.getDefaultSharedPreferences(b).edit().putInt("last_database_upgrade_version", paramInt2).commit();
    }
    for (j = 1;; j = 0)
    {
      if (j == 0) {
        break label3392;
      }
      ezi.c("Babel", 52 + "db upgrade from " + paramInt1 + " to " + paramInt2 + " succeeded", new Object[0]);
      return;
      int m = PreferenceManager.getDefaultSharedPreferences(b).getInt("last_database_upgrade_version", 0);
      j = k;
      if (m != paramInt2) {
        break;
      }
      j = 0;
      break;
      label3359:
      PreferenceManager.getDefaultSharedPreferences(b).edit().putInt("last_database_upgrade_version", paramInt2).commit();
    }
    label3392:
    ezi.d("Babel", 57 + "db upgrade failed; recreating: " + paramInt1 + " -> " + paramInt2, new Object[0]);
    f(paramSQLiteDatabase);
  }
  
  public String toString()
  {
    int j = h;
    String str = i;
    return String.valueOf(str).length() + 25 + "index: " + j + " name: " + str;
  }
}

/* Location:
 * Qualified Name:     bgw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */