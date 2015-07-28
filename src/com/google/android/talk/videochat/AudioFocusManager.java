package com.google.android.talk.videochat;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.videochat.util.LogUtil;

public class AudioFocusManager
{
  private static AudioFocusManager sInstance;
  private static Object sInstanceLock = new Object();
  private AudioManager mAudioManager;
  private int mMode = -1;
  private boolean mRequested;
  private int mStreamType = -1;
  
  private AudioFocusManager(Context paramContext)
  {
    mAudioManager = ((AudioManager)paramContext.getSystemService("audio"));
  }
  
  public static AudioFocusManager getInstance(Context paramContext)
  {
    synchronized (sInstanceLock)
    {
      if (sInstance == null) {
        sInstance = new AudioFocusManager(paramContext);
      }
      return sInstance;
    }
  }
  
  public void abandonAudioFocus()
  {
    try
    {
      if (mRequested)
      {
        mRequested = false;
        LogUtil.LOGD("Talk:AudioFocus", "releasing audio focus");
        mAudioManager.setMode(0);
        mMode = -1;
        mAudioManager.abandonAudioFocus(null);
        mStreamType = -1;
      }
      return;
    }
    finally {}
  }
  
  public void requestAudioFocus(int paramInt1, int paramInt2)
  {
    try
    {
      LogUtil.LOGD("Talk:AudioFocus", "requesting audio focus. mRequested: " + mRequested);
      mRequested = true;
      if (mStreamType != paramInt1)
      {
        LogUtil.LOGV("Talk:AudioFocus", "requestAudioFocus: requesting audio focus for stream type " + paramInt1);
        mAudioManager.requestAudioFocus(null, paramInt1, 2);
        mStreamType = paramInt1;
      }
      if (mMode != paramInt2)
      {
        LogUtil.LOGV("Talk:AudioFocus", "requestAudioFocus: setting mode to " + paramInt2);
        mAudioManager.setMode(paramInt2);
        mMode = paramInt2;
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.AudioFocusManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */