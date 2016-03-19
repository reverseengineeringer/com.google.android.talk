package com.google.android.libraries.componentview.services.application;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.net.URISyntaxException;

public class DefaultNavigator
  implements Navigator
{
  private final Context a;
  
  public DefaultNavigator(Context paramContext)
  {
    a = paramContext;
  }
  
  public void a(String paramString)
  {
    try
    {
      Intent localIntent = Intent.parseUri(paramString, 1).addCategory("android.intent.category.BROWSABLE").setComponent(null);
      localIntent.setFlags(268435456);
      a.startActivity(localIntent);
      return;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {}
    }
    for (paramString = "Failed to execute action: ".concat(paramString);; paramString = new String("Failed to execute action: "))
    {
      Log.e("DefaultNavigator", paramString, localURISyntaxException);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.application.DefaultNavigator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */