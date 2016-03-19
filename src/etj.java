import android.content.Context;
import android.telephony.CellIdentityCdma;
import android.telephony.CellInfoCdma;
import android.telephony.TelephonyManager;

public final class etj
{
  static final int[] a = { 4103, 4106, 4107, 4120, 4121, 4124, 4126, 4132, 4135, 4139, 4144, 4145, 4148, 4151, 4153, 4155, 4157, 4159, 4162, 4164, 4166, 4168, 4170, 4171, 4174, 4180, 4181, 4183, 4186, 4188, 4190, 4195, 4198, 4274, 4376, 4384, 4390, 4396, 4418, 4500, 4622, 4654, 4694, 4812, 4982, 5116, 5142, 22404, 22405, 22406, 22407, 22408, 22409, 22410, 22411, 22412, 22413, 22414, 22415, 22416, 22417, 22418, 22419, 22420, 22421, 22422, 22423, 22424, 22425, 22426, 22427, 22428, 22430, 22431, 22432, 22434, 22435, 22436, 22437, 22438, 22439, 22440, 22441, 22442, 22443, 22444, 22445, 22446, 22447, 22448 };
  
  public static int a(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager.isNetworkRoaming())
    {
      ezi.c("Babel_telephony", "TeleRoamingDetector.getRoamingStatus, is roaming", new Object[0]);
      return 1;
    }
    paramContext = era.a(paramContext);
    if (paramContext == null)
    {
      ezi.c("Babel_telephony", "TeleRoamingDetector.getRoamingStatus, unable to get cell info, roaming status is unknown", new Object[0]);
      return 3;
    }
    if ((localTelephonyManager.getPhoneType() == 2) && ((paramContext instanceof CellInfoCdma)))
    {
      int j = ((CellInfoCdma)paramContext).getCellIdentity().getSystemId();
      paramContext = a;
      int k = paramContext.length;
      int i = 0;
      if (i < k) {
        if (j != paramContext[i]) {}
      }
      for (i = 1;; i = 0)
      {
        if (i != 0) {
          break label133;
        }
        ezi.c("Babel_telephony", "TeleRoamingDetector.getRoamingStatus, not on Sprint Cdma, is roaming", new Object[0]);
        return 1;
        i += 1;
        break;
      }
    }
    label133:
    return 2;
  }
}

/* Location:
 * Qualified Name:     etj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */