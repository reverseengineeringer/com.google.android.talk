import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;

public final class eyv
{
  private static final String[] a;
  
  static
  {
    int i = 0;
    a = new String[] { "24BB24C05E47E0AEFA68A58A766179D9B613A600", "2A3B2FF537ECE7A1D88388ADDE13DE707B5CAD50", "38918A453D07199354F8B19AF05EC6562CED5788", "3AE924E5358572D2129B3479D99EB2C6D2360161", "5BC4FF008D6CE61D08F0418745EB403753AF76E7", "B6FA7B8B25BF050925AE82CD5608132B5FA0871A", "BE69110A4B3B1626A11F50A5F6A9A0922AD6F5D1", "038BAA00FC34F1EF9F7BE561B8656378863E3019", "D384B03B29D313E480BAF95336973B8698CF09C1", "AF362590931B148FC5D8FC3CAD5D2D2FEFAFE5C4" };
    while (i < a.length)
    {
      a[i] = a[i].toUpperCase(Locale.US);
      i += 1;
    }
    Arrays.sort(a);
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    boolean bool2 = true;
    Object localObject1 = String.valueOf(paramString);
    if (((String)localObject1).length() != 0) {
      "Checking signature of ".concat((String)localObject1);
    }
    int i;
    for (;;)
    {
      try
      {
        localObject1 = MessageDigest.getInstance("SHA1");
        localObject3 = paramContext.getPackageManager();
        localObject2 = ((PackageManager)localObject3).getPackageInfo(paramString, 64);
        paramContext = ((PackageManager)localObject3).getPackageInfo(paramContext.getPackageName(), 64);
        if (signatures.length == 1) {
          continue;
        }
        i = signatures.length;
        ezi.e("Babel", 40 + "Self signed with " + i + " signatures.", new Object[0]);
        bool1 = false;
      }
      catch (NoSuchAlgorithmException paramContext)
      {
        ezi.d("Babel", "checkForValidSignature caught", paramContext);
        return false;
        Object localObject2 = signatures;
        int j = localObject2.length;
        i = 0;
        boolean bool1 = bool2;
        if (i >= j) {
          continue;
        }
        Object localObject3 = localObject2[i];
        String str1 = aal.a(((MessageDigest)localObject1).digest(((Signature)localObject3).toByteArray()));
        String str2 = String.valueOf(str1);
        if (str2.length() == 0) {
          continue;
        }
        "Checking signature: ".concat(str2);
        if ((Arrays.binarySearch(a, str1) >= 0) || (((Signature)localObject3).equals(paramContext))) {
          break label392;
        }
        paramContext = String.valueOf(localObject3);
        ezi.e("Babel", String.valueOf(paramContext).length() + 30 + "Unrecognized signature found: " + paramContext, new Object[0]);
        return false;
        new String("Checking signature: ");
        continue;
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        paramContext = String.valueOf(paramString);
        if (paramContext.length() == 0) {
          break label399;
        }
      }
      return bool1;
      new String("Checking signature of ");
    }
    paramContext = signatures[0];
    localObject3 = String.valueOf(aal.a(((MessageDigest)localObject1).digest(paramContext.toByteArray())));
    if (((String)localObject3).length() != 0) {
      "Self signature: ".concat((String)localObject3);
    }
    while (signatures.length <= 0)
    {
      ezi.e("Babel", "Package signed with < 1 signature.", new Object[0]);
      return false;
      new String("Self signature: ");
    }
    label392:
    label399:
    for (paramContext = "checkForValidSignature could not find ".concat(paramContext);; paramContext = new String("checkForValidSignature could not find "))
    {
      ezi.a("Babel", paramContext, new Object[0]);
      return false;
      i += 1;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     eyv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */