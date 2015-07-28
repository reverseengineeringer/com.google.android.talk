package com.google.android.talk.videochat;

import android.view.MenuItem;
import android.widget.PopupMenu.OnMenuItemClickListener;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.CallSession.AudioDevice;

class VideoChatActivity$15$2
  implements PopupMenu.OnMenuItemClickListener
{
  VideoChatActivity$15$2(VideoChatActivity.15 param15) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      VideoChatActivity.access$3900(this$1.this$0);
      return true;
      VideoChatActivity.access$5800(this$1.this$0).setAudioDevice(CallSession.AudioDevice.SPEAKERPHONE);
      continue;
      VideoChatActivity.access$5800(this$1.this$0).setAudioDevice(CallSession.AudioDevice.WIRED_HEADSET);
      continue;
      VideoChatActivity.access$5800(this$1.this$0).setAudioDevice(CallSession.AudioDevice.EARPIECE);
      continue;
      VideoChatActivity.access$5800(this$1.this$0).setAudioDevice(CallSession.AudioDevice.BLUETOOTH_HEADSET);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.15.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */