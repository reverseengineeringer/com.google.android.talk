package com.google.android.talk;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

class PublicIntentDispatcher$5$1
  implements TalkApp.SelfAvatarReadyRunnable
{
  PublicIntentDispatcher$5$1(PublicIntentDispatcher.5 param5, Bitmap paramBitmap) {}
  
  public void run(DatabaseUtils.AvatarData paramAvatarData)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramAvatarData != null)
    {
      paramAvatarData = mAvatarData;
      localObject1 = localObject2;
      if (paramAvatarData != null) {
        localObject1 = BitmapFactory.decodeByteArray(paramAvatarData, 0, paramAvatarData.length);
      }
    }
    PublicIntentDispatcher.access$900(this$1.this$0, PublicIntentDispatcher.access$200(this$1.this$0), (Bitmap)localObject1, val$toAvatarBitmap, this$1.val$confirmedCall).show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PublicIntentDispatcher.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */