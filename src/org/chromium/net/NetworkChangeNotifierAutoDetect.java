package org.chromium.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager.NetworkCallback;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.NetworkRequest.Builder;
import android.os.Build.VERSION;
import mqj;
import mqk;
import mqp;
import mqq;
import mqr;
import org.chromium.base.ThreadUtils;

public class NetworkChangeNotifierAutoDetect
  extends BroadcastReceiver
{
  public final NetworkChangeNotifierAutoDetect.Observer a;
  public mqj b;
  private final mqp c;
  private final Context d;
  private final NetworkChangeNotifierAutoDetect.RegistrationPolicy e;
  private mqr f;
  private final ConnectivityManager.NetworkCallback g;
  private final NetworkRequest h;
  private boolean i;
  private int j;
  private String k;
  private double l;
  private int m;
  
  public NetworkChangeNotifierAutoDetect(NetworkChangeNotifierAutoDetect.Observer paramObserver, Context paramContext, NetworkChangeNotifierAutoDetect.RegistrationPolicy paramRegistrationPolicy)
  {
    ThreadUtils.b();
    a = paramObserver;
    d = paramContext.getApplicationContext();
    b = new mqj(paramContext);
    f = new mqr(paramContext);
    if (Build.VERSION.SDK_INT >= 21) {
      g = new mqk(this);
    }
    for (h = new NetworkRequest.Builder().addCapability(12).build();; h = null)
    {
      paramObserver = b.a();
      j = a(paramObserver);
      k = c(paramObserver);
      l = b(paramObserver);
      m = j;
      c = new mqp(f.c());
      e = paramRegistrationPolicy;
      e.a(this);
      return;
      g = null;
    }
  }
  
  private String c(mqq parammqq)
  {
    if (a(parammqq) != 2) {
      return "";
    }
    return f.a();
  }
  
  private void d(mqq parammqq)
  {
    int n = a(parammqq);
    parammqq = c(parammqq);
    if ((n == j) && (parammqq.equals(k))) {
      return;
    }
    j = n;
    k = parammqq;
    new StringBuilder("Network connectivity changed, type is: ").append(j);
    a.a(n);
  }
  
  private void e(mqq parammqq)
  {
    double d1 = b(parammqq);
    if ((d1 == l) && (j == m)) {
      return;
    }
    l = d1;
    m = j;
    a.a(d1);
  }
  
  public int a(mqq parammqq)
  {
    int i1 = 5;
    if (!parammqq.a())
    {
      n = 6;
      return n;
    }
    int n = i1;
    switch (parammqq.b())
    {
    case 6: 
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
    case 7: 
      return 7;
    }
    n = i1;
    switch (parammqq.c())
    {
    case 13: 
    default: 
      return 0;
    case 1: 
    case 2: 
    case 4: 
    case 7: 
    case 11: 
      return 3;
    }
    return 4;
  }
  
  public void a()
  {
    e.a();
    c();
  }
  
  public double b(mqq parammqq)
  {
    int i1 = 30;
    int n;
    if (a(parammqq) == 2)
    {
      n = f.b();
      if (n != -1) {
        return n;
      }
    }
    if (!parammqq.a()) {
      n = 31;
    }
    for (;;)
    {
      return NetworkChangeNotifier.a(n);
      n = i1;
      switch (parammqq.b())
      {
      case 1: 
      case 6: 
      case 7: 
      case 9: 
      case 2: 
      case 3: 
      case 4: 
      case 5: 
      case 8: 
      default: 
        n = i1;
        break;
      case 0: 
        switch (parammqq.c())
        {
        default: 
          n = i1;
          break;
        case 1: 
          n = 4;
          break;
        case 2: 
          n = 5;
          break;
        case 4: 
          n = 2;
          break;
        case 7: 
          n = 3;
          break;
        case 11: 
          n = 1;
          break;
        case 3: 
          n = 6;
          break;
        case 5: 
          n = 7;
          break;
        case 6: 
          n = 8;
          break;
        case 8: 
          n = 11;
          break;
        case 9: 
          n = 12;
          break;
        case 10: 
          n = 9;
          break;
        case 12: 
          n = 10;
          break;
        case 14: 
          n = 13;
          break;
        case 15: 
          n = 14;
          break;
        case 13: 
          n = 15;
        }
        break;
      }
    }
  }
  
  public void b()
  {
    if (i) {}
    do
    {
      return;
      localObject = d();
      d((mqq)localObject);
      e((mqq)localObject);
      d.registerReceiver(this, c);
      i = true;
    } while (g == null);
    b.a(h, g);
    Object localObject = b.b();
    int[] arrayOfInt = new int[localObject.length];
    int n = 0;
    while (n < localObject.length)
    {
      arrayOfInt[n] = Integer.parseInt(localObject[n].toString());
      n += 1;
    }
    a.a(arrayOfInt);
  }
  
  public void c()
  {
    if (!i) {}
    do
    {
      return;
      d.unregisterReceiver(this);
      i = false;
    } while (g == null);
    b.a(g);
  }
  
  public mqq d()
  {
    return b.a();
  }
  
  public int[] e()
  {
    if (Build.VERSION.SDK_INT < 21) {
      return new int[0];
    }
    Object localObject = b.b();
    int[] arrayOfInt = new int[localObject.length << 1];
    int i3 = localObject.length;
    int n = 0;
    int i2;
    for (int i1 = 0; n < i3; i1 = i2)
    {
      Network localNetwork = localObject[n];
      i2 = i1;
      if (b.b(localNetwork))
      {
        int i4 = i1 + 1;
        arrayOfInt[i1] = Integer.parseInt(localNetwork.toString());
        i2 = i4 + 1;
        arrayOfInt[i4] = a(b.a(localNetwork));
      }
      n += 1;
    }
    localObject = new int[i1];
    System.arraycopy(arrayOfInt, 0, localObject, 0, i1);
    return (int[])localObject;
  }
  
  public int f()
  {
    if (Build.VERSION.SDK_INT < 21) {
      return -1;
    }
    return b.c();
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = d();
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction()))
    {
      d(paramContext);
      e(paramContext);
    }
    while (!"android.net.wifi.RSSI_CHANGED".equals(paramIntent.getAction())) {
      return;
    }
    e(paramContext);
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.NetworkChangeNotifierAutoDetect
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */