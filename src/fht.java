import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.util.Base64;
import android.util.Log;
import java.util.Set;

public final class fht
{
  public static final fht a = new fht();
  
  static fmx a(PackageInfo paramPackageInfo, fmx... paramVarArgs)
  {
    if (signatures.length != 1) {
      return null;
    }
    paramPackageInfo = new fpy(signatures[0].toByteArray());
    int i = 0;
    while (i < paramVarArgs.length)
    {
      if (paramVarArgs[i].equals(paramPackageInfo)) {
        return paramVarArgs[i];
      }
      i += 1;
    }
    if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
      new StringBuilder("Signature not valid.  Found: \n").append(Base64.encodeToString(paramPackageInfo.a(), 0));
    }
    return null;
  }
  
  private static boolean a(PackageInfo paramPackageInfo, boolean paramBoolean)
  {
    if (signatures.length != 1) {
      return false;
    }
    fpy localfpy = new fpy(signatures[0].toByteArray());
    if (paramBoolean) {
      if (fmw.c == null) {
        fmw.c = fmw.a(fmw.b);
      }
    }
    for (paramPackageInfo = fmw.c; paramPackageInfo.contains(localfpy); paramPackageInfo = fmw.d)
    {
      return true;
      if (fmw.d == null) {
        fmw.d = fmw.a(fmw.a);
      }
    }
    if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
      new StringBuilder("Signature not valid.  Found: \n").append(Base64.encodeToString(localfpy.a(), 0));
    }
    return false;
  }
  
  public void a(PackageManager paramPackageManager, int paramInt)
  {
    boolean bool2 = false;
    if (paramPackageManager == null) {
      throw new SecurityException("Unknown error: invalid Package Manager");
    }
    String[] arrayOfString = paramPackageManager.getPackagesForUid(paramInt);
    boolean bool1 = bool2;
    if (arrayOfString != null) {
      if (arrayOfString.length != 0) {
        break label55;
      }
    }
    label55:
    for (bool1 = bool2; !bool1; bool1 = a(paramPackageManager, arrayOfString[0])) {
      throw new SecurityException("Uid is not Google Signed");
    }
  }
  
  public boolean a(PackageManager paramPackageManager, String paramString)
  {
    boolean bool1 = false;
    PackageInfo localPackageInfo;
    label49:
    boolean bool2;
    do
    {
      try
      {
        localPackageInfo = paramPackageManager.getPackageInfo(paramString, 64);
        if (localPackageInfo != null) {
          break label49;
        }
      }
      catch (PackageManager.NameNotFoundException paramPackageManager)
      {
        while (!Log.isLoggable("GoogleSignatureVerifier", 3)) {}
        new StringBuilder("Package manager can't find package ").append(paramString).append(", defaulting to false");
        return false;
      }
      return bool1;
      if (fhr.a(paramPackageManager)) {
        return a(localPackageInfo, true);
      }
      bool2 = a(localPackageInfo, false);
      bool1 = bool2;
    } while (bool2);
    a(localPackageInfo, true);
    return bool2;
  }
}

/* Location:
 * Qualified Name:     fht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */