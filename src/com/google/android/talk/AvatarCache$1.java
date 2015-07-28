package com.google.android.talk;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Message;
import android.os.Process;
import java.util.ArrayList;
import java.util.HashMap;

final class AvatarCache$1
  implements Runnable
{
  public void run()
  {
    Process.setThreadPriority(10);
    while (!AvatarCache.access$000())
    {
      Object localObject1 = null;
      synchronized (AvatarCache.access$100())
      {
        if (AvatarCache.access$100().size() > 0)
        {
          localObject1 = (AvatarCache.WorkItem)AvatarCache.access$100().get(0);
          label39:
          if (localObject1 == null) {
            continue;
          }
          ??? = DatabaseUtils.decodeAvatar(mAvatarData);
          if (??? != null)
          {
            ??? = new BitmapDrawable((Bitmap)???);
            mCache.add(mUsername, (BitmapDrawable)???, mAvatarHash, true);
          }
        }
      }
      synchronized (AvatarCache.access$100())
      {
        AvatarCache.access$100().remove(localObject1);
        localObject1 = mAvatarLoadedMessage;
        if (localObject1 != null)
        {
          ((HashMap)obj).put("bitmap", ???);
          ((Message)localObject1).sendToTarget();
          continue;
          try
          {
            AvatarCache.access$100().wait();
          }
          catch (InterruptedException localInterruptedException) {}
          break label39;
          localObject2 = finally;
          throw ((Throwable)localObject2);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AvatarCache.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */