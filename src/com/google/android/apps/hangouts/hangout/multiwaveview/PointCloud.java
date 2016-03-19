package com.google.android.apps.hangouts.hangout.multiwaveview;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;

public class PointCloud
{
  private static final int INNER_POINTS = 8;
  private static final float MAX_POINT_SIZE = 4.0F;
  private static final float MIN_POINT_SIZE = 2.0F;
  private static final float PI = 3.1415927F;
  private static final String TAG = "Babel_PointCloud";
  PointCloud.GlowManager glowManager = new PointCloud.GlowManager(this);
  private float mCenterX;
  private float mCenterY;
  private Drawable mDrawable;
  private float mOuterRadius;
  private Paint mPaint = new Paint();
  private ArrayList<PointCloud.Point> mPointCloud = new ArrayList();
  private float mScale = 1.0F;
  PointCloud.WaveManager waveManager = new PointCloud.WaveManager(this);
  
  public PointCloud(Drawable paramDrawable)
  {
    mPaint.setFilterBitmap(true);
    mPaint.setColor(Color.rgb(255, 255, 255));
    mPaint.setAntiAlias(true);
    mPaint.setDither(true);
    mDrawable = paramDrawable;
    if (mDrawable != null) {
      paramDrawable.setBounds(0, 0, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
    }
  }
  
  private static float hypot(float paramFloat1, float paramFloat2)
  {
    return (float)Math.sqrt(paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2);
  }
  
  private float interp(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat2 - paramFloat1) * paramFloat3 + paramFloat1;
  }
  
  private static float max(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 > paramFloat2) {
      return paramFloat1;
    }
    return paramFloat2;
  }
  
  public void draw(Canvas paramCanvas)
  {
    ArrayList localArrayList = mPointCloud;
    paramCanvas.save(1);
    paramCanvas.scale(mScale, mScale, mCenterX, mCenterY);
    int i = 0;
    if (i < localArrayList.size())
    {
      PointCloud.Point localPoint = (PointCloud.Point)localArrayList.get(i);
      float f5 = interp(4.0F, 2.0F, radius / mOuterRadius);
      float f1 = x + mCenterX;
      float f2 = y + mCenterY;
      int j = getAlphaForPoint(localPoint);
      if (j != 0)
      {
        if (mDrawable == null) {
          break label209;
        }
        paramCanvas.save(1);
        float f3 = mDrawable.getIntrinsicWidth();
        float f4 = mDrawable.getIntrinsicHeight();
        f5 /= 4.0F;
        paramCanvas.scale(f5, f5, f1, f2);
        paramCanvas.translate(f1 - f3 * 0.5F, f2 - f4 * 0.5F);
        mDrawable.setAlpha(j);
        mDrawable.draw(paramCanvas);
        paramCanvas.restore();
      }
      for (;;)
      {
        i += 1;
        break;
        label209:
        mPaint.setAlpha(j);
        paramCanvas.drawCircle(f1, f2, f5, mPaint);
      }
    }
    paramCanvas.restore();
  }
  
  public int getAlphaForPoint(PointCloud.Point paramPoint)
  {
    float f3 = 0.0F;
    float f1 = hypot(PointCloud.GlowManager.access$000(glowManager) - x, PointCloud.GlowManager.access$100(glowManager) - y);
    float f2;
    if (f1 < PointCloud.GlowManager.access$200(glowManager))
    {
      f1 = (float)Math.cos(f1 * 0.7853982F / PointCloud.GlowManager.access$200(glowManager));
      f2 = PointCloud.GlowManager.access$300(glowManager);
    }
    for (f1 = max(0.0F, (float)Math.pow(f1, 10.0D)) * f2;; f1 = 0.0F)
    {
      float f4 = hypot(x, y) - PointCloud.WaveManager.access$400(waveManager);
      f2 = f3;
      if (f4 < PointCloud.WaveManager.access$500(waveManager) * 0.5F)
      {
        f2 = f3;
        if (f4 < 0.0F)
        {
          f2 = (float)Math.cos(f4 * 0.7853982F / PointCloud.WaveManager.access$500(waveManager));
          f3 = PointCloud.WaveManager.access$600(waveManager);
          f2 = max(0.0F, (float)Math.pow(f2, 20.0D)) * f3;
        }
      }
      return (int)(max(f1, f2) * 255.0F);
    }
  }
  
  public float getScale()
  {
    return mScale;
  }
  
  public void makePointCloud(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 == 0.0F) {}
    for (;;)
    {
      return;
      mOuterRadius = paramFloat2;
      mPointCloud.clear();
      paramFloat2 -= paramFloat1;
      float f1 = 6.2831855F * paramFloat1 / 8.0F;
      int k = Math.round(paramFloat2 / f1);
      float f2 = paramFloat2 / k;
      int i = 0;
      while (i <= k)
      {
        int m = (int)(6.2831855F * paramFloat1 / f1);
        paramFloat2 = 1.5707964F;
        float f3 = 6.2831855F / m;
        int j = 0;
        while (j < m)
        {
          float f4 = (float)Math.cos(paramFloat2);
          float f5 = (float)Math.sin(paramFloat2);
          paramFloat2 += f3;
          mPointCloud.add(new PointCloud.Point(this, f4 * paramFloat1, f5 * paramFloat1, paramFloat1));
          j += 1;
        }
        paramFloat1 += f2;
        i += 1;
      }
    }
  }
  
  public void setCenter(float paramFloat1, float paramFloat2)
  {
    mCenterX = paramFloat1;
    mCenterY = paramFloat2;
  }
  
  public void setScale(float paramFloat)
  {
    mScale = paramFloat;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.multiwaveview.PointCloud
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */