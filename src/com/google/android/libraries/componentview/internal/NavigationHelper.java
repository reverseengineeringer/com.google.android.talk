package com.google.android.libraries.componentview.internal;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.LogInfo;
import com.google.android.libraries.componentview.components.base.api.nano.ActionProto.Action;
import com.google.android.libraries.componentview.inject.annotations.ExecutorType.UI;
import com.google.android.libraries.componentview.services.application.Fetcher;
import com.google.android.libraries.componentview.services.application.Logger;
import com.google.android.libraries.componentview.services.application.Navigator;
import com.google.android.libraries.componentview.services.application.Notification;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import lau;

public class NavigationHelper
{
  final Navigator a;
  private final Logger b;
  private final Notification c;
  private final Fetcher d;
  private final Executor e;
  
  public NavigationHelper(Navigator paramNavigator, Logger paramLogger, Notification paramNotification, Fetcher paramFetcher, @ExecutorType.UI Executor paramExecutor)
  {
    a = paramNavigator;
    b = paramLogger;
    c = paramNotification;
    d = paramFetcher;
    e = paramExecutor;
  }
  
  void a(ActionProto.Action paramAction)
  {
    if (paramAction.g() > -1L) {
      new HashMap().put("action_type", Long.toString(paramAction.g()));
    }
  }
  
  public void a(ActionProto.Action paramAction, ComponentsProto.LogInfo paramLogInfo)
  {
    if (paramAction.h() == 2) {
      try
      {
        paramLogInfo = new URI(paramAction.d());
        lau.a(d.a(paramLogInfo, false), new NavigationHelper.1(this, paramAction), e);
        return;
      }
      catch (URISyntaxException paramAction)
      {
        Log.e("NavigationHelper", paramAction.toString());
        return;
      }
    }
    if ((paramLogInfo == null) || (!paramLogInfo.d()))
    {
      if (TextUtils.isEmpty(paramAction.f())) {
        break label203;
      }
      a.a(paramAction.f());
    }
    for (;;)
    {
      a(paramAction);
      return;
      if (!TextUtils.isEmpty(paramAction.i()))
      {
        Uri.Builder localBuilder = Uri.parse(paramAction.i()).buildUpon();
        localBuilder.appendQueryParameter("ved", paramLogInfo.f());
        b.a(localBuilder.toString());
        break;
      }
      if (paramAction.e())
      {
        b.a(paramAction.d(), paramLogInfo.f(), paramLogInfo.e());
        break;
      }
      b.a(paramAction.f(), paramLogInfo.f(), paramLogInfo.e());
      break;
      label203:
      if (TextUtils.isEmpty(paramAction.d())) {
        break label229;
      }
      a.a(paramAction.d());
    }
    label229:
    paramLogInfo = String.valueOf(paramAction.toString());
    if (paramLogInfo.length() != 0) {}
    for (paramLogInfo = "No way to handle action: ".concat(paramLogInfo);; paramLogInfo = new String("No way to handle action: "))
    {
      Log.e("NavigationHelper", paramLogInfo);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.internal.NavigationHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */