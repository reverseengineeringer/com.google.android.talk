package com.google.android.talk;

import android.app.Activity;
import android.view.Window;

public class NetworkProgressMonitor
  implements IProgressMonitor
{
  private Activity mActivity;
  private Runnable mDoneRunnable;
  
  public NetworkProgressMonitor(Activity paramActivity, Runnable paramRunnable)
  {
    mActivity = paramActivity;
    mDoneRunnable = paramRunnable;
  }
  
  public void beginTask(CharSequence paramCharSequence, int paramInt)
  {
    mActivity.getWindow().setFeatureInt(5, -1);
  }
  
  public void done()
  {
    if (mDoneRunnable != null) {
      mDoneRunnable.run();
    }
    mActivity.getWindow().setFeatureInt(5, -2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.NetworkProgressMonitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */