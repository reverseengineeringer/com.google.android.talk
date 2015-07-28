package com.google.android.videochat;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.util.Log;

class CameraManager$2
  implements MediaPlayer.OnPreparedListener
{
  CameraManager$2(CameraManager paramCameraManager, CameraManager.1Latch param1Latch) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    int i = paramMediaPlayer.getVideoWidth();
    int j = paramMediaPlayer.getVideoHeight();
    Log.v("vclib:CameraManager", "onPrepared width=" + i + ", height=" + j);
    val$preparedLatch.set();
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CameraManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */