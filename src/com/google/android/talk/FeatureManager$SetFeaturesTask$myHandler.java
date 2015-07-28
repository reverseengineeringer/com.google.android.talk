package com.google.android.talk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class FeatureManager$SetFeaturesTask$myHandler
  extends Handler
{
  public FeatureManager$SetFeaturesTask$myHandler(FeatureManager.SetFeaturesTask paramSetFeaturesTask, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if ((what == 1) && (FeatureManager.SetFeaturesTask.access$100(this$0) != null)) {
      FeatureManager.SetFeaturesTask.access$100(this$0).run();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.FeatureManager.SetFeaturesTask.myHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */