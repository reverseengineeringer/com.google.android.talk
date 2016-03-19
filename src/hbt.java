import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellSignalStrength;
import android.telephony.TelephonyManager;
import java.util.Iterator;
import java.util.List;

public class hbt
{
  private final Context a;
  private final ConnectivityManager b;
  private final WifiManager c;
  private final TelephonyManager d;
  
  public hbt(Context paramContext)
  {
    a = paramContext;
    b = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
    c = ((WifiManager)paramContext.getSystemService("wifi"));
    d = ((TelephonyManager)paramContext.getSystemService("phone"));
  }
  
  public int a()
  {
    NetworkInfo localNetworkInfo = b.getActiveNetworkInfo();
    if (localNetworkInfo == null) {
      return 0;
    }
    return b(localNetworkInfo.getType());
  }
  
  public jum a(int paramInt)
  {
    Object localObject2 = null;
    int i = 1;
    int j = 1;
    jum localjum = new jum();
    Object localObject1;
    if (paramInt == 2)
    {
      localObject1 = b.getNetworkInfo(1);
      if ((localObject1 != null) && (((NetworkInfo)localObject1).isConnected()))
      {
        paramInt = j;
        if (paramInt != 0) {
          break label69;
        }
        paramInt = -1;
        label52:
        a = Integer.valueOf(paramInt);
      }
    }
    for (;;)
    {
      return localjum;
      paramInt = 0;
      break;
      label69:
      localObject1 = c.getConnectionInfo();
      if (localObject1 == null)
      {
        paramInt = -1;
        break label52;
      }
      paramInt = ((WifiInfo)localObject1).getRssi();
      if (paramInt == 65336)
      {
        paramInt = -1;
        break label52;
      }
      paramInt = WifiManager.calculateSignalLevel(paramInt, 100);
      break label52;
      if ((paramInt == 5) || (paramInt == 6) || (paramInt == 7) || (paramInt == 8)) {}
      label225:
      for (paramInt = 1; paramInt != 0; paramInt = 0)
      {
        if (Build.VERSION.SDK_INT < 17) {
          break label458;
        }
        if (a.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
          break label491;
        }
        localObject1 = d.getAllCellInfo();
        if (localObject1 == null) {
          break label491;
        }
        Iterator localIterator = ((List)localObject1).iterator();
        CellInfo localCellInfo;
        for (localObject1 = null; localIterator.hasNext(); localObject1 = localCellInfo)
        {
          localCellInfo = (CellInfo)localIterator.next();
          if (!localCellInfo.isRegistered()) {
            break label488;
          }
        }
      }
    }
    for (;;)
    {
      if (localObject1 == null)
      {
        paramInt = -1;
        localObject1 = localObject2;
      }
      for (;;)
      {
        b = Integer.valueOf(paramInt);
        if (localObject1 == null) {
          break label437;
        }
        c = Integer.valueOf(((CellSignalStrength)localObject1).getLevel());
        d = Integer.valueOf(((CellSignalStrength)localObject1).getAsuLevel());
        return localjum;
        if ((localObject1 instanceof CellInfoCdma))
        {
          localObject1 = ((CellInfoCdma)localObject1).getCellSignalStrength();
          paramInt = 1;
        }
        else if ((localObject1 instanceof CellInfoGsm))
        {
          localObject1 = ((CellInfoGsm)localObject1).getCellSignalStrength();
          paramInt = 2;
        }
        else
        {
          if (!(localObject1 instanceof CellInfoLte)) {
            break;
          }
          localObject1 = ((CellInfoLte)localObject1).getCellSignalStrength();
          paramInt = 3;
        }
      }
      if (Build.VERSION.SDK_INT >= 18)
      {
        if (!(localObject1 instanceof CellInfoWcdma)) {
          break label432;
        }
        b = Integer.valueOf(4);
        localObject1 = ((CellInfoWcdma)localObject1).getCellSignalStrength();
        c = Integer.valueOf(((CellSignalStrength)localObject1).getLevel());
        d = Integer.valueOf(((CellSignalStrength)localObject1).getAsuLevel());
      }
      label432:
      for (paramInt = i;; paramInt = 0)
      {
        if (paramInt != 0) {
          break label435;
        }
        paramInt = 0;
        localObject1 = localObject2;
        break;
      }
      label435:
      break;
      label437:
      c = Integer.valueOf(-1);
      d = Integer.valueOf(-1);
      return localjum;
      label458:
      b = Integer.valueOf(-1);
      c = Integer.valueOf(-1);
      d = Integer.valueOf(-1);
      return localjum;
      label488:
      break label225;
      label491:
      localObject1 = null;
    }
  }
  
  public int b(int paramInt)
  {
    int i;
    if ((paramInt == 0) || (paramInt == 4) || (paramInt == 5) || (paramInt == 3)) {
      i = 1;
    }
    while (i != 0) {
      switch (d.getNetworkType())
      {
      default: 
        return 5;
        i = 0;
        break;
      case 1: 
      case 2: 
      case 4: 
      case 7: 
      case 11: 
        return 6;
      case 3: 
      case 5: 
      case 6: 
      case 8: 
      case 9: 
      case 10: 
      case 12: 
      case 14: 
      case 15: 
        return 7;
      case 13: 
        return 8;
      }
    }
    switch (paramInt)
    {
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 8: 
    default: 
      return 0;
    case 9: 
      return 1;
    case 1: 
      return 2;
    case 6: 
      return 3;
    }
    return 4;
  }
}

/* Location:
 * Qualified Name:     hbt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */