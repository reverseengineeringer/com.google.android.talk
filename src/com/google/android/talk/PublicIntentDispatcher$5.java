package com.google.android.talk;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;

class PublicIntentDispatcher$5
  implements ContactInfoQuery.ContactInfoQueryCallback
{
  PublicIntentDispatcher$5(PublicIntentDispatcher paramPublicIntentDispatcher, ContactInfoQuery paramContactInfoQuery, Runnable paramRunnable) {}
  
  public void onContactInfoLoaded()
  {
    int i;
    if (PublicIntentDispatcher.access$200(this$0) == 3)
    {
      i = val$query.getCapabilities();
      if (!ActivityUtils.isVideoChatCapable(i)) {
        break label76;
      }
      PublicIntentDispatcher.access$202(this$0, 1);
    }
    for (;;)
    {
      TalkApp.SelfAvatarReadyRunnable local1 = new TalkApp.SelfAvatarReadyRunnable()
      {
        public void run(DatabaseUtils.AvatarData paramAnonymousAvatarData)
        {
          Object localObject2 = null;
          Object localObject1 = localObject2;
          if (paramAnonymousAvatarData != null)
          {
            paramAnonymousAvatarData = mAvatarData;
            localObject1 = localObject2;
            if (paramAnonymousAvatarData != null) {
              localObject1 = BitmapFactory.decodeByteArray(paramAnonymousAvatarData, 0, paramAnonymousAvatarData.length);
            }
          }
          PublicIntentDispatcher.access$900(this$0, PublicIntentDispatcher.access$200(this$0), (Bitmap)localObject1, val$toAvatarBitmap, val$confirmedCall).show();
        }
      };
      TalkApp.getApplication(this$0).getSelfAvatarDataForAccount(PublicIntentDispatcher.access$400(this$0), local1);
      return;
      label76:
      if (ActivityUtils.isAudioChatCapable(i)) {
        PublicIntentDispatcher.access$202(this$0, 2);
      } else {
        PublicIntentDispatcher.access$202(this$0, 0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PublicIntentDispatcher.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */