package org.chromium.base.library_loader;

import android.os.Bundle;
import java.util.HashMap;
import mnz;
import org.chromium.base.ThreadUtils;
import org.chromium.base.annotations.CalledByNative;

public class LegacyLinker
  extends Linker
{
  private boolean c = false;
  private boolean d = true;
  private boolean e = false;
  private boolean f = false;
  private Bundle g = null;
  private long h = -1L;
  private long i = -1L;
  private boolean j = false;
  private HashMap<String, Linker.LibInfo> k = null;
  
  private static native boolean nativeCreateSharedRelro(String paramString, long paramLong, Linker.LibInfo paramLibInfo);
  
  private static native boolean nativeLoadLibrary(String paramString, long paramLong, Linker.LibInfo paramLibInfo);
  
  private static native boolean nativeLoadLibraryInZipFile(String paramString1, String paramString2, long paramLong, Linker.LibInfo paramLibInfo);
  
  private static native void nativeRunCallbackOnUiThread(long paramLong);
  
  private static native boolean nativeUseSharedRelro(String paramString, Linker.LibInfo paramLibInfo);
  
  @CalledByNative
  public static void postCallbackOnMainThread(long paramLong)
  {
    ThreadUtils.a(new mnz(paramLong));
  }
}

/* Location:
 * Qualified Name:     org.chromium.base.library_loader.LegacyLinker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */