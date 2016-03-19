import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;

final class apc
  implements ajf<File>
{
  private static final String[] a = { "_data" };
  private final Context b;
  private final Uri c;
  
  apc(Context paramContext, Uri paramUri)
  {
    b = paramContext;
    c = paramUri;
  }
  
  public void a() {}
  
  public void a(ahs paramahs, ajg<? super File> paramajg)
  {
    paramahs = null;
    Object localObject = null;
    Cursor localCursor = b.getContentResolver().query(c, a, null, null, null);
    if (localCursor != null) {
      paramahs = (ahs)localObject;
    }
    try
    {
      if (localCursor.moveToFirst()) {
        paramahs = localCursor.getString(localCursor.getColumnIndexOrThrow("_data"));
      }
      localCursor.close();
      if (TextUtils.isEmpty(paramahs))
      {
        paramahs = String.valueOf(c);
        paramajg.a(new FileNotFoundException(String.valueOf(paramahs).length() + 30 + "Failed to find file path for: " + paramahs));
        return;
      }
    }
    finally
    {
      localCursor.close();
    }
    paramajg.a(new File(paramahs));
  }
  
  public void b() {}
  
  public air c()
  {
    return air.a;
  }
  
  public Class<File> d()
  {
    return File.class;
  }
}

/* Location:
 * Qualified Name:     apc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */