package com.google.android.talk;

import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.HashMap;

class ChatView$PhoneMessageBar
  extends ChatView.MessageBar
{
  HashMap<ChatView.VideoChatState, View[]> mVisibleMap = new HashMap();
  
  private ChatView$PhoneMessageBar(ChatView paramChatView)
  {
    super(paramChatView);
  }
  
  public void bind()
  {
    super.bind();
    HashMap localHashMap = mVisibleMap;
    localHashMap.put(ChatView.VideoChatState.VOICE_ACTIVE, new View[] { mMuteUnmuteButton, mAudioChoicesButton, mCloseChatButton });
    localHashMap.put(ChatView.VideoChatState.VIDEO_ACTIVE, new View[] { mResumeVideoChatButton, mMuteUnmuteButton, mEndVideoButton, mBluetoothButton });
    localHashMap.put(ChatView.VideoChatState.VIDEO_MUTED, new View[] { mResumeVideoChatButton, mMuteUnmuteButton, mEndVideoButton, mBluetoothButton });
    localHashMap.put(ChatView.VideoChatState.VOICE_MUTED, new View[] { mMuteUnmuteButton, mAudioChoicesButton, mCloseChatButton });
    localHashMap.put(ChatView.VideoChatState.VOICE_WAITING, new View[] { mCancelAudioButton });
    localHashMap.put(ChatView.VideoChatState.VIDEO_WAITING, new View[] { mCancelVideoButton });
  }
  
  String getStatusMessage()
  {
    Resources localResources = ChatView.access$4600(this$0);
    switch (ChatView.23.$SwitchMap$com$google$android$talk$ChatView$VideoChatState[mMessageBarState.ordinal()])
    {
    default: 
      return "";
    case 5: 
      boolean bool = ActivityUtils.isAudioChatCapable(ChatView.access$1200(this$0));
      if (ActivityUtils.isVideoChatCapable(ChatView.access$1200(this$0))) {
        return localResources.getString(2131493063);
      }
      if (bool) {
        return localResources.getString(2131493065);
      }
      return "";
    case 3: 
    case 4: 
      return localResources.getString(2131493064);
    case 1: 
    case 2: 
      return localResources.getString(2131493066);
    }
    return localResources.getString(2131493106);
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
      ChatView.access$000(this$0, "PhoneMessageBar.update " + ChatView.access$1700(this$0) + " fail focus");
      return;
    }
    if (!ChatView.access$700(this$0))
    {
      ChatView.access$000(this$0, "MessageBar.update: !mContactInfoLoaded, bail");
      return;
    }
    Object localObject1 = mAllViews;
    int j = localObject1.length;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = localObject1[i];
      if (localObject2 != null) {
        ((View)localObject2).setVisibility(8);
      }
      i += 1;
    }
    localObject1 = (ImageButton)mMuteUnmuteButton;
    ((ImageButton)localObject1).setImageDrawable(null);
    mStatusMessage.setText(getStatusMessage());
    mStatusMessage.setVisibility(0);
    mMessageBarContainer.getLayoutParams().height = ChatView.access$4600(this$0).getDimensionPixelOffset(2131427378);
    label268:
    int m;
    switch (ChatView.23.$SwitchMap$com$google$android$talk$ChatView$VideoChatState[mMessageBarState.ordinal()])
    {
    default: 
      mBluetoothButton.handleBluetoothStateChange(mAudioDeviceState);
      k = 0;
      int n = mButtons.getChildCount();
      i = 0;
      if (i >= n) {
        break label635;
      }
      localObject1 = mButtons.getChildAt(i);
      if (mButtons.getChildAt(i + 1).getVisibility() == 0)
      {
        m = 1;
        label303:
        j = k;
        if (m != 0) {
          j = k + 1;
        }
        if (m == 0) {
          break label629;
        }
      }
      break;
    }
    label629:
    for (int k = 0;; k = 8)
    {
      ((View)localObject1).setVisibility(k);
      i += 2;
      k = j;
      break label268;
      mCloseChatButton.setVisibility(0);
      if (ActivityUtils.isVideoChatCapable(ChatView.access$1200(this$0)))
      {
        mVideoChatButton.setVisibility(0);
        break;
      }
      if (ActivityUtils.isAudioChatCapable(ChatView.access$1200(this$0)))
      {
        mAudioChatButton.setVisibility(0);
        break;
      }
      mStatusMessage.setVisibility(8);
      mMessageBarContainer.getLayoutParams().height = ChatView.access$4600(this$0).getDimensionPixelOffset(2131427379);
      break;
      ((ImageButton)localObject1).setImageResource(2130837605);
      if (mAudioChoicesButton != null) {
        mAudioChoicesButton.setVisibility(0);
      }
      mMuteUnmuteButton.setVisibility(0);
      mEndAudioButton.setVisibility(0);
      break;
      ((ImageButton)localObject1).setImageResource(2130837603);
      if (mAudioChoicesButton != null) {
        mAudioChoicesButton.setVisibility(0);
      }
      mMuteUnmuteButton.setVisibility(0);
      mEndAudioButton.setVisibility(0);
      break;
      ((ImageButton)localObject1).setImageResource(2130837605);
      if (mAudioChoicesButton != null) {
        mAudioChoicesButton.setVisibility(0);
      }
      mMuteUnmuteButton.setVisibility(0);
      mEndVideoButton.setVisibility(0);
      break;
      ((ImageButton)localObject1).setImageResource(2130837603);
      if (mAudioChoicesButton != null) {
        mAudioChoicesButton.setVisibility(0);
      }
      mMuteUnmuteButton.setVisibility(0);
      mEndVideoButton.setVisibility(0);
      break;
      mCancelAudioButton.setVisibility(0);
      break;
      mCancelVideoButton.setVisibility(0);
      break;
      mCloseChatButton.setVisibility(0);
      break;
      m = 0;
      break label303;
    }
    label635:
    if (k > 0) {
      mPresenceView.setVisibility(8);
    }
    for (;;)
    {
      ChatView.access$6000(this$0).post(new Runnable()
      {
        public void run()
        {
          mMessageBarContainer.getParent().requestLayout();
        }
      });
      return;
      mPresenceView.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.PhoneMessageBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */