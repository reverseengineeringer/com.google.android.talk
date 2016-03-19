import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class hwd
  extends SQLiteOpenHelper
{
  private static final hwb a = hwb.a;
  public static final imw d = new imw("debug.social.database");
  private final List<hvv> b;
  private boolean c;
  private final Context e;
  private final int f;
  private final String g;
  private final ikj h;
  
  public hwd(Context paramContext, String paramString, int paramInt)
  {
    super(paramContext.getApplicationContext(), ipr.a(ipr.a().append(paramString).append(paramInt).append(".db")), null, 1);
    paramString = (hpz)ilh.a(paramContext, hpz.class);
    e = paramContext;
    f = paramInt;
    b = ilh.c(paramContext, hvv.class);
    h = ((ikj)ilh.b(paramContext, ikj.class));
    if (paramString.c(paramInt)) {}
    for (paramContext = paramString.a(paramInt).b("account_name");; paramContext = null)
    {
      g = paramContext;
      return;
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, hvv paramhvv)
  {
    if (Log.isLoggable("PartitionedDatabase", 4))
    {
      String str = String.valueOf(paramhvv.a());
      if (str.length() == 0) {
        break label51;
      }
      "Rebuilding partition: ".concat(str);
    }
    for (;;)
    {
      a(paramSQLiteDatabase, paramhvv.a());
      paramhvv.a(paramSQLiteDatabase);
      return;
      label51:
      new String("Rebuilding partition: ");
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    Object localObject;
    if (Log.isLoggable("PartitionedDatabase", 4))
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() != 0) {
        "Dropping partition: ".concat((String)localObject);
      }
    }
    else
    {
      String[] arrayOfString = hwb.b(paramSQLiteDatabase, paramString);
      hvw.a(paramSQLiteDatabase, arrayOfString);
      localObject = hwb.c(paramSQLiteDatabase, paramString);
      hvw.b(paramSQLiteDatabase, (String[])localObject);
      a.a(paramSQLiteDatabase, paramString);
      if (Log.isLoggable("PartitionedDatabase", 3))
      {
        paramSQLiteDatabase = String.valueOf(Arrays.toString(arrayOfString));
        if (paramSQLiteDatabase.length() == 0) {
          break label125;
        }
        "Dropped tables: ".concat(paramSQLiteDatabase);
      }
    }
    for (;;)
    {
      paramSQLiteDatabase = String.valueOf(Arrays.toString((Object[])localObject));
      if (paramSQLiteDatabase.length() == 0) {
        break label138;
      }
      "Dropped views: ".concat(paramSQLiteDatabase);
      return;
      new String("Dropping partition: ");
      break;
      label125:
      new String("Dropped tables: ");
    }
    label138:
    new String("Dropped views: ");
  }
  
  private boolean a(SQLiteDatabase paramSQLiteDatabase, hvv paramhvv, int paramInt)
  {
    if (paramInt == 1) {
      return false;
    }
    if (paramInt == 0) {
      paramhvv.a(paramSQLiteDatabase);
    }
    for (;;)
    {
      a.a(paramSQLiteDatabase, paramhvv);
      return true;
      if (paramInt > 1) {
        a(paramSQLiteDatabase, paramhvv);
      } else {
        try
        {
          if (!paramhvv.a(paramInt, 1)) {
            a(paramSQLiteDatabase, paramhvv);
          }
        }
        catch (SQLiteException localSQLiteException)
        {
          new ikr(g, paramhvv.a(), paramInt, 1, paramInt);
          ilh.a(e, htf.class);
          if (h != null) {
            h.a(localSQLiteException, "Database Upgrade Failures");
          }
          String str = String.valueOf(paramhvv.a());
          Log.e("PartitionedDatabase", String.valueOf(str).length() + 57 + "Failed to upgrade partition: " + str + " " + paramInt + " --> 1", localSQLiteException);
          a(paramSQLiteDatabase, paramhvv);
        }
      }
    }
  }
  
  private void b()
  {
    if (c)
    {
      int i = f;
      throw new hwe(38 + "Database deleted. Account: " + i);
    }
  }
  
  protected void a()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
  }
  
  protected void a(SQLiteDatabase paramSQLiteDatabase)
  {
    hvw.b(paramSQLiteDatabase);
    hvw.c(paramSQLiteDatabase);
    onCreate(paramSQLiteDatabase);
  }
  
  protected void b(SQLiteDatabase paramSQLiteDatabase)
  {
    hvw.c(paramSQLiteDatabase);
    a();
  }
  
  protected boolean c(SQLiteDatabase paramSQLiteDatabase)
  {
    Map localMap = hwb.b(paramSQLiteDatabase);
    int i = aal.a((Integer)localMap.get(a.a()), 0);
    if (a(paramSQLiteDatabase, a, i)) {
      localMap = hwb.b(paramSQLiteDatabase);
    }
    for (boolean bool = true;; bool = false)
    {
      localMap.remove(a.a());
      if (Log.isLoggable("PartitionedDatabase", 4))
      {
        i = b.size();
        int j = localMap.size();
        new StringBuilder(70).append("Partitions in Binder: ").append(i).append(", Partitions in database: ").append(j);
      }
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        hvv localhvv = (hvv)localIterator.next();
        bool = a(paramSQLiteDatabase, localhvv, aal.a((Integer)localMap.remove(localhvv.a()), 0)) | bool;
      }
      localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext()) {
        a(paramSQLiteDatabase, (String)localIterator.next());
      }
      if (!localMap.isEmpty()) {
        return true;
      }
      return bool;
    }
  }
  
  public SQLiteDatabase getReadableDatabase()
  {
    try
    {
      b();
      SQLiteDatabase localSQLiteDatabase = super.getReadableDatabase();
      return localSQLiteDatabase;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public SQLiteDatabase getWritableDatabase()
  {
    try
    {
      b();
      SQLiteDatabase localSQLiteDatabase = super.getWritableDatabase();
      return localSQLiteDatabase;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    a(paramSQLiteDatabase, a, 0);
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      a(paramSQLiteDatabase, (hvv)localIterator.next(), 0);
    }
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    a(paramSQLiteDatabase);
  }
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.beginTransaction();
    try
    {
      if (c(paramSQLiteDatabase)) {
        b(paramSQLiteDatabase);
      }
      paramSQLiteDatabase.setTransactionSuccessful();
      paramSQLiteDatabase.endTransaction();
      hvw.a(paramSQLiteDatabase);
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        Log.e("PartitionedDatabase", "Failed to init database partitions", localSQLiteException);
        a(paramSQLiteDatabase);
      }
    }
    finally
    {
      paramSQLiteDatabase.endTransaction();
    }
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     hwd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */