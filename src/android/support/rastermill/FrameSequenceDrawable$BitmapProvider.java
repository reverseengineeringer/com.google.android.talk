package android.support.rastermill;

import android.graphics.Bitmap;

public abstract interface FrameSequenceDrawable$BitmapProvider
{
  public abstract Bitmap acquireBitmap(int paramInt1, int paramInt2);
  
  public abstract void releaseBitmap(Bitmap paramBitmap);
}

/* Location:
 * Qualified Name:     android.support.rastermill.FrameSequenceDrawable.BitmapProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */