import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.SystemClock;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class ene
{
  public static final boolean a = false;
  public static final enh b = new enh();
  private static final Class[] c = { Integer.TYPE, String.class };
  private static final Integer d = Integer.valueOf(2);
  
  static
  {
    imx localimx = ezi.r;
  }
  
  public static adg a(Context paramContext, eol parameol, adg paramadg, String paramString)
  {
    paramadg = new adk(paramContext, paramadg).a();
    if ((paramadg == null) || (paramadg.length <= 0)) {
      throw new IllegalArgumentException("Empty or zero length PDU data");
    }
    return a(paramContext, parameol, paramString, 1, paramadg);
  }
  
  public static adg a(Context paramContext, eol parameol, String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Empty URL to retrieve");
    }
    return a(paramContext, parameol, paramString, 2, null);
  }
  
  private static adg a(Context paramContext, eol parameol, String paramString, int paramInt, byte[] paramArrayOfByte)
  {
    Object localObject1;
    if (a)
    {
      localObject1 = String.valueOf("MmsSendReceiveManager.executeMmsRequest: requestUrl=");
      if (paramArrayOfByte == null) {
        break label113;
      }
    }
    label113:
    for (int i = paramArrayOfByte.length;; i = -1)
    {
      new StringBuilder(String.valueOf(localObject1).length() + 50 + String.valueOf(paramString).length()).append((String)localObject1).append(paramString).append(",requestMethod=").append(paramInt).append(",requestData=").append(i);
      localObject1 = parameol;
      if (parameol == null) {
        localObject1 = eol.a(paramContext, null);
      }
      if (((eol)localObject1).b()) {
        break;
      }
      throw new end(135, "No available APN to use");
    }
    parameol = null;
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    Iterator localIterator = ((eol)localObject1).a().iterator();
    eom localeom;
    if (localIterator.hasNext())
    {
      localeom = (eom)localIterator.next();
      str1 = String.valueOf(localeom);
      ezi.c("Babel_SMS", String.valueOf(str1).length() + 31 + "MmsSendReceiveManager: try APN " + str1, new Object[0]);
      if (paramString != null) {
        break label705;
      }
    }
    label680:
    label705:
    for (String str1 = b;; str1 = paramString)
    {
      if (a)
      {
        localObject2 = String.valueOf(localeom);
        new StringBuilder(String.valueOf(str1).length() + 34 + String.valueOf(localObject2).length()).append("resolveDestination url: ").append(str1).append(" with apn ").append((String)localObject2);
      }
      if (localeom.b()) {}
      Object localObject3;
      for (Object localObject2 = d;; localObject2 = Uri.parse(str1).getHost())
      {
        i = b(localConnectivityManager);
        ezi.c("Babel_SMS", 43 + "ensureRouteToHost: addressTypes=" + i, new Object[0]);
        localObject2 = a((String)localObject2, i).iterator();
        for (;;)
        {
          if (!((Iterator)localObject2).hasNext()) {
            break label680;
          }
          localObject3 = (InetAddress)((Iterator)localObject2).next();
          parameol = String.valueOf(localObject3);
          ezi.c("Babel_SMS", String.valueOf(parameol).length() + 37 + "MmsSendReceiveManager: try inet addr " + parameol, new Object[0]);
          try
          {
            if (a(localConnectivityManager, (InetAddress)localObject3)) {
              break;
            }
            parameol = String.valueOf(localObject3);
            throw new IOException(String.valueOf(parameol).length() + 26 + "Cannot establish route to " + parameol);
          }
          catch (IOException parameol)
          {
            localObject4 = String.valueOf("MmsSendReceiveManager: MMS HTTP request failed with exception for addr=");
            localObject3 = String.valueOf(localObject3);
            String str2 = String.valueOf(localeom);
            ezi.d("Babel_SMS", String.valueOf(localObject4).length() + 5 + String.valueOf(localObject3).length() + String.valueOf(str2).length() + (String)localObject4 + (String)localObject3 + " apn=" + str2, parameol);
          }
        }
      }
      Object localObject4 = aeg.a(paramContext, str1, paramArrayOfByte, paramInt, localeom.b(), d, f, localObject3 instanceof Inet6Address);
      ((eol)localObject1).a(paramContext, localeom);
      if (localObject4 != null)
      {
        i = localObject4.length;
        if (i > 0) {
          try
          {
            parameol = new adq((byte[])localObject4).a();
            if ((paramInt != 2) || (!enn.i()) || (parameol == null)) {
              return parameol;
            }
            enn.a((byte[])localObject4, parameol, paramContext);
            return parameol;
          }
          catch (RuntimeException parameol)
          {
            for (;;)
            {
              ezi.d("Babel_SMS", "MmsSendReceiveManager: Parsing retrieved PDU failure", parameol);
              parameol = null;
            }
          }
        }
      }
      return null;
      break;
      if (parameol != null) {
        ezi.d("Babel_SMS", "MMS temporary exception", parameol);
      }
      throw new enk("MMS HTTP request failed");
    }
    return parameol;
  }
  
  private static List<InetAddress> a(String paramString, int paramInt)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    if (paramInt != 0) {}
    for (;;)
    {
      try
      {
        InetAddress[] arrayOfInetAddress = InetAddress.getAllByName(paramString);
        int j = arrayOfInetAddress.length;
        if (i < j)
        {
          InetAddress localInetAddress = arrayOfInetAddress[i];
          if (a)
          {
            String str = String.valueOf(localInetAddress);
            new StringBuilder(String.valueOf(str).length() + 26).append("MMS host resolved address ").append(str);
          }
          if (((paramInt & 0x2) != 0) && ((localInetAddress instanceof Inet6Address))) {
            localArrayList.add(localInetAddress);
          } else if (((paramInt & 0x1) != 0) && ((localInetAddress instanceof Inet4Address))) {
            localArrayList.add(localInetAddress);
          }
        }
      }
      catch (UnknownHostException localUnknownHostException)
      {
        paramString = String.valueOf(paramString);
        if (paramString.length() == 0) {}
      }
      for (paramString = "Error resolving host: ".concat(paramString);; paramString = new String("Error resolving host: "))
      {
        ezi.d("Babel_SMS", paramString, localUnknownHostException);
        throw new enk("Failed to resolve host", localUnknownHostException);
        if (localUnknownHostException.size() > 0) {
          break;
        }
        ezi.e("Babel_SMS", String.valueOf(paramString).length() + 74 + "Failed to resolve host " + paramString + " for allowed addressTypes, addressTypes=" + paramInt, new Object[0]);
        throw new enk("Failed to resolve host for allowed address types");
      }
      return localUnknownHostException;
      i += 1;
    }
  }
  
  public static void a(Context paramContext)
  {
    ezi.c("Babel_SMS", "MmsSendReceiveManager.extendMmsNetworkConnectivity", new Object[0]);
    if (d(paramContext) == 0)
    {
      enh.a(true, null);
      return;
    }
    bb = false;
  }
  
  public static boolean a(ConnectivityManager paramConnectivityManager)
  {
    try
    {
      Method localMethod = Class.forName(paramConnectivityManager.getClass().getName()).getMethod("getMobileDataEnabled", new Class[0]);
      localMethod.setAccessible(true);
      boolean bool = aal.a((Boolean)localMethod.invoke(paramConnectivityManager, new Object[0]), false);
      return bool;
    }
    catch (Exception paramConnectivityManager) {}
    return false;
  }
  
  private static boolean a(ConnectivityManager paramConnectivityManager, InetAddress paramInetAddress)
  {
    Object localObject1;
    if (ezi.a("Babel_SMS", 3))
    {
      localObject1 = String.valueOf(paramInetAddress);
      ezi.a("Babel_SMS", String.valueOf(localObject1).length() + 26 + "requestRouteToHostAddress " + (String)localObject1, new Object[0]);
    }
    boolean bool;
    Object localObject2;
    try
    {
      localObject1 = paramConnectivityManager.getClass().getMethod("requestRouteToHostAddress", new Class[] { Integer.TYPE, InetAddress.class });
      if (localObject1 != null)
      {
        bool = aal.a((Boolean)((Method)localObject1).invoke(paramConnectivityManager, new Object[] { d, paramInetAddress }), false);
        return bool;
      }
    }
    catch (Exception localException)
    {
      localObject2 = String.valueOf(localException);
      ezi.e("Babel_SMS", String.valueOf(localObject2).length() + 50 + "Call hidden requestRouteToHostAddress failed with " + (String)localObject2, new Object[0]);
    }
    try
    {
      localObject2 = Integer.TYPE;
      Class localClass = Integer.TYPE;
      localObject2 = Class.forName(paramConnectivityManager.getClass().getName()).getMethod("requestRouteToHost", new Class[] { localObject2, localClass });
      ((Method)localObject2).setAccessible(true);
      paramInetAddress = paramInetAddress.getAddress();
      int i = paramInetAddress[3];
      int j = paramInetAddress[2];
      int k = paramInetAddress[1];
      bool = aal.a((Boolean)((Method)localObject2).invoke(paramConnectivityManager, new Object[] { Integer.valueOf(2), Integer.valueOf(paramInetAddress[0] & 0xFF | (i & 0xFF) << 24 | (j & 0xFF) << 16 | (k & 0xFF) << 8) }), false);
      return bool;
    }
    catch (ClassNotFoundException paramConnectivityManager)
    {
      throw new RuntimeException("Cannot request route to host", paramConnectivityManager);
    }
    catch (IllegalAccessException paramConnectivityManager)
    {
      for (;;) {}
    }
    catch (NoSuchMethodException paramConnectivityManager)
    {
      for (;;) {}
    }
    catch (InvocationTargetException paramConnectivityManager)
    {
      for (;;) {}
    }
  }
  
  private static int b(ConnectivityManager paramConnectivityManager)
  {
    int i = 0;
    for (;;)
    {
      try
      {
        paramConnectivityManager = paramConnectivityManager.getClass().getMethod("getLinkProperties", new Class[] { Integer.TYPE }).invoke(paramConnectivityManager, new Object[] { d });
        Object localObject = String.valueOf(paramConnectivityManager);
        ezi.c("Babel_SMS", String.valueOf(localObject).length() + 10 + "MMS link: " + (String)localObject, new Object[0]);
        paramConnectivityManager = ((Collection)paramConnectivityManager.getClass().getMethod("getAddresses", new Class[0]).invoke(paramConnectivityManager, new Object[0])).iterator();
        int j = i;
        if (paramConnectivityManager.hasNext())
        {
          localObject = (InetAddress)paramConnectivityManager.next();
          if ((localObject instanceof Inet4Address))
          {
            i |= 0x1;
          }
          else
          {
            boolean bool = localObject instanceof Inet6Address;
            if (bool) {
              i |= 0x2;
            }
          }
        }
        else
        {
          return j;
        }
      }
      catch (Exception paramConnectivityManager)
      {
        j = 3;
      }
    }
  }
  
  public static eol b(Context paramContext)
  {
    ezi.c("Babel_SMS", "MmsSendReceiveManager.acquireMmsNetwork", new Object[0]);
    for (;;)
    {
      long l3;
      long l2;
      long l4;
      synchronized (b)
      {
        be = null;
        enh localenh2 = b;
        a += 1;
        a(paramContext);
        if (bb)
        {
          paramContext = bd;
          return paramContext;
        }
        l3 = SystemClock.elapsedRealtime();
        l2 = aal.a(aal.oJ, "babel_mms_network_acquire_timeout_in_millis", 180000L);
        l4 = aal.a(aal.oJ, "babel_mms_network_acquire_wait_interval", 15000L);
        l1 = l2;
        if (l1 <= 0L) {
          break;
        }
      }
      try
      {
        b.wait(Math.min(l1, l4));
        if ((!bb) && (be != null)) {
          if ((be instanceof enk))
          {
            throw ((enk)be);
            paramContext = finally;
            throw paramContext;
          }
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          ezi.d("Babel_SMS", "MmsSendReceiveManager: acquire network wait interrupted", new Object[0]);
        }
        if ((be instanceof end)) {
          throw ((end)be);
        }
        ezi.d("Babel_SMS", "MmsSendReceiveManager: unknown exception", be);
        throw new enk(be);
      }
      a(paramContext);
      if (bb)
      {
        paramContext = bd;
        return paramContext;
      }
      long l1 = l2 - (SystemClock.elapsedRealtime() - l3);
    }
    throw new enk("Acquiring MMS network timed out");
  }
  
  public static void c(Context paramContext)
  {
    synchronized (b)
    {
      int i = ba;
      ezi.c("Babel_SMS", 59 + "MmsSendReceiveManager.releaseMmsNetwork senders=" + i, new Object[0]);
      Object localObject = b;
      a -= 1;
      if (ba <= 0)
      {
        b.a();
        ezi.c("Babel_SMS", "MmsSendReceiveManager.endMmsConnectivity", new Object[0]);
        paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      }
      try
      {
        localObject = paramContext.getClass().getMethod("stopUsingNetworkFeature", c);
        ((Method)localObject).setAccessible(true);
        ((Method)localObject).invoke(paramContext, new Object[] { Integer.valueOf(0), "enableMMS" });
        bb = false;
        bd = null;
        return;
      }
      catch (NoSuchMethodException paramContext)
      {
        for (;;) {}
      }
      catch (InvocationTargetException paramContext)
      {
        for (;;) {}
      }
      catch (IllegalAccessException paramContext)
      {
        for (;;) {}
      }
      throw new RuntimeException("Cannot stop using network feature", paramContext);
    }
  }
  
  private static int d(Context paramContext)
  {
    ezi.c("Babel_SMS", "MmsSendReceiveManager.beginMmsConnectivity", new Object[0]);
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    try
    {
      Method localMethod = paramContext.getClass().getMethod("startUsingNetworkFeature", c);
      localMethod.setAccessible(true);
      i = aal.a((Integer)localMethod.invoke(paramContext, new Object[] { Integer.valueOf(0), "enableMMS" }), -1);
      switch (i)
      {
      default: 
        int j = i;
        if (i >= eon.a.length) {
          j = eon.a.length - 1;
        }
        paramContext = String.valueOf(eon.a[j]);
        if (paramContext.length() == 0) {
          break label159;
        }
        paramContext = "Cannot establish MMS connectivity: ".concat(paramContext);
      }
    }
    catch (IllegalAccessException paramContext)
    {
      int i;
      for (;;)
      {
        throw new RuntimeException("Cannot start using network feature", paramContext);
        paramContext = new String("Cannot establish MMS connectivity: ");
      }
      return i;
    }
    catch (NoSuchMethodException paramContext)
    {
      for (;;) {}
    }
    catch (InvocationTargetException paramContext)
    {
      for (;;) {}
    }
    throw new enk(paramContext);
  }
}

/* Location:
 * Qualified Name:     ene
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */