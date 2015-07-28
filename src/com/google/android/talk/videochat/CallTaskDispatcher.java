package com.google.android.talk.videochat;

import android.content.ComponentName;
import android.content.Context;
import com.google.android.talk.TalkApp;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.VideoChatService.HardBinder;
import com.google.android.videochat.VideoChatServiceBinder;
import com.google.android.videochat.VideoChatServiceBinder.ServiceBoundCallback;
import java.util.LinkedList;
import java.util.Queue;

public class CallTaskDispatcher
{
  private final Queue<CallTask> mCallTaskQueue = new LinkedList();
  private Context mContext;
  private VideoChatServiceBinder mVcBinder;
  
  public CallTaskDispatcher(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private void bindVideoChatService()
  {
    mVcBinder = new VideoChatServiceBinder(mContext, new ComponentName(mContext, VideoChatOutputReceiver.class));
    mVcBinder.bind(new VideoChatServiceBinder.ServiceBoundCallback()
    {
      public void onServiceBound(VideoChatService.HardBinder paramAnonymousHardBinder)
      {
        CallTaskDispatcher.this.onVideoChatServiceBound(paramAnonymousHardBinder);
      }
    });
  }
  
  private void onVideoChatServiceBound(VideoChatService.HardBinder arg1)
  {
    CallSession localCallSession = ???.getCallSession();
    if (localCallSession != null)
    {
      synchronized (mCallTaskQueue)
      {
        if (!mCallTaskQueue.isEmpty()) {
          ((CallTask)mCallTaskQueue.remove()).runTask(localCallSession);
        }
      }
      mVcBinder.unbind();
      mVcBinder = null;
      return;
    }
    TalkApp.LOGE("Talk:CallTaskDispatcher", "Bound to service, but call session is null!!!");
  }
  
  public void postCallTask(CallTask paramCallTask)
  {
    synchronized (mCallTaskQueue)
    {
      if (mCallTaskQueue.isEmpty()) {
        bindVideoChatService();
      }
      mCallTaskQueue.add(paramCallTask);
      return;
    }
  }
  
  public static abstract interface CallTask
  {
    public abstract void runTask(CallSession paramCallSession);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.CallTaskDispatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */