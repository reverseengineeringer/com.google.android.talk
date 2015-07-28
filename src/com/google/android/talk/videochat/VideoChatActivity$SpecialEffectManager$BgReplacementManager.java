package com.google.android.talk.videochat;

import android.net.Uri;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

class VideoChatActivity$SpecialEffectManager$BgReplacementManager
  implements EffectsController.StateCallback
{
  private View mMessageView;
  
  private VideoChatActivity$SpecialEffectManager$BgReplacementManager(VideoChatActivity.SpecialEffectManager paramSpecialEffectManager) {}
  
  private void cancelTraining()
  {
    this$1.clearSpecialEffects();
    leaveTraining(false);
  }
  
  private void leaveTraining(final boolean paramBoolean)
  {
    VideoChatActivity.access$900(this$1.this$0).post(new Runnable()
    {
      public void run()
      {
        if (mMessageView != null) {
          mMessageView.setVisibility(8);
        }
        if (paramBoolean)
        {
          VideoChatActivity.SpecialEffectManager.access$3500(VideoChatActivity.access$2800(this$1.this$0));
          return;
        }
        VideoChatActivity.access$000(this$1.this$0);
      }
    });
  }
  
  public void onBackgroundReplacementTraningSuccess()
  {
    leaveTraining(true);
  }
  
  public void startTraining(Uri paramUri)
  {
    mMessageView = this$1.this$0.findViewById(2131755174);
    mMessageView.setVisibility(0);
    VideoChatActivity.access$2900(this$1.this$0);
    ((Button)this$1.this$0.findViewById(2131755176)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        VideoChatActivity.SpecialEffectManager.BgReplacementManager.this.cancelTraining();
      }
    });
    VideoChatActivity.access$3300(this$1.this$0, new VideoChatActivity.Effect(3, paramUri));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.SpecialEffectManager.BgReplacementManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */