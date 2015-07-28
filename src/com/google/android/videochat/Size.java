package com.google.android.videochat;

public class Size
{
  public final int height;
  public final int width;
  
  public Size(int paramInt1, int paramInt2)
  {
    width = paramInt1;
    height = paramInt2;
  }
  
  public Size(Size paramSize)
  {
    width = width;
    height = height;
  }
  
  public static Size newWithScaleDown(Size paramSize, float paramFloat)
  {
    return new Size((int)(width / paramFloat) + 2 & 0xFFFFFFFC, (int)(height / paramFloat) + 2 & 0xFFFFFFFC);
  }
  
  public static Size scaleToMax(Size paramSize1, Size paramSize2)
  {
    float f2 = 1.0F;
    float f3 = width / height;
    float f1 = width / height;
    if (((f3 < 1.0D) && (f1 > 1.0D)) || ((f3 > 1.0D) && (f1 < 1.0D)))
    {
      f1 = 1.0F / f1;
      paramSize2 = new Size(height, width);
      if (f3 <= f1) {
        break label145;
      }
      f1 = f2;
      if (width > width) {
        f1 = width / width;
      }
    }
    for (;;)
    {
      paramSize2 = paramSize1;
      if (f1 > 1.0D) {
        paramSize2 = newWithScaleDown(paramSize1, f1);
      }
      return paramSize2;
      paramSize2 = new Size(width, height);
      break;
      label145:
      f1 = f2;
      if (height > height) {
        f1 = height / height;
      }
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Size)) {}
    do
    {
      return false;
      paramObject = (Size)paramObject;
    } while ((width != width) || (height != height));
    return true;
  }
  
  public int getEncodedDimensions()
  {
    return width << 16 | height;
  }
  
  public int hashCode()
  {
    return width * 32713 + height;
  }
  
  public String toString()
  {
    return width + "x" + height;
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.Size
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */