package com.google.android.talk.videochat;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import com.google.android.gsf.Gservices;
import com.google.android.talk.TalkApp;
import java.io.IOException;

public class OutgoingCallRinger
  implements CallRinger
{
  private Context mContext;
  private boolean mIsPrepared = false;
  private MediaPlayer mMediaPlayer;
  
  public OutgoingCallRinger(Context paramContext, Handler paramHandler)
  {
    mContext = paramContext;
    mMediaPlayer = new MediaPlayer();
    mMediaPlayer.setLooping(true);
    setCustomRingtoneUri(Uri.parse("android.resource://com.google.android.talk/raw/outgoing_call_ring"));
    setStreamType(0);
    int i = Gservices.getInt(paramContext.getContentResolver(), "gtalk_vc_ringback_volume", -1);
    if ((i >= 0) && (i <= 100)) {
      setVolume(i / 100.0F);
    }
  }
  
  private void loge(String paramString)
  {
    TalkApp.LOGE("talk", "[OutgoingCallRinger] " + paramString);
  }
  
  private boolean prepare()
  {
    if (mIsPrepared) {
      return true;
    }
    try
    {
      mMediaPlayer.prepare();
      mIsPrepared = true;
      return true;
    }
    catch (Exception localException)
    {
      loge("Failed to prepare ringer: " + localException);
    }
    return false;
  }
  
  private void setCustomRingtoneUri(Uri paramUri)
  {
    if (mIsPrepared)
    {
      mMediaPlayer.reset();
      mIsPrepared = false;
    }
    try
    {
      mMediaPlayer.setDataSource(mContext, paramUri);
      return;
    }
    catch (IOException paramUri)
    {
      loge("Failed to set data source: " + paramUri);
    }
  }
  
  private void setStreamType(int paramInt)
  {
    if (mIsPrepared)
    {
      mMediaPlayer.reset();
      mIsPrepared = false;
    }
    mMediaPlayer.setAudioStreamType(paramInt);
  }
  
  private void setVolume(float paramFloat)
  {
    mMediaPlayer.setVolume(paramFloat, paramFloat);
  }
  
  public void startRing()
  {
    try
    {
      if (prepare())
      {
        if (mMediaPlayer.isPlaying()) {
          mMediaPlayer.pause();
        }
        mMediaPlayer.seekTo(0);
        mMediaPlayer.start();
      }
      return;
    }
    finally {}
  }
  
  public void stopRing()
  {
    try
    {
      if (mMediaPlayer.isPlaying()) {
        mMediaPlayer.stop();
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.OutgoingCallRinger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */