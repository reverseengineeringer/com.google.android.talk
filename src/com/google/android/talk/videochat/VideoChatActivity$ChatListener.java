package com.google.android.talk.videochat;

import android.os.Handler;
import android.widget.LinearLayout;
import com.google.android.gtalkservice.IChatListener.Stub;
import com.google.android.talk.StringUtils;

class VideoChatActivity$ChatListener
  extends IChatListener.Stub
{
  private VideoChatActivity mActivity;
  private String mBareJid;
  
  public void callEnded() {}
  
  public void chatClosed(String paramString) {}
  
  public void chatRead(String paramString) {}
  
  public void convertedToGroupChat(String paramString1, String paramString2, long paramLong) {}
  
  public VideoChatActivity getActivity()
  {
    return mActivity;
  }
  
  public String getJid()
  {
    return mBareJid;
  }
  
  public void missedCall() {}
  
  public void newMessageReceived(String paramString1, String paramString2, boolean paramBoolean)
  {
    try
    {
      if (mActivity != null) {
        VideoChatActivity.access$900(mActivity).post(new MessageRunnable(mActivity, paramString1, paramString2));
      }
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  /* Error */
  public void newMessageSent(String arg1)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 31	com/google/android/talk/videochat/VideoChatActivity$ChatListener:mActivity	Lcom/google/android/talk/videochat/VideoChatActivity;
    //   6: ifnull +27 -> 33
    //   9: aload_0
    //   10: getfield 31	com/google/android/talk/videochat/VideoChatActivity$ChatListener:mActivity	Lcom/google/android/talk/videochat/VideoChatActivity;
    //   13: invokestatic 56	com/google/android/talk/videochat/VideoChatActivity:access$1700	(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;
    //   16: astore_1
    //   17: aload_1
    //   18: monitorenter
    //   19: aload_0
    //   20: getfield 31	com/google/android/talk/videochat/VideoChatActivity$ChatListener:mActivity	Lcom/google/android/talk/videochat/VideoChatActivity;
    //   23: invokestatic 56	com/google/android/talk/videochat/VideoChatActivity:access$1700	(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;
    //   26: invokeinterface 61 1 0
    //   31: aload_1
    //   32: monitorexit
    //   33: aload_0
    //   34: monitorexit
    //   35: return
    //   36: astore_2
    //   37: aload_1
    //   38: monitorexit
    //   39: aload_2
    //   40: athrow
    //   41: astore_1
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_1
    //   45: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	this	ChatListener
    //   36	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   19	33	36	finally
    //   37	39	36	finally
    //   2	19	41	finally
    //   39	41	41	finally
  }
  
  public void participantJoined(String paramString1, String paramString2) {}
  
  public void participantLeft(String paramString1, String paramString2) {}
  
  public void removeAssociation(VideoChatActivity paramVideoChatActivity)
  {
    if (mActivity == paramVideoChatActivity)
    {
      mActivity = null;
      mBareJid = null;
    }
  }
  
  public void setActivity(VideoChatActivity paramVideoChatActivity)
  {
    mActivity = paramVideoChatActivity;
  }
  
  public void setJid(String paramString)
  {
    mBareJid = paramString;
  }
  
  public boolean useLightweightNotify()
  {
    return true;
  }
  
  public void willConvertToGroupChat(String paramString1, String paramString2, long paramLong) {}
  
  private static class MessageRunnable
    implements Runnable
  {
    private final VideoChatActivity mActivity;
    private String mBody;
    private String mFullJid;
    
    public MessageRunnable(VideoChatActivity paramVideoChatActivity, String paramString1, String paramString2)
    {
      mActivity = paramVideoChatActivity;
      mFullJid = paramString1;
      mBody = paramString2;
    }
    
    public void run()
    {
      String str = StringUtils.parseBareAddress(mFullJid);
      if ((VideoChatActivity.access$1100(mActivity).equals(str)) && (VideoChatActivity.access$1200(mActivity)))
      {
        VideoChatActivity.access$1300(mActivity, mBody);
        if (VideoChatActivity.access$1400(mActivity).getVisibility() == 8) {
          VideoChatActivity.access$1400(mActivity).setVisibility(0);
        }
        VideoChatActivity.access$1500(mActivity);
        VideoChatActivity.access$1600(mActivity, 5000L);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.ChatListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */