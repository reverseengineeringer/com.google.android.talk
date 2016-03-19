package com.google.android.libraries.componentview.services.application;

import android.content.Context;
import android.content.pm.ApplicationInfo;

public class DefaultBuildInfo
  implements BuildInfo
{
  private final Context a;
  
  public DefaultBuildInfo(Context paramContext)
  {
    a = paramContext;
  }
  
  public boolean a()
  {
    return (a.getApplicationInfo().flags & 0x2) != 0;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.application.DefaultBuildInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */