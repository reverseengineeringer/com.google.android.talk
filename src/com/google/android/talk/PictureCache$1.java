package com.google.android.talk;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Message;
import android.os.Process;
import java.util.ArrayList;
import java.util.HashMap;

final class PictureCache$1
  implements Runnable
{
  public void run()
  {
    Process.setThreadPriority(10);
    while (!PictureCache.access$000())
    {
      PictureCache.WorkItem localWorkItem = null;
      label39:
      PictureCache.PictureData localPictureData;
      Object localObject5;
      synchronized (PictureCache.access$100())
      {
        if (PictureCache.access$100().size() > 0)
        {
          localWorkItem = (PictureCache.WorkItem)PictureCache.access$100().get(0);
          if (localWorkItem == null) {
            continue;
          }
          localPictureData = null;
          ??? = Uri.parse(mUrl);
          localObject5 = ((Uri)???).getHost();
          String str = ((Uri)???).getScheme();
          if (!"http".equals(str))
          {
            ??? = localPictureData;
            if (!"https".equals(str)) {}
          }
          else
          {
            if (!"www.flickr.com".equalsIgnoreCase((String)localObject5)) {
              break label216;
            }
            ??? = PictureCache.access$400(mUrl, PictureCache.access$200(), PictureCache.access$300());
          }
          label113:
          if (??? != null) {
            break label363;
          }
          localPictureData = new PictureCache.PictureData(mUrl);
          localPictureData.setDrawable(null);
          label134:
          mCache.add(localPictureData);
        }
      }
      synchronized (PictureCache.access$100())
      {
        PictureCache.access$100().remove(localWorkItem);
        if (localPictureData.getDrawable() != null)
        {
          ??? = mPictureLoadedMessage;
          if (??? != null)
          {
            ((HashMap)obj).put("bitmap", localPictureData.getDrawable());
            ((Message)???).sendToTarget();
            continue;
            try
            {
              PictureCache.access$100().wait();
            }
            catch (InterruptedException localInterruptedException) {}
            break label39;
            localObject2 = finally;
            throw ((Throwable)localObject2);
            label216:
            if ("picasaweb.google.com".equalsIgnoreCase((String)localObject5))
            {
              ??? = PictureCache.access$500(mUrl, PictureCache.access$200(), PictureCache.access$300());
              break label113;
            }
            ??? = localInterruptedException;
            if ("picasaweb.google.com".equalsIgnoreCase((String)localObject5)) {
              break label113;
            }
            if ("www.youtube.com".equalsIgnoreCase((String)localObject5))
            {
              ??? = PictureCache.access$600(mUrl, PictureCache.access$200(), PictureCache.access$300());
              break label113;
            }
            if (!mUrl.toLowerCase().endsWith(".jpg"))
            {
              ??? = localInterruptedException;
              if (!mUrl.toLowerCase().endsWith(".gif")) {
                break label113;
              }
            }
            localObject5 = PictureCache.access$700(mUrl);
            ??? = localInterruptedException;
            if (localObject5 == null) {
              break label113;
            }
            ??? = new PictureCache.PictureData(mUrl);
            ((PictureCache.PictureData)???).setDrawable(new BitmapDrawable((Bitmap)localObject5));
            ((PictureCache.PictureData)???).setType(1);
            break label113;
            label363:
            Object localObject4 = ???;
            if (((PictureCache.PictureData)???).getDrawable() == null) {
              break label134;
            }
            ((PictureCache.PictureData)???).setIsSourceBitmap(true);
            localObject4 = ???;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PictureCache.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */