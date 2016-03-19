package com.google.android.libraries.componentview.internal;

import android.util.Log;
import com.google.android.libraries.componentview.components.base.api.nano.ActionProto.Action;
import com.google.android.libraries.componentview.services.application.Fetcher.Response;
import com.google.android.libraries.componentview.services.application.Navigator;
import lat;

class NavigationHelper$1
  implements lat<Fetcher.Response>
{
  NavigationHelper$1(NavigationHelper paramNavigationHelper, ActionProto.Action paramAction) {}
  
  public void a(Fetcher.Response paramResponse)
  {
    if ((paramResponse == null) || (!c))
    {
      paramResponse = String.valueOf(a.toString());
      if (paramResponse.length() != 0) {}
      for (paramResponse = "Fetch failed, Unable to handle action: ".concat(paramResponse);; paramResponse = new String("Fetch failed, Unable to handle action: "))
      {
        Log.e("NavigationHelper", paramResponse);
        return;
      }
    }
    if ((d != 302) || (f.isEmpty()))
    {
      paramResponse = String.valueOf(a.toString());
      if (paramResponse.length() != 0) {}
      for (paramResponse = "Unexpected response from server, Unable to handle action: ".concat(paramResponse);; paramResponse = new String("Unexpected response from server, Unable to handle action: "))
      {
        Log.e("NavigationHelper", paramResponse);
        return;
      }
    }
    b.a.a(f);
    b.a(a);
  }
  
  public void a(Throwable paramThrowable)
  {
    paramThrowable = String.valueOf(a.toString());
    if (paramThrowable.length() != 0) {}
    for (paramThrowable = "Unable to handle action: ".concat(paramThrowable);; paramThrowable = new String("Unable to handle action: "))
    {
      Log.e("NavigationHelper", paramThrowable);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.internal.NavigationHelper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */