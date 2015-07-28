package com.google.android.talk.videochat;

import android.media.effect.Effect;
import android.media.effect.EffectUpdateListener;
import com.google.android.videochat.CameraInterface;
import com.google.android.videochat.SelfRenderer;
import com.google.android.videochat.util.LogUtil;

class GlView$GLRenderer$EffectCallback
  implements EffectUpdateListener
{
  GlView$GLRenderer$EffectCallback(GlView.GLRenderer paramGLRenderer) {}
  
  public void onEffectUpdated(Effect paramEffect, Object paramObject)
  {
    if (GlView.GLRenderer.access$1100(this$1) != 3) {
      LogUtil.Logwtf("Talk:GlView", "Effect callback fired when not using background replacement!");
    }
    do
    {
      return;
      LogUtil.LOGI("Talk:GlView", "Background learning complete, locking AE/AWB");
      GlView.access$000(this$1.this$0).getSelfRenderer().getCamera().setPreview3ALocks(true);
    } while (GlView.access$1200(this$1.this$0) == null);
    GlView.access$1200(this$1.this$0).onBackgroundReplacementTraningSuccess();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.GlView.GLRenderer.EffectCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */