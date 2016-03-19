package com.google.android.libraries.componentview.core;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Color;
import android.util.DisplayMetrics;

public class Utils
{
  private static float a = -1.0F;
  
  public static float a(Context paramContext)
  {
    if (a < 0.0F) {
      a = getResourcesgetDisplayMetricsdensity;
    }
    return a;
  }
  
  public static int a(String paramString)
  {
    paramString = paramString.split(",");
    if ((paramString.length != 3) && (paramString.length != 4)) {
      throw new IllegalArgumentException("The given color is not an rgb or rgba color.");
    }
    if (paramString.length == 3) {}
    for (int i = 255;; i = Math.round(b(paramString[3]).floatValue() * 255.0F)) {
      return Color.argb(i, Math.round(b(paramString[0]).floatValue() * 255.0F), Math.round(b(paramString[1]).floatValue() * 255.0F), Math.round(b(paramString[2]).floatValue() * 255.0F));
    }
  }
  
  public static Bitmap a(byte[] paramArrayOfByte, float paramFloat)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inDensity = 160;
    inTargetDensity = ((int)(160.0F * paramFloat));
    inScaled = true;
    return BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, localOptions);
  }
  
  public static ComponentInterface a(ComponentInterface paramComponentInterface)
  {
    while ((paramComponentInterface instanceof WrapperComponent)) {
      paramComponentInterface = ((WrapperComponent)paramComponentInterface).c();
    }
    return paramComponentInterface;
  }
  
  private static Float b(String paramString)
  {
    return Float.valueOf(Float.parseFloat(paramString.trim()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.core.Utils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */