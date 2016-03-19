package com.google.android.libraries.componentview.components.base.views;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.widget.ImageView;

public class RoundCornerImageView
  extends ImageView
{
  private float[] a;
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (a != null)
    {
      Path localPath = new Path();
      int i = getWidth();
      int j = getHeight();
      localPath.addRoundRect(new RectF(0.0F, 0.0F, i, j), a, Path.Direction.CW);
      paramCanvas.clipPath(localPath);
    }
    super.onDraw(paramCanvas);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.views.RoundCornerImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */