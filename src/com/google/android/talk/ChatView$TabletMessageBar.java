package com.google.android.talk;

import android.view.View;
import android.widget.ImageButton;
import com.google.android.videochat.CallSession.AudioDevice;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

class ChatView$TabletMessageBar
  extends ChatView.MessageBar
{
  protected HashSet<View> mVisible = new HashSet();
  protected HashMap<ChatView.VideoChatState, View[]> mVisibleMap = new HashMap();
  
  private ChatView$TabletMessageBar(ChatView paramChatView)
  {
    super(paramChatView);
  }
  
  public void bind()
  {
    super.bind();
    HashMap localHashMap = mVisibleMap;
    localHashMap.put(ChatView.VideoChatState.VOICE_ACTIVE, new View[] { mMuteUnmuteButton, mEndAudioButton, mBluetoothButton });
    localHashMap.put(ChatView.VideoChatState.VIDEO_ACTIVE, new View[] { mResumeVideoChatButton, mMuteUnmuteButton, mEndVideoButton, mBluetoothButton });
    localHashMap.put(ChatView.VideoChatState.VIDEO_MUTED, new View[] { mResumeVideoChatButton, mMuteUnmuteButton, mEndVideoButton, mBluetoothButton });
    localHashMap.put(ChatView.VideoChatState.VOICE_MUTED, new View[] { mMuteUnmuteButton, mEndAudioButton, mBluetoothButton });
    localHashMap.put(ChatView.VideoChatState.VOICE_WAITING, new View[] { mCancelAudioButton });
    localHashMap.put(ChatView.VideoChatState.VIDEO_WAITING, new View[] { mCancelVideoButton });
  }
  
  public void update()
  {
    if (mMessageBarContainer == null)
    {
      ChatView.access$000(this$0, "MessageBar.update: mMessageBarContainer is null, bail");
      return;
    }
    if (!ChatView.access$6900(this$0))
    {
      ChatView.access$000(this$0, "MessageBar.update: " + ChatView.access$1700(this$0) + " fail focus");
      return;
    }
    if (!ChatView.access$700(this$0))
    {
      ChatView.access$000(this$0, "MessageBar.update: !mContactInfoLoaded, bail");
      return;
    }
    mVisible.clear();
    Object localObject1 = (View[])mVisibleMap.get(mMessageBarState);
    int j = localObject1.length;
    int i = 0;
    Object localObject2;
    while (i < j)
    {
      localObject2 = localObject1[i];
      if (localObject2 != null) {
        mVisible.add(localObject2);
      }
      i += 1;
    }
    i = 0;
    switch (ChatView.23.$SwitchMap$com$google$android$talk$ChatView$VideoChatState[mMessageBarState.ordinal()])
    {
    default: 
      localObject1 = (ImageButton)mMuteUnmuteButton;
      if (i != 0) {
        ((ImageButton)localObject1).setImageResource(i);
      }
      break;
    }
    for (;;)
    {
      if (mMessageBarState == ChatView.VideoChatState.IDLE)
      {
        boolean bool = ActivityUtils.isAudioChatCapable(ChatView.access$1200(this$0));
        if (!ActivityUtils.isVideoChatCapable(ChatView.access$1200(this$0))) {
          mVisible.remove(mVideoChatButton);
        }
        if (!bool) {
          mVisible.remove(mAudioChatButton);
        }
      }
      if (mBluetoothButton != null)
      {
        mBluetoothButton.handleBluetoothStateChange(mAudioDeviceState);
        if (!mAudioDevices.contains(CallSession.AudioDevice.BLUETOOTH_HEADSET)) {
          mVisible.remove(mBluetoothButton);
        }
      }
      localObject1 = mAllViews;
      int k = localObject1.length;
      i = 0;
      for (;;)
      {
        if (i >= k) {
          break label405;
        }
        localObject2 = localObject1[i];
        if (localObject2 != null) {
          break;
        }
        i += 1;
      }
      i = 2130837604;
      break;
      i = 2130837602;
      break;
      ((ImageButton)localObject1).setImageDrawable(null);
    }
    if (mVisible.contains(localObject2)) {}
    for (j = 0;; j = 8)
    {
      ((View)localObject2).setVisibility(j);
      break;
    }
    label405:
    localObject1 = mOkToShowWhileOfflineViews;
    j = localObject1.length;
    i = 0;
    label417:
    if (i < j)
    {
      localObject2 = localObject1[i];
      if (localObject2 != null) {
        break label440;
      }
    }
    for (;;)
    {
      i += 1;
      break label417;
      break;
      label440:
      ((View)localObject2).setEnabled(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.TabletMessageBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */