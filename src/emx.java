import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.util.Random;

public abstract class emx
  extends ContentProvider
{
  public static final Random a = new Random();
  
  public static boolean a(File paramFile)
  {
    try
    {
      File localFile = paramFile.getParentFile();
      if ((localFile.exists()) || (localFile.mkdirs()))
      {
        boolean bool = paramFile.createNewFile();
        return bool;
      }
    }
    catch (IOException paramFile)
    {
      ezi.c("Babel", "FileProvider: Failed to create file", paramFile);
    }
    return false;
  }
  
  private static boolean b(String paramString)
  {
    int i;
    if (paramString.startsWith("/")) {
      i = 1;
    }
    while (i < paramString.length()) {
      if (!Character.isDigit(paramString.charAt(i)))
      {
        return false;
        i = 0;
      }
      else
      {
        i += 1;
      }
    }
    return true;
  }
  
  public abstract File a(String paramString);
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    int j = 0;
    paramString = paramUri.getPath();
    int i = j;
    if (b(paramString))
    {
      paramUri.getQueryParameter("ext");
      i = j;
      if (a(paramString).delete()) {
        i = 1;
      }
    }
    return i;
  }
  
  public String getType(Uri paramUri)
  {
    return null;
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }
  
  public boolean onCreate()
  {
    return true;
  }
  
  public ParcelFileDescriptor openFile(Uri paramUri, String paramString)
  {
    String str = paramUri.getPath();
    if (b(str))
    {
      paramUri.getQueryParameter("ext");
      paramUri = a(str);
      if (TextUtils.equals(paramString, "r")) {}
      for (int i = 268435456;; i = 603979776) {
        return ParcelFileDescriptor.open(paramUri, i);
      }
    }
    return null;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return null;
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     emx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */