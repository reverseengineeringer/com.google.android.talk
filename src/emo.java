import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

final class emo
  implements emr
{
  emo(ContentValues paramContentValues, SQLiteDatabase paramSQLiteDatabase) {}
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    a.clear();
    a.put("numeric", paramString1);
    a.put("key", paramString2);
    a.put("value", paramString3);
    a.put("type", paramString4);
    b.insert("mmsconfig", null, a);
  }
}

/* Location:
 * Qualified Name:     emo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */