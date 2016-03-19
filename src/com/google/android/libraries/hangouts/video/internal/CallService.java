package com.google.android.libraries.hangouts.video.internal;

import android.app.Service;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import gvj;
import hcd;
import hcr;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class CallService
  extends Service
{
  public hcd a;
  private final hcr b = new hcr(this);
  
  public static long a(Context paramContext)
  {
    try
    {
      int i = getPackageManagergetPackageInfogetPackageName0versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      throw new RuntimeException(paramContext);
    }
  }
  
  public static String b(Context paramContext)
  {
    return gvj.a(paramContext.getContentResolver(), "babel_hangout_apiary_path", "https://www.googleapis.com/hangouts/v1android/");
  }
  
  public hcr a()
  {
    return b;
  }
  
  protected void dump(FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    if (a == null)
    {
      paramPrintWriter.println("No call connected");
      return;
    }
    a.a(paramPrintWriter);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.CallService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */