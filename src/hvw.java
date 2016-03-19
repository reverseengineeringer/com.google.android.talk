import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.Iterator;
import java.util.LinkedList;

public final class hvw
{
  private static final String[] a = { "name" };
  private static final ThreadLocal<ContentValues> b = new hvx();
  private static final String[] c = new String[0];
  private static final ThreadLocal<String[]> d = new hvy();
  private static final ThreadLocal<String[]> e = new hvz();
  private static final ThreadLocal<String[]> f = new hwa();
  
  public static void a(SQLiteDatabase paramSQLiteDatabase)
  {
    if (!paramSQLiteDatabase.isReadOnly()) {
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, LinkedList<String> paramLinkedList)
  {
    Iterator localIterator = paramLinkedList.iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramLinkedList = String.valueOf("DROP TABLE IF EXISTS ");
      str = String.valueOf(str);
      if (str.length() != 0) {}
      for (paramLinkedList = paramLinkedList.concat(str);; paramLinkedList = new String(paramLinkedList))
      {
        paramSQLiteDatabase.execSQL(paramLinkedList);
        break;
      }
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString)
  {
    LinkedList localLinkedList = new LinkedList();
    int j = paramArrayOfString.length;
    int i = 0;
    if (i < j)
    {
      String str = paramArrayOfString[i];
      if (a(paramSQLiteDatabase, str)) {
        localLinkedList.addFirst(str);
      }
      for (;;)
      {
        i += 1;
        break;
        localLinkedList.addLast(str);
      }
    }
    a(paramSQLiteDatabase, localLinkedList);
  }
  
  private static boolean a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    localSQLiteDatabase = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery(String.valueOf(paramString).length() + 25 + "pragma foreign_key_list(" + paramString + ")", null);
      if (paramSQLiteDatabase != null) {
        localSQLiteDatabase = paramSQLiteDatabase;
      }
      int i;
      if (localSQLiteDatabase == null) {
        break label112;
      }
    }
    catch (Exception paramSQLiteDatabase)
    {
      for (;;)
      {
        try
        {
          i = paramSQLiteDatabase.getCount();
          if (i > 0)
          {
            if (paramSQLiteDatabase != null) {
              paramSQLiteDatabase.close();
            }
            return true;
          }
          if (paramSQLiteDatabase != null) {
            paramSQLiteDatabase.close();
          }
          return false;
        }
        finally
        {
          localSQLiteDatabase = paramSQLiteDatabase;
        }
        paramSQLiteDatabase = paramSQLiteDatabase;
        if (localSQLiteDatabase != null) {
          localSQLiteDatabase.close();
        }
      }
    }
    finally
    {
      paramSQLiteDatabase = finally;
      localSQLiteDatabase = null;
      paramString = paramSQLiteDatabase;
    }
    localSQLiteDatabase.close();
    label112:
    throw paramString;
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor = paramSQLiteDatabase.query("sqlite_master", a, "type='table' AND name NOT LIKE 'sqlite_%' AND name NOT LIKE 'android_%'", null, null, null, null);
    if (localCursor != null)
    {
      LinkedList localLinkedList = new LinkedList();
      for (;;)
      {
        try
        {
          if (!localCursor.moveToNext()) {
            break;
          }
          String str = localCursor.getString(0);
          if (a(paramSQLiteDatabase, str)) {
            localLinkedList.addFirst(str);
          } else {
            localLinkedList.addLast(str);
          }
        }
        finally
        {
          localCursor.close();
        }
      }
      localCursor.close();
      a(paramSQLiteDatabase, localLinkedList);
    }
  }
  
  public static void b(SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString)
  {
    int j = paramArrayOfString.length;
    int i = 0;
    if (i < j)
    {
      String str2 = paramArrayOfString[i];
      String str1 = String.valueOf("DROP VIEW IF EXISTS ");
      str2 = String.valueOf(str2);
      if (str2.length() != 0) {}
      for (str1 = str1.concat(str2);; str1 = new String(str1))
      {
        paramSQLiteDatabase.execSQL(str1);
        i += 1;
        break;
      }
    }
  }
  
  public static void c(SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor = paramSQLiteDatabase.query("sqlite_master", a, "type='view'", null, null, null, null);
    if (localCursor != null)
    {
      for (;;)
      {
        try
        {
          if (!localCursor.moveToNext()) {
            break;
          }
          String str2 = localCursor.getString(0);
          String str1 = String.valueOf("DROP VIEW IF EXISTS ");
          str2 = String.valueOf(str2);
          if (str2.length() != 0)
          {
            str1 = str1.concat(str2);
            paramSQLiteDatabase.execSQL(str1);
          }
          else
          {
            str1 = new String(str1);
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
}

/* Location:
 * Qualified Name:     hvw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */