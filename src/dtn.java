import android.content.ContentValues;
import android.database.Cursor;

 enum dtn
{
  dtn() {}
  
  public Object a(Cursor paramCursor, int paramInt)
  {
    return Boolean.valueOf(ezc.d(paramCursor.getInt(paramInt)));
  }
  
  public void a(String paramString, Object paramObject, ContentValues paramContentValues)
  {
    paramContentValues.put(paramString, ezc.a((Boolean)paramObject));
  }
}

/* Location:
 * Qualified Name:     dtn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */