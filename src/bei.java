import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public class bei
  extends SQLiteOpenHelper
{
  public static final String[] a = { "type", "mmsc", "mmsproxy", "mmsport", "_id", "current", "numeric", "name", "mcc", "mnc", "apn" };
  public static final String[] b = { "name", "mcc", "mnc", "apn", "user", "server", "password", "proxy", "port", "mmsc", "mmsproxy", "mmsport", "authtype", "type", "protocol", "roaming_protocol", "carrier_enabled", "bearer", "mvno_type", "mvno_match_data", "current" };
  public static final String[] c = { "key", "value", "type" };
  private static final boolean d;
  private static final String[] f = { "_id" };
  private SQLiteDatabase e = getWritableDatabase();
  
  static
  {
    imx localimx = ezi.d;
    d = false;
  }
  
  bei(Context paramContext)
  {
    super(paramContext, "apn.db", null, 2);
    ezi.a("Babel_ApnDb", "ApnDatabase constructor", new Object[0]);
  }
  
  private static ContentValues a(Cursor paramCursor)
  {
    int j = paramCursor.getColumnCount();
    if (j > 0)
    {
      ContentValues localContentValues2 = new ContentValues();
      int i = 0;
      for (;;)
      {
        localContentValues1 = localContentValues2;
        if (i >= j) {
          break;
        }
        localContentValues2.put(paramCursor.getColumnName(i), paramCursor.getString(i));
        i += 1;
      }
    }
    ContentValues localContentValues1 = null;
    return localContentValues1;
  }
  
  public static SQLiteDatabase a(Context paramContext)
  {
    return ae;
  }
  
  public static List<ContentValues> a(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      Cursor localCursor = paramSQLiteDatabase.query("apn", b, "current NOT NULL", null, null, null, null);
      if (localCursor != null)
      {
        ArrayList localArrayList = new ArrayList();
        for (;;)
        {
          paramSQLiteDatabase = localArrayList;
          if (!localCursor.moveToNext()) {
            break;
          }
          paramSQLiteDatabase = a(localCursor);
          if (paramSQLiteDatabase != null) {
            localArrayList.add(paramSQLiteDatabase);
          }
        }
      }
      return paramSQLiteDatabase;
    }
    catch (SQLiteException paramSQLiteDatabase)
    {
      paramSQLiteDatabase = null;
    }
  }
  
  /* Error */
  public static void a(SQLiteDatabase paramSQLiteDatabase, List<ContentValues> paramList)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +12 -> 13
    //   4: aload_1
    //   5: invokeinterface 165 1 0
    //   10: ifgt +4 -> 14
    //   13: return
    //   14: aload_1
    //   15: invokeinterface 169 1 0
    //   20: astore 4
    //   22: aload 4
    //   24: invokeinterface 174 1 0
    //   29: ifeq -16 -> 13
    //   32: aload 4
    //   34: invokeinterface 178 1 0
    //   39: checkcast 114	android/content/ContentValues
    //   42: astore_3
    //   43: new 180	java/lang/StringBuilder
    //   46: dup
    //   47: invokespecial 181	java/lang/StringBuilder:<init>	()V
    //   50: astore_1
    //   51: new 146	java/util/ArrayList
    //   54: dup
    //   55: invokespecial 147	java/util/ArrayList:<init>	()V
    //   58: astore_2
    //   59: aload_3
    //   60: invokevirtual 185	android/content/ContentValues:keySet	()Ljava/util/Set;
    //   63: invokeinterface 188 1 0
    //   68: astore 5
    //   70: aload 5
    //   72: invokeinterface 174 1 0
    //   77: ifeq +92 -> 169
    //   80: aload 5
    //   82: invokeinterface 178 1 0
    //   87: checkcast 24	java/lang/String
    //   90: astore 6
    //   92: ldc 36
    //   94: aload 6
    //   96: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   99: ifne -29 -> 70
    //   102: aload_1
    //   103: invokevirtual 194	java/lang/StringBuilder:length	()I
    //   106: ifle +10 -> 116
    //   109: aload_1
    //   110: ldc -60
    //   112: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: pop
    //   116: aload_3
    //   117: aload 6
    //   119: invokevirtual 204	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   122: astore 7
    //   124: aload 7
    //   126: invokestatic 210	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   129: ifeq +18 -> 147
    //   132: aload_1
    //   133: aload 6
    //   135: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: ldc -44
    //   140: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: pop
    //   144: goto -74 -> 70
    //   147: aload_1
    //   148: aload 6
    //   150: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: ldc -42
    //   155: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: pop
    //   159: aload_2
    //   160: aload 7
    //   162: invokevirtual 215	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   165: pop
    //   166: goto -96 -> 70
    //   169: aload_0
    //   170: ldc 46
    //   172: getstatic 82	bei:f	[Ljava/lang/String;
    //   175: aload_1
    //   176: invokevirtual 219	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   179: aload_2
    //   180: aload_2
    //   181: invokevirtual 220	java/util/ArrayList:size	()I
    //   184: anewarray 24	java/lang/String
    //   187: invokevirtual 224	java/util/ArrayList:toArray	([Ljava/lang/Object;)[Ljava/lang/Object;
    //   190: checkcast 225	[Ljava/lang/String;
    //   193: aconst_null
    //   194: aconst_null
    //   195: aconst_null
    //   196: invokevirtual 144	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   199: astore_2
    //   200: aload_2
    //   201: ifnull +53 -> 254
    //   204: aload_2
    //   205: astore_1
    //   206: aload_2
    //   207: invokeinterface 228 1 0
    //   212: ifeq +42 -> 254
    //   215: aload_2
    //   216: astore_1
    //   217: aload_0
    //   218: ldc 46
    //   220: aload_3
    //   221: ldc -26
    //   223: iconst_1
    //   224: anewarray 24	java/lang/String
    //   227: dup
    //   228: iconst_0
    //   229: aload_2
    //   230: iconst_0
    //   231: invokeinterface 123 2 0
    //   236: aastore
    //   237: invokevirtual 234	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   240: pop
    //   241: aload_2
    //   242: ifnull -220 -> 22
    //   245: aload_2
    //   246: invokeinterface 237 1 0
    //   251: goto -229 -> 22
    //   254: aload_2
    //   255: astore_1
    //   256: aload_3
    //   257: ldc 38
    //   259: aload_3
    //   260: ldc 42
    //   262: invokevirtual 204	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   265: aload_3
    //   266: ldc 44
    //   268: invokevirtual 204	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   271: invokestatic 242	eol:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   274: invokevirtual 127	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   277: aload_2
    //   278: astore_1
    //   279: aload_0
    //   280: ldc 46
    //   282: aconst_null
    //   283: aload_3
    //   284: invokevirtual 246	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   287: pop2
    //   288: goto -47 -> 241
    //   291: astore_3
    //   292: aload_2
    //   293: astore_1
    //   294: aload_3
    //   295: invokestatic 250	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   298: astore 5
    //   300: aload_2
    //   301: astore_1
    //   302: ldc 98
    //   304: new 180	java/lang/StringBuilder
    //   307: dup
    //   308: aload 5
    //   310: invokestatic 250	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   313: invokevirtual 251	java/lang/String:length	()I
    //   316: bipush 50
    //   318: iadd
    //   319: invokespecial 254	java/lang/StringBuilder:<init>	(I)V
    //   322: ldc_w 256
    //   325: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   328: aload 5
    //   330: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   333: invokevirtual 219	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   336: aload_3
    //   337: invokestatic 259	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   340: aload_2
    //   341: ifnull -319 -> 22
    //   344: aload_2
    //   345: invokeinterface 237 1 0
    //   350: goto -328 -> 22
    //   353: astore_0
    //   354: aconst_null
    //   355: astore_1
    //   356: aload_1
    //   357: ifnull +9 -> 366
    //   360: aload_1
    //   361: invokeinterface 237 1 0
    //   366: aload_0
    //   367: athrow
    //   368: astore_0
    //   369: goto -13 -> 356
    //   372: astore_3
    //   373: aconst_null
    //   374: astore_2
    //   375: goto -83 -> 292
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	378	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	378	1	paramList	List<ContentValues>
    //   58	317	2	localObject1	Object
    //   42	242	3	localContentValues	ContentValues
    //   291	46	3	localSQLiteException1	SQLiteException
    //   372	1	3	localSQLiteException2	SQLiteException
    //   20	13	4	localIterator	java.util.Iterator
    //   68	261	5	localObject2	Object
    //   90	59	6	str1	String
    //   122	39	7	str2	String
    // Exception table:
    //   from	to	target	type
    //   206	215	291	android/database/sqlite/SQLiteException
    //   217	241	291	android/database/sqlite/SQLiteException
    //   256	277	291	android/database/sqlite/SQLiteException
    //   279	288	291	android/database/sqlite/SQLiteException
    //   169	200	353	finally
    //   206	215	368	finally
    //   217	241	368	finally
    //   256	277	368	finally
    //   279	288	368	finally
    //   294	300	368	finally
    //   302	340	368	finally
    //   169	200	372	android/database/sqlite/SQLiteException
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.beginTransaction();
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS apn");
    paramSQLiteDatabase.execSQL("CREATE TABLE apn(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,authtype INTEGER,type TEXT,current INTEGER,protocol TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,bearer INTEGER,mvno_type TEXT,mvno_match_data TEXT);");
    paramSQLiteDatabase.endTransaction();
    f(paramSQLiteDatabase);
  }
  
  public static void c(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.beginTransaction();
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS apn");
    paramSQLiteDatabase.execSQL("CREATE TABLE apn(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,authtype INTEGER,type TEXT,current INTEGER,protocol TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,bearer INTEGER,mvno_type TEXT,mvno_match_data TEXT);");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS mmsconfig");
    paramSQLiteDatabase.execSQL("CREATE TABLE mmsconfig(_id INTEGER PRIMARY KEY,numeric TEXT,key TEXT,value TEXT,type TEXT);");
    paramSQLiteDatabase.endTransaction();
  }
  
  public static void d(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS mmsconfig");
  }
  
  private static void e(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS apn;");
    paramSQLiteDatabase.execSQL("CREATE TABLE apn(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,authtype INTEGER,type TEXT,current INTEGER,protocol TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,bearer INTEGER,mvno_type TEXT,mvno_match_data TEXT);");
    f(paramSQLiteDatabase);
  }
  
  private static void f(SQLiteDatabase paramSQLiteDatabase)
  {
    XmlResourceParser localXmlResourceParser = aal.oJ.getResources().getXml(aal.hW);
    try
    {
      emp localemp = emp.a(localXmlResourceParser);
      localemp.a(new bej(paramSQLiteDatabase));
      localemp.a();
      return;
    }
    catch (Exception paramSQLiteDatabase)
    {
      Log.e("Babel_ApnDb", "Got exception while loading APN database.", paramSQLiteDatabase);
      return;
    }
    finally
    {
      localXmlResourceParser.close();
    }
  }
  
  public void close()
  {
    super.close();
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    e(paramSQLiteDatabase);
    Object localObject = dvd.l();
    if (localObject == null) {
      return;
    }
    localObject = bgw.a(aal.oJ, ((bfd)localObject).g()).b();
    a(paramSQLiteDatabase, a(((bha)localObject).e()));
    ((bha)localObject).a("DROP TABLE IF EXISTS apn;");
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    e(paramSQLiteDatabase);
  }
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    super.onOpen(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    e(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     bei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */