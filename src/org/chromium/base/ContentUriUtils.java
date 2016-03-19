package org.chromium.base;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;
import org.chromium.base.annotations.CalledByNative;

public class ContentUriUtils
{
  private static final Object a = new Object();
  
  private static ParcelFileDescriptor a(Context paramContext, String paramString)
  {
    paramContext = paramContext.getContentResolver();
    paramString = Uri.parse(paramString);
    try
    {
      paramContext = paramContext.openFileDescriptor(paramString, "r");
      return paramContext;
    }
    catch (IllegalStateException paramContext)
    {
      return null;
    }
    catch (IllegalArgumentException paramContext)
    {
      return null;
    }
    catch (SecurityException paramContext)
    {
      return null;
    }
    catch (FileNotFoundException paramContext) {}
    return null;
  }
  
  @CalledByNative
  public static boolean contentUriExists(Context paramContext, String paramString)
  {
    return a(paramContext, paramString) != null;
  }
  
  @CalledByNative
  public static String getMimeType(Context paramContext, String paramString)
  {
    paramContext = paramContext.getContentResolver();
    if (paramContext == null) {
      return null;
    }
    return paramContext.getType(Uri.parse(paramString));
  }
  
  @CalledByNative
  public static int openContentUriForRead(Context paramContext, String paramString)
  {
    paramContext = a(paramContext, paramString);
    if (paramContext != null) {
      return paramContext.detachFd();
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     org.chromium.base.ContentUriUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */