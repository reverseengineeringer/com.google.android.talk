import android.content.ContentValues;
import android.database.Cursor;

public enum dtm
{
  dtm() {}
  
  public abstract Object a(Cursor paramCursor, int paramInt);
  
  public abstract void a(String paramString, Object paramObject, ContentValues paramContentValues);
}

/* Location:
 * Qualified Name:     dtm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */