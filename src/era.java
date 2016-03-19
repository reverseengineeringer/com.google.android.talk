import android.content.Context;
import android.telephony.CellIdentityCdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

public final class era
{
  private static int a = -1;
  
  private static int a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return -1;
    case 0: 
      return 0;
    case 1: 
      return 25;
    case 2: 
      return 50;
    case 3: 
      return 75;
    }
    return 100;
  }
  
  static int a(SignalStrength paramSignalStrength)
  {
    if (a != -1) {
      return a(a);
    }
    try
    {
      Method localMethod = paramSignalStrength.getClass().getDeclaredMethod("getLevel", new Class[0]);
      if (localMethod != null)
      {
        int i = a(aal.a((Integer)localMethod.invoke(paramSignalStrength, new Object[0]), 0));
        return i;
      }
    }
    catch (Exception paramSignalStrength)
    {
      ezi.d("Babel_telephony", "TeleCellServiceUtils.getSignalLevelPercent, error calling SignalStrength.getLevel", paramSignalStrength);
    }
    return -1;
  }
  
  public static CellInfo a(Context paramContext)
  {
    if (!aal.r(paramContext))
    {
      ezi.c("Babel_telephony", "TeleAccessNetworkInfoUtil.getRegisteredCellInfo, no coarse location permission.", new Object[0]);
      return null;
    }
    paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getAllCellInfo();
    if (paramContext != null)
    {
      paramContext = paramContext.iterator();
      while (paramContext.hasNext())
      {
        CellInfo localCellInfo = (CellInfo)paramContext.next();
        if (localCellInfo.isRegistered()) {
          return localCellInfo;
        }
      }
    }
    return null;
  }
  
  static erc a(Context paramContext, int paramInt1, int paramInt2)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    int j = -1;
    paramContext = a(paramContext);
    int i = j;
    if (paramContext != null)
    {
      i = j;
      if ((paramContext instanceof CellInfoCdma))
      {
        paramContext = ((CellInfoCdma)paramContext).getCellIdentity();
        i = j;
        if (paramContext != null) {
          i = paramContext.getSystemId();
        }
      }
    }
    return new erc(paramInt1, paramInt2, localTelephonyManager.getPhoneType(), localTelephonyManager.getNetworkOperator(), localTelephonyManager.getNetworkType(), i);
  }
  
  public static void a(Context paramContext, erb paramerb)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager.getSimState() == 5)
    {
      paramContext = new erd(paramContext, paramerb);
      localTelephonyManager.listen(paramContext, 257);
      localTelephonyManager.listen(paramContext, 0);
      return;
    }
    paramerb.a(a(paramContext, 2, -1));
  }
}

/* Location:
 * Qualified Name:     era
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */