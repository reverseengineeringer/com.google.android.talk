package android.support.rastermill;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

final class FrameSequenceDrawable$1
  implements FrameSequenceDrawable.BitmapProvider
{
  public Bitmap acquireBitmap(int paramInt1, int paramInt2)
  {
    return Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
  }
  
  public void releaseBitmap(Bitmap paramBitmap)
  {
    paramBitmap.recycle();
  }
}

/* Location:
 * Qualified Name:     android.support.rastermill.FrameSequenceDrawable.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */