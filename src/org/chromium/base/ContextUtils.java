package org.chromium.base;

import android.content.Context;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.JNINamespace;

@JNINamespace
public class ContextUtils
{
  public static Context a;
  
  public static void a(Context paramContext)
  {
    initJavaSideApplicationContext(paramContext);
    nativeInitNativeSideApplicationContext(paramContext);
  }
  
  @CalledByNative
  private static void initJavaSideApplicationContext(Context paramContext)
  {
    a = paramContext;
  }
  
  private static native void nativeInitNativeSideApplicationContext(Context paramContext);
}

/* Location:
 * Qualified Name:     org.chromium.base.ContextUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */