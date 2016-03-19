package org.chromium.base.library_loader;

import android.os.Bundle;
import java.util.HashMap;

class ModernLinker
  extends Linker
{
  private boolean c = false;
  private boolean d = false;
  private HashMap<String, Linker.LibInfo> e = null;
  private Bundle f = null;
  private boolean g = true;
  private long h = -1L;
  private long i = -1L;
  private boolean j = false;
  private HashMap<String, Linker.LibInfo> k = null;
  private String l = null;
  
  private static native boolean nativeCreateSharedRelro(String paramString1, long paramLong, String paramString2, Linker.LibInfo paramLibInfo);
  
  private static native String nativeGetCpuAbi();
  
  private static native boolean nativeLoadLibrary(String paramString, long paramLong, Linker.LibInfo paramLibInfo);
}

/* Location:
 * Qualified Name:     org.chromium.base.library_loader.ModernLinker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */