package android.support.rastermill;

import android.graphics.Bitmap;

class FrameSequenceDrawable$2
  implements Runnable
{
  FrameSequenceDrawable$2(FrameSequenceDrawable paramFrameSequenceDrawable) {}
  
  public void run()
  {
    int i;
    synchronized (FrameSequenceDrawable.access$000(this$0))
    {
      if (FrameSequenceDrawable.access$100(this$0)) {
        return;
      }
      i = FrameSequenceDrawable.access$200(this$0);
      if (i < 0) {
        return;
      }
    }
    ??? = FrameSequenceDrawable.access$300(this$0);
    FrameSequenceDrawable.access$402(this$0, 2);
    long l2 = FrameSequenceDrawable.access$500(this$0).getFrame(i, (Bitmap)???, i - 2);
    long l1 = l2;
    if (l2 < 20L) {
      l1 = 100L;
    }
    int j = 0;
    for (;;)
    {
      synchronized (FrameSequenceDrawable.access$000(this$0))
      {
        if (FrameSequenceDrawable.access$100(this$0))
        {
          ??? = FrameSequenceDrawable.access$300(this$0);
          FrameSequenceDrawable.access$302(this$0, null);
          i = 0;
          l1 = FrameSequenceDrawable.access$600(this$0);
          if (i != 0) {
            this$0.scheduleSelf(this$0, l1);
          }
          if (??? != null) {
            FrameSequenceDrawable.access$800(this$0).releaseBitmap((Bitmap)???);
          }
        }
        else
        {
          i = j;
          if (FrameSequenceDrawable.access$200(this$0) < 0) {
            break label261;
          }
          i = j;
          if (FrameSequenceDrawable.access$400(this$0) != 2) {
            break label261;
          }
          i = 1;
          FrameSequenceDrawable.access$602(this$0, l1 + FrameSequenceDrawable.access$700(this$0));
          FrameSequenceDrawable.access$402(this$0, 3);
        }
      }
      return;
      label261:
      Object localObject3 = null;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.rastermill.FrameSequenceDrawable.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */