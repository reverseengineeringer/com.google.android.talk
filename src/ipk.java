import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.MimeTypeMap;

public final class ipk
{
  private static final String[] a = { "_data" };
  
  public static String a(ContentResolver paramContentResolver, Uri paramUri)
  {
    paramContentResolver = paramContentResolver.query(paramUri, new String[] { "_data" }, null, null, null);
    if (paramContentResolver == null)
    {
      if (Log.isLoggable("ContentUriUtils", 5))
      {
        paramContentResolver = String.valueOf(paramUri);
        new StringBuilder(String.valueOf(paramContentResolver).length() + 48).append("getFilePath: query returned null cursor for uri=").append(paramContentResolver);
      }
      return null;
    }
    try
    {
      if (!paramContentResolver.moveToFirst())
      {
        if (Log.isLoggable("ContentUriUtils", 5))
        {
          paramUri = String.valueOf(paramUri);
          new StringBuilder(String.valueOf(paramUri).length() + 49).append("getFilePath: query returned empty cursor for uri=").append(paramUri);
        }
        return null;
      }
      String str = paramContentResolver.getString(0);
      if (TextUtils.isEmpty(str))
      {
        if (Log.isLoggable("ContentUriUtils", 5))
        {
          paramUri = String.valueOf(paramUri);
          new StringBuilder(String.valueOf(paramUri).length() + 49).append("getFilePath: MediaColumns.DATA was empty for uri=").append(paramUri);
        }
        return null;
      }
      return str;
    }
    finally
    {
      paramContentResolver.close();
    }
  }
  
  public static boolean a(Uri paramUri)
  {
    return (paramUri != null) && ("file".equals(paramUri.getScheme()));
  }
  
  public static boolean a(String paramString)
  {
    return "image/gif".equals(paramString);
  }
  
  public static String b(ContentResolver paramContentResolver, Uri paramUri)
  {
    Object localObject1 = null;
    try
    {
      localObject3 = d(paramContentResolver, paramUri);
      Object localObject2 = localObject3;
      localObject1 = localObject3;
      if (TextUtils.isEmpty((CharSequence)localObject3))
      {
        localObject1 = localObject3;
        localObject2 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(paramUri.toString()));
      }
      localObject3 = localObject2;
      localObject1 = localObject2;
      if ("*/*".equals(localObject2))
      {
        localObject3 = localObject2;
        localObject1 = localObject2;
        if (b(paramUri))
        {
          localObject1 = localObject2;
          localObject3 = c(paramContentResolver, paramUri);
        }
      }
    }
    catch (Exception paramContentResolver)
    {
      do
      {
        Object localObject3 = localObject1;
      } while (!Log.isLoggable("ContentUriUtils", 5));
      paramContentResolver = String.valueOf(paramUri);
      new StringBuilder(String.valueOf(paramContentResolver).length() + 27).append("getMimeType failed for uri=").append(paramContentResolver);
    }
    return (String)localObject3;
    return (String)localObject1;
  }
  
  public static boolean b(Uri paramUri)
  {
    return (paramUri != null) && ("content".equals(paramUri.getScheme())) && ("media".equals(paramUri.getAuthority()));
  }
  
  public static boolean b(String paramString)
  {
    return (paramString != null) && (paramString.startsWith("image/"));
  }
  
  private static String c(ContentResolver paramContentResolver, Uri paramUri)
  {
    Object localObject = paramContentResolver.query(paramUri, a, null, null, null);
    if (localObject != null) {}
    for (;;)
    {
      try
      {
        if (!((Cursor)localObject).moveToFirst()) {
          break label112;
        }
        paramContentResolver = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(((Cursor)localObject).getString(0)));
        if (localObject != null) {
          ((Cursor)localObject).close();
        }
        localObject = paramContentResolver;
        if (TextUtils.isEmpty(paramContentResolver))
        {
          if ((b(paramUri)) && (paramUri.toString().contains("/video/")))
          {
            i = 1;
            if (i == 0) {
              break label109;
            }
            localObject = "video/*";
          }
        }
        else {
          return (String)localObject;
        }
      }
      finally
      {
        if (localObject != null) {
          ((Cursor)localObject).close();
        }
      }
      int i = 0;
      continue;
      label109:
      return "image/*";
      label112:
      paramContentResolver = null;
    }
  }
  
  public static boolean c(String paramString)
  {
    return (paramString != null) && (paramString.startsWith("video/"));
  }
  
  private static String d(ContentResolver paramContentResolver, Uri paramUri)
  {
    Object localObject = null;
    try
    {
      paramContentResolver = paramContentResolver.getType(paramUri);
      return paramContentResolver;
    }
    catch (Exception paramContentResolver)
    {
      do
      {
        paramContentResolver = (ContentResolver)localObject;
      } while (!Log.isLoggable("ContentUriUtils", 5));
      paramContentResolver = String.valueOf(paramUri);
      new StringBuilder(String.valueOf(paramContentResolver).length() + 31).append("safeGetMimeType failed for uri=").append(paramContentResolver);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     ipk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */