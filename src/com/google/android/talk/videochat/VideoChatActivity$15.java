package com.google.android.talk.videochat;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupMenu;
import android.widget.PopupMenu.OnDismissListener;
import android.widget.PopupMenu.OnMenuItemClickListener;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.CallSession.AudioDevice;

class VideoChatActivity$15
  implements View.OnClickListener
{
  VideoChatActivity$15(VideoChatActivity paramVideoChatActivity) {}
  
  public void onClick(View paramView)
  {
    PopupMenu localPopupMenu = new PopupMenu(this$0, paramView);
    Menu localMenu = localPopupMenu.getMenu();
    localPopupMenu.getMenuInflater().inflate(2131689473, localMenu);
    switch (VideoChatActivity.16.$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState[VideoChatActivity.access$1900(this$0).ordinal()])
    {
    case 4: 
    default: 
      paramView = CallSession.AudioDevice.SPEAKERPHONE;
    }
    for (;;)
    {
      VideoChatActivity.access$6600(this$0, localMenu, 2131755185, CallSession.AudioDevice.SPEAKERPHONE, paramView);
      VideoChatActivity.access$6600(this$0, localMenu, 2131755186, CallSession.AudioDevice.WIRED_HEADSET, paramView);
      VideoChatActivity.access$6600(this$0, localMenu, 2131755187, CallSession.AudioDevice.EARPIECE, paramView);
      VideoChatActivity.access$6600(this$0, localMenu, 2131755188, CallSession.AudioDevice.BLUETOOTH_HEADSET, paramView);
      localPopupMenu.setOnDismissListener(new PopupMenu.OnDismissListener()
      {
        public void onDismiss(PopupMenu paramAnonymousPopupMenu)
        {
          VideoChatActivity.access$3900(this$0);
        }
      });
      localPopupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener()
      {
        public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
        {
          switch (paramAnonymousMenuItem.getItemId())
          {
          }
          for (;;)
          {
            VideoChatActivity.access$3900(this$0);
            return true;
            VideoChatActivity.access$5800(this$0).setAudioDevice(CallSession.AudioDevice.SPEAKERPHONE);
            continue;
            VideoChatActivity.access$5800(this$0).setAudioDevice(CallSession.AudioDevice.WIRED_HEADSET);
            continue;
            VideoChatActivity.access$5800(this$0).setAudioDevice(CallSession.AudioDevice.EARPIECE);
            continue;
            VideoChatActivity.access$5800(this$0).setAudioDevice(CallSession.AudioDevice.BLUETOOTH_HEADSET);
          }
        }
      });
      localPopupMenu.show();
      VideoChatActivity.access$6700(this$0);
      return;
      paramView = CallSession.AudioDevice.BLUETOOTH_HEADSET;
      continue;
      paramView = CallSession.AudioDevice.EARPIECE;
      continue;
      paramView = CallSession.AudioDevice.WIRED_HEADSET;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */