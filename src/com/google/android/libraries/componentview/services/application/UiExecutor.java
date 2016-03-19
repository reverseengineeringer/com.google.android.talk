package com.google.android.libraries.componentview.services.application;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public class UiExecutor
  implements Executor
{
  private Handler a = new Handler(Looper.getMainLooper());
  
  public void execute(Runnable paramRunnable)
  {
    a.post(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.application.UiExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */