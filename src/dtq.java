import android.content.ContentValues;
import android.database.Cursor;

 enum dtq
{
  dtq() {}
  
  public Object a(Cursor paramCursor, int paramInt)
  {
    return paramCursor.getString(paramInt);
  }
  
  public void a(String paramString, Object paramObject, ContentValues paramContentValues)
  {
    paramContentValues.put(paramString, (String)paramObject);
  }
}

/* Location:
 * Qualified Name:     dtq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */