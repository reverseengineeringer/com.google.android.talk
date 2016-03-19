import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.Locale;

public final class idn
{
  static int a(iep paramiep)
  {
    switch (ido.a[paramiep.ordinal()])
    {
    default: 
      paramiep = String.valueOf(paramiep);
      throw new IllegalArgumentException(String.valueOf(paramiep).length() + 24 + "unknown storage policy: " + paramiep);
    case 1: 
      return 1;
    case 2: 
      return 2;
    }
    return 3;
  }
  
  static izm a(Context paramContext)
  {
    String str = Build.MANUFACTURER;
    if (TextUtils.isEmpty(str)) {}
    do
    {
      return null;
      localObject = gvj.a(paramContext.getContentResolver(), "plusone:autobackup_device_identity_eligible_manufacturer", "motorola");
    } while ((TextUtils.isEmpty((CharSequence)localObject)) || (!str.toLowerCase(Locale.US).contains((CharSequence)localObject)));
    Object localObject = new izm();
    d = str;
    c = Build.MODEL;
    a = Build.SERIAL;
    try
    {
      b = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      return (izm)localObject;
    }
    catch (SecurityException paramContext)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     idn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */