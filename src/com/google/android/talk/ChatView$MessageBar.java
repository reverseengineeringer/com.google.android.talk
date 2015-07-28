package com.google.android.talk;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.talk.fragments.ChatScreenFragment.ChatHost;
import com.google.android.videochat.CallSession.AudioDevice;
import com.google.android.videochat.CallState.AudioDeviceState;
import java.util.HashSet;
import java.util.Set;

abstract class ChatView$MessageBar
{
  protected View[] mAllViews;
  protected View mAudioChatButton;
  protected View mAudioChoicesButton;
  protected CallState.AudioDeviceState mAudioDeviceState = CallState.AudioDeviceState.SPEAKERPHONE_ON;
  protected Set<CallSession.AudioDevice> mAudioDevices = new HashSet();
  protected BluetoothButton mBluetoothButton;
  protected ViewGroup mButtons;
  protected View mCancelAudioButton;
  protected View mCancelVideoButton;
  protected View mCloseChatButton;
  protected TextView mContactView;
  protected Integer[] mCulledForGroupChatMenuItems = { Integer.valueOf(2131755202), Integer.valueOf(2131755189), Integer.valueOf(2131755190) };
  protected View mEndAudioButton;
  protected View mEndVideoButton;
  protected View mMessageBarContainer;
  protected ChatView.VideoChatState mMessageBarState = ChatView.VideoChatState.IDLE;
  protected View mMuteUnmuteButton;
  protected View[] mOkToShowWhileOfflineViews;
  protected ImageView mPresenceView;
  protected View mResumeVideoChatButton;
  protected TextView mStatusMessage;
  protected View mVideoChatButton;
  
  public ChatView$MessageBar(ChatView paramChatView) {}
  
  public void bind()
  {
    View localView = ChatView.access$3500(this$0).getMessageBar();
    mMessageBarContainer = localView;
    if (mMessageBarContainer == null) {
      return;
    }
    mButtons = ((ViewGroup)localView.findViewById(2131755109));
    mVideoChatButton = localView.findViewById(2131755103);
    mAudioChatButton = localView.findViewById(2131755104);
    mCloseChatButton = localView.findViewById(2131755096);
    mEndAudioButton = localView.findViewById(2131755100);
    mEndVideoButton = localView.findViewById(2131755099);
    mMuteUnmuteButton = localView.findViewById(2131755101);
    mCancelAudioButton = localView.findViewById(2131755098);
    mCancelVideoButton = localView.findViewById(2131755097);
    mResumeVideoChatButton = localView.findViewById(2131755102);
    mBluetoothButton = ((BluetoothButton)localView.findViewById(2131755105));
    mStatusMessage = ((TextView)localView.findViewById(2131755108));
    mPresenceView = ((ImageView)localView.findViewById(2131755022));
    mContactView = ((TextView)localView.findViewById(2131755107));
    mAudioChoicesButton = localView.findViewById(2131755110);
    mVideoChatButton.setOnClickListener(this$0.mStartVideoChat);
    mAudioChatButton.setOnClickListener(this$0.mStartVoiceChat);
    mCloseChatButton.setOnClickListener(this$0.mCloseListener);
    mEndVideoButton.setOnClickListener(this$0.mEndAudioOrVideoChat);
    mEndAudioButton.setOnClickListener(this$0.mEndAudioOrVideoChat);
    mMuteUnmuteButton.setOnClickListener(this$0.mToggleMute);
    mCancelAudioButton.setOnClickListener(this$0.mEndAudioOrVideoChat);
    mCancelVideoButton.setOnClickListener(this$0.mEndAudioOrVideoChat);
    mResumeVideoChatButton.setOnClickListener(this$0.mResumeVideoChat);
    mBluetoothButton.setOnClickListener(this$0.mToggleBluetooth);
    if (mAudioChoicesButton != null) {
      mAudioChoicesButton.setOnClickListener(this$0.mAudioChoicesListener);
    }
    mAllViews = new View[] { mMuteUnmuteButton, mVideoChatButton, mAudioChatButton, mResumeVideoChatButton, mEndAudioButton, mEndVideoButton, mCloseChatButton, mCancelAudioButton, mCancelVideoButton, mAudioChoicesButton, mBluetoothButton };
    mOkToShowWhileOfflineViews = new View[] { mEndAudioButton, mEndVideoButton, mCloseChatButton, mMuteUnmuteButton, mResumeVideoChatButton };
  }
  
  public CallState.AudioDeviceState getAudioDeviceState()
  {
    return mAudioDeviceState;
  }
  
  public ChatView.VideoChatState getState()
  {
    return mMessageBarState;
  }
  
  void setMessageBarState(ChatView.VideoChatState paramVideoChatState)
  {
    setMessageBarState(paramVideoChatState, mAudioDeviceState, mAudioDevices, false);
  }
  
  void setMessageBarState(ChatView.VideoChatState paramVideoChatState, CallState.AudioDeviceState paramAudioDeviceState, Set<CallSession.AudioDevice> paramSet)
  {
    setMessageBarState(paramVideoChatState, paramAudioDeviceState, paramSet, false);
  }
  
  void setMessageBarState(final ChatView.VideoChatState paramVideoChatState, final CallState.AudioDeviceState paramAudioDeviceState, final Set<CallSession.AudioDevice> paramSet, final boolean paramBoolean)
  {
    ChatView.access$2400(this$0).runOnUiThread(new Runnable()
    {
      public void run()
      {
        if ((mMessageBarState != paramVideoChatState) || (mAudioDeviceState != paramAudioDeviceState) || (!mAudioDevices.equals(paramSet)) || (paramBoolean))
        {
          if (TalkApp.debugLoggable()) {
            ChatView.access$000(this$0, "setMessageBarState: force=" + paramBoolean + ", old=" + mMessageBarState + ", new=" + paramVideoChatState + ", oldBT=" + mAudioDeviceState + ", newBT=" + paramAudioDeviceState);
          }
          mMessageBarState = paramVideoChatState;
          mAudioDeviceState = paramAudioDeviceState;
          mAudioDevices = paramSet;
          update();
        }
      }
    });
  }
  
  void setMessageBarState(ChatView.VideoChatState paramVideoChatState, boolean paramBoolean)
  {
    setMessageBarState(paramVideoChatState, mAudioDeviceState, mAudioDevices, paramBoolean);
  }
  
  public void setTitle(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    if (mPresenceView != null)
    {
      if (paramInt2 != -1) {
        break label36;
      }
      mPresenceView.setVisibility(4);
    }
    for (;;)
    {
      if (mContactView != null) {
        mContactView.setText(paramString);
      }
      return;
      label36:
      mPresenceView.setVisibility(0);
      paramInt1 = ChatView.access$5500(this$0).getStatusIcon(paramInt2, paramInt3);
      mPresenceView.setImageResource(paramInt1);
    }
  }
  
  public abstract void update();
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.MessageBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */