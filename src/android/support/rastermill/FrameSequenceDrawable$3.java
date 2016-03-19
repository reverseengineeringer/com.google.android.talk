package android.support.rastermill;

class FrameSequenceDrawable$3
  implements Runnable
{
  FrameSequenceDrawable$3(FrameSequenceDrawable paramFrameSequenceDrawable) {}
  
  public void run()
  {
    if (FrameSequenceDrawable.access$900(this$0) != null) {
      FrameSequenceDrawable.access$900(this$0).onFinished(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.rastermill.FrameSequenceDrawable.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */