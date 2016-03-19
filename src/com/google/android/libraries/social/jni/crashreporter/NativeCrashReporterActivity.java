package com.google.android.libraries.social.jni.crashreporter;

import aal;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import hzp;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

public final class NativeCrashReporterActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str = getIntent().getStringExtra("runnableName");
    paramBundle = getIntent().getSerializableExtra("runnableArgs");
    if (paramBundle != null) {}
    for (paramBundle = (HashMap)paramBundle;; paramBundle = null)
    {
      if (str != null) {}
      try
      {
        ((Runnable)Class.forName(str).getDeclaredConstructor(new Class[] { Map.class }).newInstance(new Object[] { paramBundle })).run();
        aal.a(new hzp(this, getIntent().getStringExtra("description")), 3000L);
        return;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        paramBundle = String.valueOf(str);
        if (paramBundle.length() != 0) {}
        for (paramBundle = "Failed to find class: ".concat(paramBundle);; paramBundle = new String("Failed to find class: "))
        {
          Log.e("NativeCrashReporterActivity", paramBundle, localClassNotFoundException);
          break;
        }
      }
      catch (InstantiationException localInstantiationException)
      {
        paramBundle = String.valueOf(str);
        if (paramBundle.length() != 0) {}
        for (paramBundle = "Failed to instantiate class: ".concat(paramBundle);; paramBundle = new String("Failed to instantiate class: "))
        {
          Log.e("NativeCrashReporterActivity", paramBundle, localInstantiationException);
          break;
        }
      }
      catch (NoSuchMethodException paramBundle)
      {
        for (;;)
        {
          Log.e("NativeCrashReporterActivity", "Failed to find constructor that takes a Map<String,String> as argument", paramBundle);
        }
      }
      catch (Exception localException)
      {
        paramBundle = String.valueOf(str);
        if (paramBundle.length() == 0) {}
      }
      for (paramBundle = "Failed to execute runnable: ".concat(paramBundle);; paramBundle = new String("Failed to execute runnable: "))
      {
        Log.e("NativeCrashReporterActivity", paramBundle, localException);
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.jni.crashreporter.NativeCrashReporterActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */