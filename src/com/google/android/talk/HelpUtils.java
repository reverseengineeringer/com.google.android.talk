package com.google.android.talk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gsf.Gservices;
import java.util.Locale;

public class HelpUtils
{
  private static void openUrl(Context paramContext, Uri paramUri)
  {
    paramUri = new Intent("android.intent.action.VIEW", paramUri);
    paramUri.putExtra("com.android.browser.application_id", paramContext.getPackageName());
    paramContext.startActivity(paramUri);
  }
  
  private static String replaceLocale(String paramString)
  {
    Object localObject = paramString;
    if (paramString.contains("%locale%"))
    {
      localObject = Locale.getDefault();
      localObject = paramString.replace("%locale%", ((Locale)localObject).getLanguage() + "_" + ((Locale)localObject).getCountry().toLowerCase());
    }
    return (String)localObject;
  }
  
  public static void showFeedbackForm(Context paramContext)
  {
    paramContext.bindService(new Intent("android.intent.action.BUG_REPORT"), new ServiceConnection()
    {
      public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
      {
        try
        {
          paramAnonymousIBinder.transact(1, Parcel.obtain(), null, 0);
          return;
        }
        catch (RemoteException paramAnonymousComponentName)
        {
          Log.d("ServiceConn", paramAnonymousComponentName.getMessage());
        }
      }
      
      public void onServiceDisconnected(ComponentName paramAnonymousComponentName) {}
    }, 1);
  }
  
  public static void showHelp(Context paramContext, String paramString)
  {
    Object localObject2 = Gservices.getString(paramContext.getContentResolver(), "gtalk_context_sensitive_help_url");
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = "http://www.google.com/support/mobile/?hl=%locale%";
    }
    localObject2 = Uri.parse(replaceLocale((String)localObject1)).buildUpon();
    localObject1 = localObject2;
    if (paramString != null) {
      localObject1 = ((Uri.Builder)localObject2).appendQueryParameter("p", paramString);
    }
    try
    {
      paramString = ((Uri.Builder)localObject1).appendQueryParameter("version", String.valueOf(getPackageManagergetPackageInfogetApplicationInfopackageName, 0).versionCode));
      openUrl(paramContext, paramString.build());
      return;
    }
    catch (PackageManager.NameNotFoundException paramString)
    {
      for (;;)
      {
        Log.e("talk", "Error finding package " + getApplicationInfopackageName);
        paramString = (String)localObject1;
      }
    }
  }
  
  public static void showTermsOfService(Context paramContext)
  {
    String str = Gservices.getString(paramContext.getContentResolver(), "gtalk_terms_of_service_url");
    openUrl(paramContext, Uri.parse("http://" + str));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.HelpUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */