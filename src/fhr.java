import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageInstaller.SessionInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public final class fhr
{
  @Deprecated
  public static final int a = 7895000;
  public static boolean b = false;
  public static boolean c = false;
  static final AtomicBoolean d = new AtomicBoolean();
  private static int e = -1;
  private static final Object f = new Object();
  private static String g = null;
  private static Integer h = null;
  
  @Deprecated
  public static int a(Context paramContext)
  {
    int j = 9;
    int i;
    if (fkz.a)
    {
      i = 0;
      return i;
    }
    PackageManager localPackageManager = paramContext.getPackageManager();
    for (;;)
    {
      try
      {
        paramContext.getResources().getString(aal.st);
        if ("com.google.android.gms".equals(paramContext.getPackageName())) {
          break label272;
        }
      }
      catch (Throwable localThrowable)
      {
        synchronized (f)
        {
          if (g == null)
          {
            g = paramContext.getPackageName();
            try
            {
              localObject3 = getPackageManagergetApplicationInfogetPackageName128metaData;
              if (localObject3 == null) {
                continue;
              }
              h = Integer.valueOf(((Bundle)localObject3).getInt("com.google.android.gms.version"));
            }
            catch (PackageManager.NameNotFoundException localNameNotFoundException1)
            {
              Object localObject3;
              Log.wtf("GooglePlayServicesUtil", "This should never happen.", localNameNotFoundException1);
              continue;
            }
            localObject3 = h;
            if (localObject3 != null) {
              break;
            }
            throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            localThrowable = localThrowable;
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
            continue;
            h = null;
          }
        }
      }
      if (!g.equals(paramContext.getPackageName())) {
        throw new IllegalArgumentException("isGooglePlayServicesAvailable should only be called with Context from your application's package. A previous call used package '" + g + "' and this call used package '" + paramContext.getPackageName() + "'.");
      }
    }
    if (localNameNotFoundException1.intValue() != a) {
      throw new IllegalStateException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + a + " but found " + localNameNotFoundException1 + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version" + "\" android:value=\"@integer/google_play_services_version\" />");
    }
    label272:
    label327:
    label385:
    do
    {
      Object localObject4;
      for (;;)
      {
        try
        {
          localObject2 = localPackageManager.getPackageInfo("com.google.android.gms", 64);
          localObject4 = fht.a;
          if (versionCode % 1000 / 100 == 3)
          {
            i = 1;
            if ((i == 0) && (!fms.a(paramContext))) {
              break label385;
            }
            i = j;
            if (fht.a((PackageInfo)localObject2, fsg.a) == null) {
              break;
            }
            i = a / 1000;
            if (versionCode / 1000 >= i) {
              break label458;
            }
            new StringBuilder("Google Play services out of date.  Requires ").append(a).append(" but found ").append(versionCode);
            return 2;
          }
        }
        catch (PackageManager.NameNotFoundException paramContext)
        {
          return 1;
        }
        i = 0;
      }
      try
      {
        localObject4 = fht.a(localPackageManager.getPackageInfo("com.android.vending", 64), fsg.a);
        i = j;
        if (localObject4 == null) {
          break;
        }
        localObject4 = fht.a((PackageInfo)localObject2, new fmx[] { localObject4 });
        if (localObject4 != null) {
          break label327;
        }
        return 9;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        i = j;
      }
      if (!a(paramContext, "com.android.vending")) {
        break;
      }
    } while (fht.a((PackageInfo)localObject2, fsg.a) != null);
    return 9;
    label458:
    Object localObject2 = applicationInfo;
    paramContext = (Context)localObject2;
    if (localObject2 == null) {}
    try
    {
      paramContext = localPackageManager.getApplicationInfo("com.google.android.gms", 0);
      if (!enabled) {
        return 3;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.");
      paramContext.printStackTrace();
      return 1;
    }
    return 0;
  }
  
  @Deprecated
  public static Dialog a(int paramInt1, Activity paramActivity, int paramInt2)
  {
    return b(paramInt1, paramActivity, null, paramInt2, null);
  }
  
  @Deprecated
  public static Intent a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
    case 2: 
      return flt.b("com.google.android.gms");
    case 42: 
      return flt.a();
    }
    return flt.a("com.google.android.gms");
  }
  
  @Deprecated
  public static void a(int paramInt, Context paramContext)
  {
    PendingIntent localPendingIntent = null;
    int i = paramInt;
    if (fms.a(paramContext))
    {
      i = paramInt;
      if (paramInt == 2) {
        i = 42;
      }
    }
    if (!b(paramContext, i)) {
      if (i != 9) {
        break label70;
      }
    }
    label70:
    for (boolean bool = a(paramContext, "com.android.vending"); bool; bool = false)
    {
      paramContext = new fhs(paramContext);
      paramContext.sendMessageDelayed(paramContext.obtainMessage(1), 120000L);
      return;
    }
    Object localObject3 = paramContext.getResources();
    Object localObject4 = e(paramContext);
    Object localObject1 = paramContext.getResources();
    Object localObject2;
    switch (i)
    {
    default: 
      Log.e("GoogleApiAvailability", "Unexpected error code " + i);
      localObject1 = null;
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = ((Resources)localObject3).getString(aal.sq);
      }
      localObject1 = paramContext.getResources();
      switch (i)
      {
      default: 
        localObject1 = ((Resources)localObject1).getString(aal.st);
        label378:
        localObject4 = a(i);
        if (localObject4 == null)
        {
          label389:
          if (!fms.a(paramContext)) {
            break label1035;
          }
          aal.a(aal.o(16));
          localObject1 = new Notification.Builder(paramContext).setSmallIcon(aal.sa).setPriority(2).setAutoCancel(true).setStyle(new Notification.BigTextStyle().bigText((String)localObject2 + " " + (String)localObject1)).addAction(aal.rZ, ((Resources)localObject3).getString(aal.sB), localPendingIntent).build();
          switch (i)
          {
          default: 
            label486:
            paramInt = 0;
            label538:
            if (paramInt != 0) {
              d.set(false);
            }
            break;
          }
        }
        break;
      }
      break;
    }
    for (paramInt = 10436;; paramInt = 39789)
    {
      ((NotificationManager)paramContext.getSystemService("notification")).notify(paramInt, (Notification)localObject1);
      return;
      localObject1 = null;
      break;
      localObject1 = ((Resources)localObject1).getString(aal.sl);
      break;
      localObject1 = ((Resources)localObject1).getString(aal.sh);
      break;
      localObject1 = ((Resources)localObject1).getString(aal.sA);
      break;
      localObject1 = ((Resources)localObject1).getString(aal.sy);
      break;
      localObject1 = ((Resources)localObject1).getString(aal.sd);
      break;
      Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
      localObject1 = ((Resources)localObject1).getString(aal.sv);
      break;
      Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
      localObject1 = ((Resources)localObject1).getString(aal.sp);
      break;
      Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
      localObject1 = null;
      break;
      Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
      localObject1 = null;
      break;
      Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
      localObject1 = ((Resources)localObject1).getString(aal.sn);
      break;
      Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
      localObject1 = null;
      break;
      Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
      localObject1 = null;
      break;
      Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
      localObject1 = ((Resources)localObject1).getString(aal.ss);
      break;
      if (aal.a((Resources)localObject1))
      {
        localObject1 = ((Resources)localObject1).getString(aal.sk, new Object[] { localObject4 });
        break label378;
      }
      localObject1 = ((Resources)localObject1).getString(aal.sj, new Object[] { localObject4 });
      break label378;
      localObject1 = ((Resources)localObject1).getString(aal.sz, new Object[] { localObject4 });
      break label378;
      localObject1 = ((Resources)localObject1).getString(aal.sx, new Object[] { localObject4 });
      break label378;
      localObject1 = ((Resources)localObject1).getString(aal.sb, new Object[] { localObject4 });
      break label378;
      localObject1 = ((Resources)localObject1).getString(aal.sg, new Object[] { localObject4 });
      break label378;
      localObject1 = ((Resources)localObject1).getString(aal.su, new Object[] { localObject4 });
      break label378;
      localObject1 = ((Resources)localObject1).getString(aal.so);
      break label378;
      localObject1 = ((Resources)localObject1).getString(aal.sm);
      break label378;
      localObject1 = ((Resources)localObject1).getString(aal.se, new Object[] { localObject4 });
      break label378;
      localObject1 = ((Resources)localObject1).getString(aal.sr);
      break label378;
      localPendingIntent = PendingIntent.getActivity(paramContext, 0, (Intent)localObject4, 268435456);
      break label389;
      label1035:
      localObject3 = ((Resources)localObject3).getString(aal.sq);
      if (aal.o(11))
      {
        localObject2 = new Notification.Builder(paramContext).setSmallIcon(17301642).setContentTitle((CharSequence)localObject2).setContentText((CharSequence)localObject1).setContentIntent(localPendingIntent).setTicker((CharSequence)localObject3).setAutoCancel(true);
        if (aal.o(20)) {
          ((Notification.Builder)localObject2).setLocalOnly(true);
        }
        if (aal.o(16)) {
          ((Notification.Builder)localObject2).setStyle(new Notification.BigTextStyle().bigText((CharSequence)localObject1));
        }
        for (localObject1 = ((Notification.Builder)localObject2).build();; localObject1 = ((Notification.Builder)localObject2).getNotification())
        {
          if (Build.VERSION.SDK_INT == 19) {
            extras.putBoolean("android.support.localOnly", true);
          }
          break;
        }
      }
      localObject3 = new Notification(17301642, (CharSequence)localObject3, System.currentTimeMillis());
      flags |= 0x10;
      ((Notification)localObject3).setLatestEventInfo(paramContext, (CharSequence)localObject2, (CharSequence)localObject1, localPendingIntent);
      localObject1 = localObject3;
      break label486;
      paramInt = 1;
      break label538;
    }
  }
  
  @Deprecated
  public static boolean a(int paramInt, Activity paramActivity)
  {
    return a(paramInt, paramActivity, 0, null);
  }
  
  @Deprecated
  public static boolean a(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return a(paramInt1, paramActivity, null, paramInt2, paramOnCancelListener);
  }
  
  public static boolean a(int paramInt1, Activity paramActivity, av paramav, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    paramav = b(paramInt1, paramActivity, paramav, paramInt2, paramOnCancelListener);
    if (paramav == null) {
      return false;
    }
    Object localObject;
    if ((paramActivity instanceof ba))
    {
      paramActivity = ((ba)paramActivity).C_();
      localObject = new fhu();
      paramav = (Dialog)aal.b(paramav, "Cannot display null dialog");
      paramav.setOnCancelListener(null);
      paramav.setOnDismissListener(null);
      aj = paramav;
      if (paramOnCancelListener != null) {
        ak = paramOnCancelListener;
      }
      ((fhu)localObject).a(paramActivity, "GooglePlayServicesErrorDialog");
    }
    for (;;)
    {
      return true;
      if (!aal.o(11)) {
        break;
      }
      paramActivity = paramActivity.getFragmentManager();
      localObject = new fhn();
      paramav = (Dialog)aal.b(paramav, "Cannot display null dialog");
      paramav.setOnCancelListener(null);
      paramav.setOnDismissListener(null);
      a = paramav;
      if (paramOnCancelListener != null) {
        b = paramOnCancelListener;
      }
      ((fhn)localObject).show(paramActivity, "GooglePlayServicesErrorDialog");
    }
    throw new RuntimeException("This Activity does not support Fragments.");
  }
  
  public static boolean a(Context paramContext, int paramInt)
  {
    if (a(paramContext, paramInt, "com.google.android.gms"))
    {
      paramContext = paramContext.getPackageManager();
      if (fht.a.a(paramContext, "com.google.android.gms")) {
        return true;
      }
    }
    return false;
  }
  
  private static boolean a(Context paramContext, int paramInt, String paramString)
  {
    boolean bool2 = false;
    if (aal.o(19)) {
      paramContext = (AppOpsManager)paramContext.getSystemService("appops");
    }
    for (;;)
    {
      try
      {
        paramContext.checkPackage(paramInt, paramString);
        bool1 = true;
        return bool1;
      }
      catch (SecurityException paramContext) {}
      paramContext = paramContext.getPackageManager().getPackagesForUid(paramInt);
      boolean bool1 = bool2;
      if (paramContext != null)
      {
        paramInt = 0;
        for (;;)
        {
          bool1 = bool2;
          if (paramInt >= paramContext.length) {
            break;
          }
          if (paramString.equals(paramContext[paramInt])) {
            return true;
          }
          paramInt += 1;
        }
      }
    }
    return false;
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    if (aal.o(21))
    {
      paramContext = paramContext.getPackageManager().getPackageInstaller().getAllSessions().iterator();
      do
      {
        if (!paramContext.hasNext()) {
          break;
        }
      } while (!paramString.equals(((PackageInstaller.SessionInfo)paramContext.next()).getAppPackageName()));
      return true;
    }
    paramContext = paramContext.getPackageManager();
    try
    {
      boolean bool = getApplicationInfo8192enabled;
      if (bool) {
        return true;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public static boolean a(PackageManager paramPackageManager)
  {
    if (!b(paramPackageManager)) {
      if (!b) {
        break label23;
      }
    }
    label23:
    for (boolean bool = c; !bool; bool = "user".equals(Build.TYPE)) {
      return true;
    }
    return false;
  }
  
  private static Dialog b(int paramInt1, Activity paramActivity, av paramav, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    Object localObject3 = null;
    if (paramInt1 == 0) {
      return null;
    }
    int i = paramInt1;
    if (fms.a(paramActivity))
    {
      i = paramInt1;
      if (paramInt1 == 2) {
        i = 42;
      }
    }
    if (aal.o(14))
    {
      localObject1 = new TypedValue();
      paramActivity.getTheme().resolveAttribute(16843529, (TypedValue)localObject1, true);
      if (!"Theme.Dialog.Alert".equals(paramActivity.getResources().getResourceEntryName(resourceId))) {}
    }
    for (Object localObject1 = new AlertDialog.Builder(paramActivity, 5);; localObject1 = null)
    {
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new AlertDialog.Builder(paramActivity);
      }
      ((AlertDialog.Builder)localObject2).setMessage(aal.a(paramActivity, i, e(paramActivity)));
      if (paramOnCancelListener != null) {
        ((AlertDialog.Builder)localObject2).setOnCancelListener(paramOnCancelListener);
      }
      paramOnCancelListener = a(i);
      if (paramav == null)
      {
        paramav = new fla(paramActivity, paramOnCancelListener, paramInt2);
        paramOnCancelListener = aal.e(paramActivity, i);
        if (paramOnCancelListener != null) {
          ((AlertDialog.Builder)localObject2).setPositiveButton(paramOnCancelListener, paramav);
        }
        paramav = paramActivity.getResources();
        paramActivity = (Activity)localObject3;
        switch (i)
        {
        default: 
          Log.e("GoogleApiAvailability", "Unexpected error code " + i);
          paramActivity = (Activity)localObject3;
        }
      }
      for (;;)
      {
        if (paramActivity != null) {
          ((AlertDialog.Builder)localObject2).setTitle(paramActivity);
        }
        return ((AlertDialog.Builder)localObject2).create();
        paramav = new fla(paramav, paramOnCancelListener, paramInt2);
        break;
        paramActivity = paramav.getString(aal.sl);
        continue;
        paramActivity = paramav.getString(aal.sh);
        continue;
        paramActivity = paramav.getString(aal.sA);
        continue;
        paramActivity = paramav.getString(aal.sy);
        continue;
        paramActivity = paramav.getString(aal.sd);
        continue;
        Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
        paramActivity = paramav.getString(aal.sv);
        continue;
        Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
        paramActivity = paramav.getString(aal.sp);
        continue;
        Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
        paramActivity = (Activity)localObject3;
        continue;
        Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
        paramActivity = (Activity)localObject3;
        continue;
        Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
        paramActivity = paramav.getString(aal.sn);
        continue;
        Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
        paramActivity = (Activity)localObject3;
        continue;
        Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
        paramActivity = (Activity)localObject3;
        continue;
        Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
        paramActivity = paramav.getString(aal.ss);
      }
    }
  }
  
  @Deprecated
  public static void b(Context paramContext)
  {
    int i = a(paramContext);
    if (i != 0)
    {
      paramContext = a(i);
      Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + i);
      if (paramContext == null) {
        throw new fhp(i);
      }
      throw new fhq(i, "Google Play Services not available", paramContext);
    }
  }
  
  @Deprecated
  public static boolean b(int paramInt)
  {
    switch (paramInt)
    {
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    default: 
      return false;
    }
    return true;
  }
  
  @Deprecated
  public static boolean b(Context paramContext, int paramInt)
  {
    if (paramInt == 18) {
      return true;
    }
    if (paramInt == 1) {
      return a(paramContext, "com.google.android.gms");
    }
    return false;
  }
  
  private static boolean b(PackageManager paramPackageManager)
  {
    synchronized (f)
    {
      int i = e;
      if (i == -1) {}
      try
      {
        paramPackageManager = paramPackageManager.getPackageInfo("com.google.android.gms", 64);
        fht localfht = fht.a;
        if (fht.a(paramPackageManager, new fmx[] { fmw.b[1] }) != null) {}
        for (e = 1; e != 0; e = 0) {
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException paramPackageManager)
      {
        for (;;)
        {
          e = 0;
        }
      }
    }
    return false;
  }
  
  @Deprecated
  public static void c(Context paramContext)
  {
    if (d.getAndSet(true)) {
      return;
    }
    try
    {
      ((NotificationManager)paramContext.getSystemService("notification")).cancel(10436);
      return;
    }
    catch (SecurityException paramContext) {}
  }
  
  public static Context d(Context paramContext)
  {
    try
    {
      paramContext = paramContext.createPackageContext("com.google.android.gms", 3);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  public static String e(Context paramContext)
  {
    Object localObject2 = getApplicationInfoname;
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject1 = paramContext.getPackageName();
      localObject2 = paramContext.getApplicationContext().getPackageManager();
    }
    try
    {
      paramContext = ((PackageManager)localObject2).getApplicationInfo(paramContext.getPackageName(), 0);
      if (paramContext != null) {
        localObject1 = ((PackageManager)localObject2).getApplicationLabel(paramContext).toString();
      }
      return (String)localObject1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     fhr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */