import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class eez
  extends SQLiteOpenHelper
  implements cwm
{
  private static final boolean a = false;
  private final long b;
  private SQLiteDatabase c = getWritableDatabase();
  
  static
  {
    imx localimx = ezi.p;
  }
  
  eez(Context paramContext)
  {
    super(paramContext, "message_store.db", null, 60);
    b = ((fak)ilh.a(paramContext, fak.class)).d();
    ezi.a("Babel_RequestWriter", "RequestWriterDatabase init", new Object[0]);
  }
  
  public static eez a(Context paramContext)
  {
    return (eez)ilh.a(paramContext, eez.class);
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS messages;");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS requests;");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS responses;");
    paramSQLiteDatabase.execSQL("CREATE TABLE requests (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, version_code INT NOT NULL,queue_name TEXT NOT NULL,account INT NOT NULL,server_request BLOB NOT NULL,fail_count INT NOT NULL,server_fail_count INT NOT NULL,server_target_retry INT NOT NULL,creation_time INT NOT NULL);");
    paramSQLiteDatabase.execSQL("CREATE TABLE responses (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, version_code INT NOT NULL,creation_time INT NOT NULL,server_response BLOB NOT NULL);");
    paramSQLiteDatabase = new File(aal.f());
    if (paramSQLiteDatabase.exists())
    {
      paramSQLiteDatabase = paramSQLiteDatabase.listFiles();
      int j = paramSQLiteDatabase.length;
      int i = 0;
      while (i < j)
      {
        aal.a(paramSQLiteDatabase[i].getName(), 0, 0);
        i += 1;
      }
    }
  }
  
  private void a(String paramString, long paramLong)
  {
    if (a) {
      new StringBuilder(String.valueOf(paramString).length() + 39).append("Deleting row ").append(paramLong).append(" from ").append(paramString);
    }
    String str = Long.toString(paramLong);
    int i = c.delete(paramString, "_id=?", new String[] { str });
    if (i != 1) {
      ezi.d("Babel_RequestWriter", 54 + "Expected to delete 1 row but deleted " + i + " rows.", new Object[0]);
    }
  }
  
  /* Error */
  private boolean a(String[] paramArrayOfString, List<cwf> paramList)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +146 -> 147
    //   4: aconst_null
    //   5: astore 8
    //   7: aload_0
    //   8: getfield 36	eez:c	Landroid/database/sqlite/SQLiteDatabase;
    //   11: ldc -101
    //   13: getstatic 160	efa:a	[Ljava/lang/String;
    //   16: aload 8
    //   18: aload_1
    //   19: aconst_null
    //   20: aconst_null
    //   21: ldc -94
    //   23: invokevirtual 166	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   26: astore_1
    //   27: getstatic 22	eez:a	Z
    //   30: ifeq +34 -> 64
    //   33: aload_1
    //   34: invokeinterface 171 1 0
    //   39: istore_3
    //   40: new 103	java/lang/StringBuilder
    //   43: dup
    //   44: bipush 29
    //   46: invokespecial 116	java/lang/StringBuilder:<init>	(I)V
    //   49: ldc -83
    //   51: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: iload_3
    //   55: invokevirtual 144	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   58: ldc -81
    //   60: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: pop
    //   64: aload_1
    //   65: invokeinterface 178 1 0
    //   70: ifeq +252 -> 322
    //   73: aload_1
    //   74: iconst_1
    //   75: invokeinterface 182 2 0
    //   80: lstore 4
    //   82: lload 4
    //   84: aload_0
    //   85: getfield 49	eez:b	J
    //   88: lcmp
    //   89: ifge +65 -> 154
    //   92: aload_0
    //   93: getfield 49	eez:b	J
    //   96: lstore 6
    //   98: ldc 51
    //   100: new 103	java/lang/StringBuilder
    //   103: dup
    //   104: bipush 100
    //   106: invokespecial 116	java/lang/StringBuilder:<init>	(I)V
    //   109: ldc -72
    //   111: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: lload 4
    //   116: invokevirtual 125	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   119: ldc -70
    //   121: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: lload 6
    //   126: invokevirtual 125	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   129: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: iconst_0
    //   133: anewarray 55	java/lang/Object
    //   136: invokestatic 150	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   139: aload_1
    //   140: invokeinterface 189 1 0
    //   145: iconst_0
    //   146: ireturn
    //   147: ldc -65
    //   149: astore 8
    //   151: goto -144 -> 7
    //   154: aload_1
    //   155: iconst_0
    //   156: invokeinterface 182 2 0
    //   161: lstore 4
    //   163: getstatic 22	eez:a	Z
    //   166: ifeq +23 -> 189
    //   169: new 103	java/lang/StringBuilder
    //   172: dup
    //   173: bipush 33
    //   175: invokespecial 116	java/lang/StringBuilder:<init>	(I)V
    //   178: ldc -63
    //   180: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: lload 4
    //   185: invokevirtual 125	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   188: pop
    //   189: aload_1
    //   190: iconst_4
    //   191: invokeinterface 197 2 0
    //   196: invokestatic 202	efc:a	([B)Lcwi;
    //   199: astore 8
    //   201: new 204	cwf
    //   204: dup
    //   205: lload 4
    //   207: aload_1
    //   208: iconst_2
    //   209: invokeinterface 208 2 0
    //   214: aload_1
    //   215: iconst_3
    //   216: invokeinterface 212 2 0
    //   221: aload_1
    //   222: iconst_5
    //   223: invokeinterface 212 2 0
    //   228: aload_1
    //   229: bipush 6
    //   231: invokeinterface 212 2 0
    //   236: aload_1
    //   237: bipush 7
    //   239: invokeinterface 182 2 0
    //   244: aload 8
    //   246: invokespecial 215	cwf:<init>	(JLjava/lang/String;IIIJLcwi;)V
    //   249: astore 8
    //   251: getstatic 22	eez:a	Z
    //   254: ifeq +39 -> 293
    //   257: aload 8
    //   259: invokestatic 109	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   262: astore 9
    //   264: new 103	java/lang/StringBuilder
    //   267: dup
    //   268: aload 9
    //   270: invokestatic 109	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   273: invokevirtual 113	java/lang/String:length	()I
    //   276: bipush 25
    //   278: iadd
    //   279: invokespecial 116	java/lang/StringBuilder:<init>	(I)V
    //   282: ldc -39
    //   284: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: aload 9
    //   289: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: pop
    //   293: aload_2
    //   294: aload 8
    //   296: invokeinterface 223 2 0
    //   301: pop
    //   302: goto -238 -> 64
    //   305: astore_2
    //   306: ldc 51
    //   308: ldc -31
    //   310: aload_2
    //   311: invokestatic 228	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   314: aload_1
    //   315: invokeinterface 189 1 0
    //   320: iconst_0
    //   321: ireturn
    //   322: aload_1
    //   323: invokeinterface 189 1 0
    //   328: iconst_1
    //   329: ireturn
    //   330: astore_2
    //   331: aload_1
    //   332: invokeinterface 189 1 0
    //   337: aload_2
    //   338: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	339	0	this	eez
    //   0	339	1	paramArrayOfString	String[]
    //   0	339	2	paramList	List<cwf>
    //   39	16	3	i	int
    //   80	126	4	l1	long
    //   96	29	6	l2	long
    //   5	290	8	localObject	Object
    //   262	26	9	str	String
    // Exception table:
    //   from	to	target	type
    //   27	64	305	java/lang/Exception
    //   64	139	305	java/lang/Exception
    //   154	189	305	java/lang/Exception
    //   189	293	305	java/lang/Exception
    //   293	302	305	java/lang/Exception
    //   27	64	330	finally
    //   64	139	330	finally
    //   154	189	330	finally
    //   189	293	330	finally
    //   293	302	330	finally
    //   306	314	330	finally
  }
  
  public long a(dqf paramdqf)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("version_code", Long.valueOf(b));
    localContentValues.put("creation_time", Long.valueOf(System.currentTimeMillis()));
    localContentValues.put("server_response", paramdqf.f());
    long l = c.insert("responses", null, localContentValues);
    hbs.b("Database insert failed", Long.valueOf(l), Integer.valueOf(-1));
    return l;
  }
  
  public void a(long paramLong)
  {
    a("requests", paramLong);
  }
  
  public void a(cwf paramcwf)
  {
    ContentValues localContentValues = new ContentValues();
    paramcwf = a;
    localContentValues.put("fail_count", Integer.valueOf(d));
    localContentValues.put("server_fail_count", Integer.valueOf(e));
    localContentValues.put("server_target_retry", Long.valueOf(f));
    long l = a;
    c.update("requests", localContentValues, "_id=?", new String[] { String.valueOf(l) });
  }
  
  void a(eer parameer)
  {
    Object localObject = new ArrayList();
    int i;
    boolean bool;
    if (!a(null, (List)localObject))
    {
      i = c.delete("requests", "1", null);
      if (i > 0)
      {
        bool = true;
        hbs.a("Expected condition to be true", bool);
        ezi.d("Babel_RequestWriter", 38 + "Dropped " + i + " pending request(s)", new Object[0]);
        aal.a(null, 1982);
        RealTimeChatService.f();
      }
    }
    for (;;)
    {
      return;
      bool = false;
      break;
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        cwf localcwf = (cwf)((Iterator)localObject).next();
        if (dvd.e(a.c) == null)
        {
          i = a.c;
          new StringBuilder(51).append("Ignoring message restore for account id ").append(i);
        }
        else
        {
          parameer.a(localcwf);
        }
      }
    }
  }
  
  public long b(cwf paramcwf)
  {
    int i = a.c;
    cwk localcwk = a;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("version_code", Long.valueOf(b));
    localContentValues.put("account", Integer.valueOf(i));
    localContentValues.put("queue_name", b);
    localContentValues.put("server_request", paramcwf.h());
    localContentValues.put("creation_time", Long.valueOf(g));
    localContentValues.put("fail_count", Integer.valueOf(d));
    localContentValues.put("server_fail_count", Integer.valueOf(e));
    localContentValues.put("server_target_retry", Long.valueOf(f));
    try
    {
      a.a = c.insert("requests", null, localContentValues);
      if (a)
      {
        l = a.a;
        new StringBuilder(34).append("Wrote request ").append(l);
      }
      long l = a.a;
      return l;
    }
    catch (SQLiteConstraintException paramcwf)
    {
      ezi.d("Babel_RequestWriter", "caught constraint exception ", paramcwf);
    }
    return 0L;
  }
  
  public cwf b(long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    if ((a(new String[] { Long.toString(paramLong) }, localArrayList)) && (localArrayList.size() > 0)) {
      return (cwf)localArrayList.get(0);
    }
    return null;
  }
  
  public dqf c(long paramLong)
  {
    Cursor localCursor = c.query("responses", efb.a, "_id = ?", new String[] { Long.toString(paramLong) }, null, null, null);
    try
    {
      int i = localCursor.getCount();
      Object localObject1 = 48 + "Did not find row for row id " + paramLong;
      if (i == 0)
      {
        bool = true;
        hbs.b((String)localObject1, bool);
        localObject1 = 54 + "Found " + i + " rows for row id " + paramLong;
        if (i <= 1) {
          break label197;
        }
      }
      label197:
      for (boolean bool = true;; bool = false)
      {
        hbs.b((String)localObject1, bool);
        if (a) {
          new StringBuilder(37).append("Getting response ").append(paramLong);
        }
        localCursor.moveToNext();
        if (localCursor.getInt(1) == b) {
          break label203;
        }
        d(paramLong);
        return null;
        bool = false;
        break;
      }
      label203:
      localObject1 = efc.b(localCursor.getBlob(3));
      return (dqf)localObject1;
    }
    finally
    {
      localCursor.close();
    }
  }
  
  public void d(long paramLong)
  {
    a("responses", paramLong);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE requests (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, version_code INT NOT NULL,queue_name TEXT NOT NULL,account INT NOT NULL,server_request BLOB NOT NULL,fail_count INT NOT NULL,server_fail_count INT NOT NULL,server_target_retry INT NOT NULL,creation_time INT NOT NULL);");
    paramSQLiteDatabase.execSQL("CREATE TABLE responses (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, version_code INT NOT NULL,creation_time INT NOT NULL,server_response BLOB NOT NULL);");
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    a(paramSQLiteDatabase);
    RealTimeChatService.f();
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt1 < 60)
    {
      a(paramSQLiteDatabase);
      RealTimeChatService.f();
    }
  }
}

/* Location:
 * Qualified Name:     eez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */