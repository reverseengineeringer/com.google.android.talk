package com.google.android.talk.videochat;

import android.content.Intent;
import android.net.Uri;
import android.provider.MediaStore.Video.Media;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class VideoChatActivity$SpecialEffectManager$5
  implements AdapterView.OnItemClickListener
{
  VideoChatActivity$SpecialEffectManager$5(VideoChatActivity.SpecialEffectManager paramSpecialEffectManager) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    VideoChatActivity.SpecialEffectManager.access$3700(this$1);
    paramAdapterView = paramView.getTag();
    if (paramAdapterView != null)
    {
      paramAdapterView = Uri.parse((String)paramAdapterView);
      VideoChatActivity.SpecialEffectManager.access$3800(this$1, paramAdapterView);
      return;
    }
    paramAdapterView = new Intent("android.intent.action.PICK");
    paramAdapterView.setDataAndType(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "video/*");
    paramAdapterView.putExtra("android.intent.extra.LOCAL_ONLY", true);
    this$1.this$0.startActivityForResult(paramAdapterView, 100);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.SpecialEffectManager.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */