import android.content.ContentValues;
import android.database.Cursor;
import java.io.IOException;

 enum dtr
{
  dtr() {}
  
  public Object a(Cursor paramCursor, int paramInt)
  {
    try
    {
      paramCursor = ezc.a(paramCursor.getBlob(paramInt));
      return paramCursor;
    }
    catch (ClassNotFoundException paramCursor)
    {
      ezi.c("Babel", "Deserialization failed", paramCursor);
      return null;
    }
    catch (IOException paramCursor)
    {
      for (;;) {}
    }
  }
  
  public void a(String paramString, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      paramContentValues.put(paramString, ezc.a(paramObject));
      return;
    }
    catch (IOException paramString)
    {
      ezi.d("Babel", "Serialization failed", paramString);
      hbs.a("Object serialization failed - not serializable?");
    }
  }
}

/* Location:
 * Qualified Name:     dtr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */