import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.database.sqlite.SQLiteStatement;
import java.util.Locale;
import java.util.Stack;
import java.util.regex.Pattern;

public final class bha
{
  private static bha a;
  private static ThreadLocal<Stack<bhc>> b = new bhb();
  private static String[] c = { "took %d ms to %s", "   took %d ms to %s", "      took %d ms to %s" };
  private final SQLiteDatabase d;
  private final Context e;
  
  public bha(Context paramContext, SQLiteDatabase paramSQLiteDatabase)
  {
    e = paramContext;
    d = paramSQLiteDatabase;
  }
  
  public static bha a(Context paramContext, SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      if ((a == null) || (ad != paramSQLiteDatabase)) {
        a = new bha(paramContext, paramSQLiteDatabase);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  private static void a(long paramLong, String paramString)
  {
    int i = ((Stack)b.get()).size();
    paramLong = System.currentTimeMillis() - paramLong;
    if (paramLong > 250L) {
      String.format(Locale.US, c[Math.min(c.length - 1, i)], new Object[] { Long.valueOf(paramLong), paramString });
    }
  }
  
  private void a(SQLiteQueryBuilder paramSQLiteQueryBuilder, SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramArrayOfString = paramSQLiteQueryBuilder.buildQuery(paramArrayOfString, paramString1, paramString2, null, paramString3, paramString4);
    if (!Pattern.matches(f(), paramArrayOfString)) {}
    for (;;)
    {
      return;
      paramSQLiteQueryBuilder = String.valueOf(paramArrayOfString);
      if (paramSQLiteQueryBuilder.length() != 0)
      {
        paramSQLiteQueryBuilder = "explain query plan ".concat(paramSQLiteQueryBuilder);
        label46:
        paramSQLiteQueryBuilder = paramSQLiteDatabase.rawQuery(paramSQLiteQueryBuilder, null);
        if (paramSQLiteQueryBuilder == null) {}
      }
      try
      {
        if (paramSQLiteQueryBuilder.moveToFirst())
        {
          int i = paramSQLiteQueryBuilder.getColumnIndex("detail");
          paramSQLiteDatabase = new StringBuilder();
          do
          {
            paramSQLiteDatabase.append(paramSQLiteQueryBuilder.getString(i));
            paramSQLiteDatabase.append("\n");
          } while (paramSQLiteQueryBuilder.moveToNext());
          if (paramSQLiteDatabase.length() > 0) {
            paramSQLiteDatabase.setLength(paramSQLiteDatabase.length() - 1);
          }
          paramSQLiteDatabase = String.valueOf(paramSQLiteDatabase.toString());
          new StringBuilder(String.valueOf(paramArrayOfString).length() + 20 + String.valueOf(paramSQLiteDatabase).length()).append("for query ").append(paramArrayOfString).append("\nplan is: ").append(paramSQLiteDatabase);
        }
        return;
        paramSQLiteQueryBuilder = new String("explain query plan ");
        break label46;
      }
      catch (Exception paramSQLiteDatabase)
      {
        ezi.c("Babel", "Query plan failed ", paramSQLiteDatabase);
        return;
      }
      finally
      {
        if (paramSQLiteQueryBuilder != null) {
          paramSQLiteQueryBuilder.close();
        }
      }
    }
  }
  
  private String f()
  {
    return ((bdp)ilh.a(e, bdp.class)).a("babel_query_plan_regexp", null);
  }
  
  public int a(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    long l = 0L;
    if (bgw.a) {
      l = System.currentTimeMillis();
    }
    int i = d.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
    if (bgw.a) {
      a(l, String.format(Locale.US, "update %s with %s ==> %d", new Object[] { paramString1, paramString2, Integer.valueOf(i) }));
    }
    return i;
  }
  
  public int a(String paramString1, String paramString2)
  {
    long l = 0L;
    if (bgw.a) {
      l = System.currentTimeMillis();
    }
    SQLiteStatement localSQLiteStatement = d.compileStatement(paramString1);
    if (paramString2 != null) {
      localSQLiteStatement.bindString(1, paramString2);
    }
    int i = localSQLiteStatement.executeUpdateDelete();
    if (bgw.a) {
      a(l, String.format(Locale.US, "execSQLUpdateDelete %s", new Object[] { paramString1 }));
    }
    return i;
  }
  
  public int a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    long l = 0L;
    if (bgw.a) {
      l = System.currentTimeMillis();
    }
    int i = d.delete(paramString1, paramString2, paramArrayOfString);
    if (bgw.a) {
      a(l, String.format(Locale.US, "delete from %s with %s ==> %d", new Object[] { paramString1, paramString2, Integer.valueOf(i) }));
    }
    return i;
  }
  
  public long a(String paramString, ContentValues paramContentValues)
  {
    long l1 = 0L;
    if (bgw.a) {
      l1 = System.currentTimeMillis();
    }
    long l2 = d.insert(paramString, null, paramContentValues);
    if (bgw.a) {
      a(l1, String.format(Locale.US, "insert to %s", new Object[] { paramString }));
    }
    return l2;
  }
  
  public Cursor a(SQLiteQueryBuilder paramSQLiteQueryBuilder, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3)
  {
    if (f() != null) {
      a(paramSQLiteQueryBuilder, d, paramArrayOfString1, paramString1, null, paramString2, paramString3);
    }
    if (bgw.a) {}
    for (long l = System.currentTimeMillis();; l = 0L)
    {
      paramArrayOfString1 = paramSQLiteQueryBuilder.query(d, paramArrayOfString1, paramString1, paramArrayOfString2, null, null, paramString2, paramString3);
      if (bgw.a) {
        a(l, String.format(Locale.US, "query %s with %s ==> %d", new Object[] { paramSQLiteQueryBuilder.getTables(), paramString1, Integer.valueOf(paramArrayOfString1.getCount()) }));
      }
      return paramArrayOfString1;
    }
  }
  
  public Cursor a(String paramString, String[] paramArrayOfString)
  {
    long l = 0L;
    if (bgw.a) {
      l = System.currentTimeMillis();
    }
    paramArrayOfString = d.rawQuery(paramString, paramArrayOfString);
    if (bgw.a) {
      a(l, String.format(Locale.US, "rawQuery %s ==> %d", new Object[] { paramString, Integer.valueOf(paramArrayOfString.getCount()) }));
    }
    return paramArrayOfString;
  }
  
  public Cursor a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3)
  {
    return a(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, null, null, paramString3, null);
  }
  
  public Cursor a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    if (f() != null)
    {
      paramString3 = new SQLiteQueryBuilder();
      paramString3.setTables(paramString1);
      a(paramString3, d, paramArrayOfString1, paramString2, null, paramString5, paramString6);
    }
    if (bgw.a) {}
    for (long l = System.currentTimeMillis();; l = 0L)
    {
      paramArrayOfString1 = d.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, null, null, paramString5, paramString6);
      if (bgw.a) {
        a(l, String.format(Locale.US, "query %s with %s ==> %d", new Object[] { paramString1, paramString2, Integer.valueOf(paramArrayOfString1.getCount()) }));
      }
      return paramArrayOfString1;
    }
  }
  
  public void a()
  {
    long l = System.currentTimeMillis();
    if (bgw.a) {
      a(l, ">>> beginTransaction");
    }
    bhc localbhc = new bhc();
    a = l;
    ((Stack)b.get()).push(localbhc);
    d.beginTransaction();
  }
  
  public void a(String paramString)
  {
    long l = 0L;
    if (bgw.a) {
      l = System.currentTimeMillis();
    }
    d.execSQL(paramString);
    if (bgw.a) {
      a(l, String.format(Locale.US, "execSQL %s", new Object[] { paramString }));
    }
  }
  
  public void a(String paramString, Object[] paramArrayOfObject)
  {
    long l = 0L;
    if (bgw.a) {
      l = System.currentTimeMillis();
    }
    d.execSQL(paramString, paramArrayOfObject);
    if (bgw.a) {
      a(l, String.format(Locale.US, "execSQL %s", new Object[] { paramString }));
    }
  }
  
  public void a(Locale paramLocale)
  {
    d.setLocale(paramLocale);
  }
  
  public void b()
  {
    bgetpeekb = true;
    d.setTransactionSuccessful();
  }
  
  public void c()
  {
    long l2 = 0L;
    bhc localbhc = (bhc)((Stack)b.get()).pop();
    if (!b)
    {
      ezi.d("Babel", "endTransaction without setting successful", new Object[0]);
      StackTraceElement[] arrayOfStackTraceElement = new Exception().getStackTrace();
      int j = arrayOfStackTraceElement.length;
      int i = 0;
      if (i < j)
      {
        String str = String.valueOf(arrayOfStackTraceElement[i].toString());
        if (str.length() != 0) {}
        for (str = "    ".concat(str);; str = new String("    "))
        {
          ezi.d("Babel", str, new Object[0]);
          i += 1;
          break;
        }
      }
    }
    long l1;
    if (bgw.a)
    {
      l1 = a;
      l2 = System.currentTimeMillis();
    }
    for (;;)
    {
      d.endTransaction();
      if (bgw.a) {
        a(l2, String.format(Locale.US, ">>> endTransaction (total for this transaction: %d)", new Object[] { Long.valueOf(System.currentTimeMillis() - l1) }));
      }
      return;
      l1 = 0L;
    }
  }
  
  public void d()
  {
    long l = 0L;
    if (bgw.a) {
      l = System.currentTimeMillis();
    }
    if ((d.yieldIfContendedSafely()) && (bgw.a)) {
      a(l, "yieldTransaction");
    }
  }
  
  public SQLiteDatabase e()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     bha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */