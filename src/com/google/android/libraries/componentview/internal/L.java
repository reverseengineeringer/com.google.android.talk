package com.google.android.libraries.componentview.internal;

import android.content.Context;
import com.google.android.libraries.componentview.services.application.BuildInfo;
import com.google.android.libraries.componentview.services.application.Logger;

public class L
{
  private boolean a;
  private final String b = "null";
  private final Logger c;
  private final Context d;
  
  public L(BuildInfo paramBuildInfo, Logger paramLogger, Context paramContext)
  {
    a = paramBuildInfo.a();
    c = paramLogger;
    d = paramContext;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.internal.L
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */