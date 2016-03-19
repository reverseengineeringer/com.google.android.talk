import android.content.ContentValues;
import android.database.Cursor;

 enum dtp
{
  dtp() {}
  
  public Object a(Cursor paramCursor, int paramInt)
  {
    return Long.valueOf(paramCursor.getLong(paramInt));
  }
  
  public void a(String paramString, Object paramObject, ContentValues paramContentValues)
  {
    paramContentValues.put(paramString, (Long)paramObject);
  }
}

/* Location:
 * Qualified Name:     dtp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */