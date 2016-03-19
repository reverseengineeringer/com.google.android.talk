package com.google.android.apps.hangouts.sms;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import emx;
import ezi;
import java.io.File;
import java.util.Random;

public class MmsFileProvider
  extends emx
{
  static final String b;
  
  static
  {
    try
    {
      Class.forName("com.google.android.apps.hangouts.content.EsProvider");
      str1 = "com.google.android.apps.hangouts.sms.MmsFileProvider";
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        String str1;
        String str2 = "com.google.android.apps.hangouts.sms.MmsFileProviderAltBuild";
      }
    }
    b = str1;
  }
  
  public static Uri a(Context paramContext)
  {
    Object localObject = b;
    long l = Math.abs(emx.a.nextLong());
    localObject = new Uri.Builder().authority((String)localObject).scheme("content");
    ((Uri.Builder)localObject).appendPath(String.valueOf(l));
    if (!TextUtils.isEmpty(null)) {
      ((Uri.Builder)localObject).appendQueryParameter("ext", null);
    }
    localObject = ((Uri.Builder)localObject).build();
    paramContext = a(((Uri)localObject).getPath(), paramContext);
    if (!a(paramContext))
    {
      paramContext = String.valueOf(paramContext.getAbsolutePath());
      if (paramContext.length() == 0) {
        break label110;
      }
    }
    label110:
    for (paramContext = "Failed to create temp file ".concat(paramContext);; paramContext = new String("Failed to create temp file "))
    {
      ezi.e("Babel", paramContext, new Object[0]);
      return (Uri)localObject;
    }
  }
  
  public static File a(Uri paramUri, Context paramContext)
  {
    return a(paramUri.getPath(), paramContext);
  }
  
  private static File a(String paramString, Context paramContext)
  {
    return new File(new File(paramContext.getCacheDir(), "rawmms"), String.valueOf(paramString).concat(".dat"));
  }
  
  File a(String paramString)
  {
    return a(paramString, getContext());
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.sms.MmsFileProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */