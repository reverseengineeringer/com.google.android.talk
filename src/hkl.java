import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;

public final class hkl
  extends hko
  implements TextureView.SurfaceTextureListener
{
  hkn a;
  boolean b;
  boolean c;
  hlc d;
  private final TextureView k;
  private final boolean l;
  private final boolean m;
  private final Object n = new Object();
  private int o = 0;
  private int p;
  private int q;
  private SurfaceTexture r;
  private boolean s;
  private final Runnable t = new hkm(this);
  
  public hkl(hks paramhks, TextureView paramTextureView)
  {
    super(paramhks);
    k = paramTextureView;
    l = true;
    m = true;
    paramhks = paramTextureView.getSurfaceTexture();
    if (paramhks != null) {
      onSurfaceTextureAvailable(paramhks, paramTextureView.getWidth(), paramTextureView.getHeight());
    }
    paramTextureView.setSurfaceTextureListener(this);
  }
  
  public void a()
  {
    synchronized (n)
    {
      if ((r != null) && (r != k.getSurfaceTexture())) {
        k.setSurfaceTexture(r);
      }
      k.requestLayout();
      p = 0;
      q = 0;
      return;
    }
  }
  
  public void a(int paramInt)
  {
    o = paramInt;
    if (f != null) {
      f.a(paramInt);
    }
  }
  
  public void a(hkn paramhkn)
  {
    a = paramhkn;
  }
  
  protected void a(boolean paramBoolean)
  {
    s = paramBoolean;
    if (a != null)
    {
      hlk.a(3, "vclib", 59 + "TextureViewVideoRenderer.onCurrentParticipantChanged: " + paramBoolean);
      Runnable localRunnable = t;
      aal.y().removeCallbacks(localRunnable);
      if (paramBoolean) {
        t.run();
      }
    }
    else
    {
      return;
    }
    aal.a(t, 100L);
  }
  
  public void b()
  {
    synchronized (n)
    {
      if (f != null)
      {
        f.a();
        f = null;
      }
      r = null;
      k.setSurfaceTextureListener(null);
      a = null;
      super.b();
      return;
    }
  }
  
  protected void b(boolean paramBoolean)
  {
    s = paramBoolean;
    if ((paramBoolean) && (a != null))
    {
      hlk.a(3, "vclib", 50 + "TextureViewVideoRenderer.onMuteStateChanged: " + paramBoolean);
      Runnable localRunnable = t;
      aal.y().removeCallbacks(localRunnable);
      t.run();
    }
  }
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    hlk.a(3, "vclib", "TextureViewVideoRenderer.onSurfaceTextureAvailable %dx%d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
    for (;;)
    {
      synchronized (n)
      {
        if (r != null) {
          if (!m)
          {
            break label134;
            hlk.a(3, "vclib", "Ignoring surface because it has an area of zero.");
          }
          else
          {
            return;
            r = paramSurfaceTexture;
            p = paramInt1;
            q = paramInt2;
            f = e.a(r);
            if (f != null) {
              f.a(h);
            }
            f.a(o);
          }
        }
      }
      label134:
      if (paramInt1 != 0) {
        if (paramInt2 != 0) {}
      }
    }
  }
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture arg1)
  {
    hlk.a(3, "vclib", "TextureViewVideoRenderer.onSurfaceTextureDestroyed");
    synchronized (n)
    {
      return (!m) || (r == null);
    }
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    hlk.a(3, "vclib", "TextureViewVideoRenderer.onSurfaceTextureSizeChanged %dx%d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
  }
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture)
  {
    if (s) {
      return;
    }
    label384:
    label646:
    label749:
    label804:
    label809:
    label820:
    for (;;)
    {
      int i1;
      int i2;
      int i;
      Object localObject2;
      boolean bool;
      synchronized (n)
      {
        i1 = k.getWidth();
        i2 = k.getHeight();
        if (f == null)
        {
          paramSurfaceTexture = null;
          if ((i1 != 0) && (i2 != 0) && (paramSurfaceTexture != null) && (r != null) && (paramSurfaceTexture.b() != 0) && (paramSurfaceTexture.c() != 0)) {
            continue;
          }
          if ((a != null) && ((c) || (m)))
          {
            paramSurfaceTexture = t;
            aal.y().removeCallbacks(paramSurfaceTexture);
            if (!b)
            {
              hbs.a();
              a.m();
              b = true;
            }
            if ((d != null) && (!d.i())) {
              aal.a(t, 2000L);
            }
          }
          c = true;
          if (f == null) {
            break;
          }
          f.c();
          return;
        }
        paramSurfaceTexture = f.b();
        continue;
        if ((i1 != p) || (i2 != q))
        {
          r.setDefaultBufferSize(paramSurfaceTexture.d(), paramSurfaceTexture.e());
          i = 1;
          if (i != 0)
          {
            d = paramSurfaceTexture.a();
            localObject2 = d;
            bool = l;
            if ((localObject2 == null) || (((hlc)localObject2).b() == 0) || (((hlc)localObject2).c() == 0) || (i1 == 0)) {
              break label809;
            }
            if (i2 != 0) {
              break label384;
            }
            break label809;
            if (paramSurfaceTexture != null)
            {
              hlk.a(3, "vclib", "Applying output format %s to view size %dx%d, matrix=%s", new Object[] { d, Integer.valueOf(i1), Integer.valueOf(i2), paramSurfaceTexture });
              k.setTransform(paramSurfaceTexture);
            }
          }
          p = i1;
          q = i2;
        }
      }
      if (!paramSurfaceTexture.equals(d))
      {
        i = 1;
        continue;
        paramSurfaceTexture = new Matrix();
        int i3 = ((hlc)localObject2).h();
        int j;
        RectF localRectF1;
        float f2;
        float f3;
        float f4;
        RectF localRectF2;
        if ((i3 == 90) || (i3 == 270))
        {
          j = ((hlc)localObject2).c();
          i = ((hlc)localObject2).b();
          localRectF1 = ((hlc)localObject2).g();
          f1 = left;
          f2 = right;
          f3 = top;
          f4 = bottom;
          j = (int)(j * (1.0F - f1 - f2));
          i = (int)(i * (1.0F - f3 - f4));
          localRectF1 = new RectF(0.0F, 0.0F, j, i);
          localRectF2 = new RectF(0.0F, 0.0F, i1, i2);
          f2 = Math.min(i1 / j, i2 / i);
          if (!bool) {
            break label804;
          }
          localObject2 = ((hlc)localObject2).f();
          f1 = j / i;
          f3 = i1 / i2;
          f4 = Math.max(i1 / j, i2 / i);
          if (f3 <= f1) {
            break label749;
          }
          f1 = i * f4;
          f3 = (f1 - i2) / f1;
          f1 = f3;
          if (bottom > 0.0F) {
            f1 = Math.min(f3, Math.min(top, 1.0F - bottom) * 2.0F);
          }
        }
        for (float f1 = f2 / (1.0F - Math.min(0.5F, f1));; f1 = f2)
        {
          f2 = localRectF2.centerX();
          f3 = localRectF2.centerY();
          localRectF1.offset(f2 - localRectF1.centerX(), f3 - localRectF1.centerY());
          paramSurfaceTexture.setRectToRect(localRectF2, localRectF1, Matrix.ScaleToFit.FILL);
          paramSurfaceTexture.postScale(f1, f1, f2, f3);
          if (i3 == 0) {
            break label820;
          }
          paramSurfaceTexture.postRotate(i3, f2, f3);
          break label820;
          j = ((hlc)localObject2).b();
          i = ((hlc)localObject2).c();
          break;
          f1 = j * f4;
          f3 = (f1 - i1) / f1;
          f1 = f3;
          if (right <= 0.0F) {
            break label646;
          }
          f1 = Math.min(f3, Math.min(left, 1.0F - right) * 2.0F);
          break label646;
        }
        paramSurfaceTexture = null;
      }
      else
      {
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     hkl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */