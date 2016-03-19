import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;

class ew
{
  public Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, gr paramgr)
  {
    if (paramgr != null) {
      paramgr.a();
    }
    return paramContentResolver.query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2);
  }
}

/* Location:
 * Qualified Name:     ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */