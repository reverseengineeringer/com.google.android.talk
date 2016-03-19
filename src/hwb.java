import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class hwb
  implements hvv
{
  static final hwb a = new hwb();
  
  static Map<String, Integer> b(SQLiteDatabase paramSQLiteDatabase)
  {
    HashMap localHashMap = new HashMap();
    paramSQLiteDatabase = paramSQLiteDatabase.query("partition_versions", new String[] { "partition_name", "version" }, null, null, null, null, null);
    try
    {
      if (paramSQLiteDatabase.moveToNext()) {
        localHashMap.put(paramSQLiteDatabase.getString(0), Integer.valueOf(paramSQLiteDatabase.getInt(1)));
      }
      return localMap;
    }
    finally
    {
      paramSQLiteDatabase.close();
    }
  }
  
  private static void b(SQLiteDatabase paramSQLiteDatabase, hvv paramhvv)
  {
    Object localObject3 = Arrays.asList(b(paramSQLiteDatabase, paramhvv.a()));
    Object localObject1 = Arrays.asList(paramhvv.b());
    Object localObject2 = new HashSet((Collection)localObject3);
    ((Set)localObject2).removeAll((Collection)localObject1);
    localObject1 = new HashSet((Collection)localObject1);
    ((Set)localObject1).removeAll((Collection)localObject3);
    localObject3 = new String[2];
    localObject3[0] = paramhvv.a();
    localObject2 = ((Set)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3[1] = ((String)((Iterator)localObject2).next());
      paramSQLiteDatabase.delete("partition_tables", "partition_name=? AND table_name=?", (String[])localObject3);
    }
    localObject2 = new ContentValues(2);
    ((ContentValues)localObject2).put("partition_name", paramhvv.a());
    paramhvv = ((Set)localObject1).iterator();
    while (paramhvv.hasNext())
    {
      ((ContentValues)localObject2).put("table_name", (String)paramhvv.next());
      paramSQLiteDatabase.insert("partition_tables", null, (ContentValues)localObject2);
    }
  }
  
  static String[] b(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    paramSQLiteDatabase = paramSQLiteDatabase.query("partition_tables", new String[] { "table_name" }, "partition_name=?", new String[] { paramString }, null, null, null);
    paramString = new String[paramSQLiteDatabase.getCount()];
    int i = 0;
    try
    {
      while (paramSQLiteDatabase.moveToNext())
      {
        paramString[i] = paramSQLiteDatabase.getString(0);
        i += 1;
      }
      return paramString;
    }
    finally
    {
      paramSQLiteDatabase.close();
    }
  }
  
  private static void c(SQLiteDatabase paramSQLiteDatabase, hvv paramhvv)
  {
    Object localObject3 = Arrays.asList(c(paramSQLiteDatabase, paramhvv.a()));
    Object localObject1 = Arrays.asList(paramhvv.c());
    Object localObject2 = new HashSet((Collection)localObject3);
    ((Set)localObject2).removeAll((Collection)localObject1);
    localObject1 = new HashSet((Collection)localObject1);
    ((Set)localObject1).removeAll((Collection)localObject3);
    localObject3 = new String[2];
    localObject3[0] = paramhvv.a();
    localObject2 = ((Set)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3[1] = ((String)((Iterator)localObject2).next());
      paramSQLiteDatabase.delete("partition_views", "partition_name=? AND view_name=?", (String[])localObject3);
    }
    localObject2 = new ContentValues(2);
    ((ContentValues)localObject2).put("partition_name", paramhvv.a());
    paramhvv = ((Set)localObject1).iterator();
    while (paramhvv.hasNext())
    {
      ((ContentValues)localObject2).put("view_name", (String)paramhvv.next());
      paramSQLiteDatabase.insert("partition_views", null, (ContentValues)localObject2);
    }
  }
  
  static String[] c(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    paramSQLiteDatabase = paramSQLiteDatabase.query("partition_views", new String[] { "view_name" }, "partition_name=?", new String[] { paramString }, null, null, null);
    paramString = new String[paramSQLiteDatabase.getCount()];
    int i = 0;
    try
    {
      while (paramSQLiteDatabase.moveToNext())
      {
        paramString[i] = paramSQLiteDatabase.getString(0);
        i += 1;
      }
      return paramString;
    }
    finally
    {
      paramSQLiteDatabase.close();
    }
  }
  
  public String a()
  {
    return "__master_partition__";
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase)
  {
    if (Log.isLoggable("PartitionedDatabase", 3))
    {
      String str = String.valueOf(a());
      if (str.length() == 0) {
        break label50;
      }
      "onCreate: ".concat(str);
    }
    for (;;)
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE partition_versions (partition_name TEXT NOT NULL PRIMARY KEY,version INT NOT NULL DEFAULT(0));");
      paramSQLiteDatabase.execSQL("CREATE TABLE partition_tables (partition_name TEXT NOT NULL,table_name TEXT NOT NULL,UNIQUE (partition_name,table_name));");
      paramSQLiteDatabase.execSQL("CREATE TABLE partition_views (partition_name TEXT NOT NULL,view_name TEXT NOT NULL,UNIQUE (partition_name,view_name));");
      return;
      label50:
      new String("onCreate: ");
    }
  }
  
  void a(SQLiteDatabase paramSQLiteDatabase, hvv paramhvv)
  {
    ContentValues localContentValues = new ContentValues(2);
    localContentValues.put("partition_name", paramhvv.a());
    localContentValues.put("version", Integer.valueOf(1));
    paramSQLiteDatabase.replace("partition_versions", null, localContentValues);
    b(paramSQLiteDatabase, paramhvv);
    c(paramSQLiteDatabase, paramhvv);
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    if (TextUtils.equals(paramString, a())) {
      throw new IllegalArgumentException("Cannot delete the master partition");
    }
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramString;
    paramSQLiteDatabase.delete("partition_versions", "partition_name=?", arrayOfString);
    paramSQLiteDatabase.delete("partition_tables", "partition_name=?", arrayOfString);
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    if (Log.isLoggable("PartitionedDatabase", 4)) {
      new StringBuilder(53).append("Upgrade master partition: ").append(paramInt1).append(" --> 1");
    }
    return true;
  }
  
  public String[] b()
  {
    return new String[] { "partition_versions", "partition_tables", "partition_views" };
  }
  
  public String[] c()
  {
    return new String[0];
  }
}

/* Location:
 * Qualified Name:     hwb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */