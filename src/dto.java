import android.content.ContentValues;
import android.database.Cursor;

 enum dto
{
  dto() {}
  
  public Object a(Cursor paramCursor, int paramInt)
  {
    return Integer.valueOf(paramCursor.getInt(paramInt));
  }
  
  public void a(String paramString, Object paramObject, ContentValues paramContentValues)
  {
    paramContentValues.put(paramString, (Integer)paramObject);
  }
}

/* Location:
 * Qualified Name:     dto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */