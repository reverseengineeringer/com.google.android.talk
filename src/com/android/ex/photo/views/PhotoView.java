package com.android.ex.photo.views;

import aal;
import acw;
import acx;
import acy;
import acz;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewConfiguration;
import it;
import ki;
import kl;

public class PhotoView
  extends View
  implements GestureDetector.OnDoubleTapListener, GestureDetector.OnGestureListener, ScaleGestureDetector.OnScaleGestureListener
{
  private static int d;
  private static boolean e;
  private static int f;
  private static Bitmap g;
  private static Bitmap h;
  private static Paint i;
  private static Paint j;
  private boolean A = true;
  private boolean B;
  private boolean C;
  private acx D;
  private float E;
  private float F;
  private acz G;
  private acy H;
  private RectF I = new RectF();
  private RectF J = new RectF();
  private RectF K = new RectF();
  private float[] L = new float[9];
  private boolean M;
  private float N;
  private float O;
  private boolean P;
  public Matrix a = new Matrix();
  acw b;
  public float c;
  private Drawable k;
  private Matrix l;
  private Matrix m = new Matrix();
  private int n = -1;
  private boolean o;
  private boolean p;
  private byte[] q;
  private boolean r;
  private boolean s;
  private Rect t = new Rect();
  private int u;
  private float v;
  private it w;
  private ScaleGestureDetector x;
  private View.OnClickListener y;
  private boolean z;
  
  public PhotoView(Context paramContext)
  {
    super(paramContext);
    k();
  }
  
  public PhotoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    k();
  }
  
  public PhotoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    k();
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    float f5;
    float f3;
    float f1;
    float f2;
    boolean bool;
    if ((A) && (z) && (M)) {
      if (!B)
      {
        f5 = j();
        if (f5 > E)
        {
          f3 = E;
          f1 = f3 / f5;
          f2 = (getWidth() / 2 - K.centerX() * f1) / (1.0F - f1);
          f1 = (getHeight() / 2 - K.centerY() * f1) / (1.0F - f1);
          D.a(f5, f3, f2, f1);
          bool = true;
          label117:
          B = false;
        }
      }
    }
    for (;;)
    {
      M = false;
      return bool;
      f1 = Math.max(E, f5 * 2.0F);
      f3 = Math.min(F, f1);
      f2 = f3 / f5;
      f1 = (getWidth() - K.width()) / f2;
      f2 = (getHeight() - K.height()) / f2;
      if (K.width() <= f1 * 2.0F) {}
      for (f1 = K.centerX();; f1 = Math.min(Math.max(K.left + f1, paramMotionEvent.getX()), K.right - f1))
      {
        if (K.height() > f2 * 2.0F) {
          break label275;
        }
        f4 = K.centerY();
        f2 = f1;
        f1 = f4;
        break;
      }
      label275:
      float f4 = Math.min(Math.max(K.top + f2, paramMotionEvent.getY()), K.bottom - f2);
      f2 = f1;
      f1 = f4;
      break;
      bool = false;
      break label117;
      bool = false;
    }
  }
  
  private void c(boolean paramBoolean)
  {
    int i5 = 0;
    if ((k == null) || (!o)) {
      return;
    }
    int i2 = k.getIntrinsicWidth();
    int i3 = k.getIntrinsicHeight();
    int i1 = getWidth();
    int i4 = getHeight();
    int i6;
    int i7;
    if (((i2 < 0) || (i1 == i2)) && ((i3 < 0) || (i4 == i3)))
    {
      i1 = 1;
      k.setBounds(0, 0, i2, i3);
      if ((paramBoolean) || ((E == 0.0F) && (k != null) && (o)))
      {
        i6 = k.getIntrinsicWidth();
        i7 = k.getIntrinsicHeight();
        if (!s) {
          break label322;
        }
        i2 = f;
        label137:
        if (!s) {
          break label330;
        }
        i3 = f;
        label149:
        if (i6 >= 0)
        {
          i4 = i5;
          if (i2 != i6) {}
        }
        else if (i7 >= 0)
        {
          i4 = i5;
          if (i3 != i7) {}
        }
        else
        {
          i4 = 1;
        }
        if ((i4 == 0) || (s)) {
          break label339;
        }
        a.reset();
        label202:
        m.set(a);
        i4 = k.getIntrinsicWidth();
        i5 = k.getIntrinsicHeight();
        if (!s) {
          break label514;
        }
        i2 = i();
        label243:
        if (!s) {
          break label522;
        }
        i3 = i();
        label256:
        if ((i4 >= i2) || (i5 >= i3) || (s)) {
          break label531;
        }
      }
    }
    label322:
    label330:
    label339:
    label492:
    label514:
    label522:
    label531:
    for (E = 1.0F;; E = j())
    {
      F = Math.max(E * 4.0F, 4.0F);
      if ((i1 == 0) && (!a.isIdentity())) {
        break label542;
      }
      l = null;
      return;
      i1 = 0;
      break;
      i2 = getWidth();
      break label137;
      i3 = getHeight();
      break label149;
      I.set(0.0F, 0.0F, i6, i7);
      if (s) {
        J.set(t);
      }
      for (;;)
      {
        RectF localRectF = new RectF(i2 / 2 - i6 * v / 2.0F, i3 / 2 - i7 * v / 2.0F, i2 / 2 + i6 * v / 2.0F, i3 / 2 + i7 * v / 2.0F);
        if (!J.contains(localRectF)) {
          break label492;
        }
        a.setRectToRect(I, localRectF, Matrix.ScaleToFit.CENTER);
        break;
        J.set(0.0F, 0.0F, i2, i3);
      }
      a.setRectToRect(I, J, Matrix.ScaleToFit.CENTER);
      break label202;
      i2 = getWidth();
      break label243;
      i3 = getHeight();
      break label256;
    }
    label542:
    l = a;
  }
  
  private int i()
  {
    if (u > 0) {
      return u;
    }
    return f;
  }
  
  private float j()
  {
    a.getValues(L);
    return L[0];
  }
  
  private void k()
  {
    Object localObject = getContext();
    if (!e)
    {
      e = true;
      Resources localResources = ((Context)localObject).getApplicationContext().getResources();
      f = localResources.getDimensionPixelSize(aal.bG);
      Paint localPaint = new Paint();
      i = localPaint;
      localPaint.setAntiAlias(true);
      i.setColor(localResources.getColor(aal.bD));
      i.setStyle(Paint.Style.FILL);
      localPaint = new Paint();
      j = localPaint;
      localPaint.setAntiAlias(true);
      j.setColor(localResources.getColor(aal.bE));
      j.setStyle(Paint.Style.STROKE);
      j.setStrokeWidth(localResources.getDimension(aal.bF));
      int i1 = ViewConfiguration.get((Context)localObject).getScaledTouchSlop();
      d = i1 * i1;
    }
    w = new it((Context)localObject, this, (byte)0);
    x = new ScaleGestureDetector((Context)localObject, this);
    localObject = x;
    P = ki.a.a(localObject);
    D = new acx(this);
    G = new acz(this);
    H = new acy(this);
    b = new acw(this);
  }
  
  public int a(float paramFloat1, float paramFloat2)
  {
    float f3 = 0.0F;
    K.set(I);
    a.mapRect(K);
    float f1;
    float f2;
    label59:
    float f4;
    float f5;
    label111:
    label149:
    label203:
    int i1;
    if (s)
    {
      f1 = t.left;
      if (!s) {
        break label254;
      }
      f2 = t.right;
      f4 = K.left;
      f5 = K.right;
      if (!s) {
        break label264;
      }
      f1 = Math.max(f1 - K.right, Math.min(f2 - K.left, paramFloat1));
      f2 = f3;
      if (s) {
        f2 = t.top;
      }
      if (!s) {
        break label315;
      }
      f3 = t.bottom;
      f4 = K.top;
      f5 = K.bottom;
      if (!s) {
        break label325;
      }
      f2 = Math.max(f2 - K.bottom, Math.min(f3 - K.top, paramFloat2));
      a.postTranslate(f1, f2);
      invalidate();
      if (f1 != paramFloat1) {
        break label382;
      }
      i1 = 1;
      label227:
      if (f2 != paramFloat2) {
        break label388;
      }
    }
    label254:
    label264:
    label315:
    label325:
    label382:
    label388:
    for (int i2 = 1;; i2 = 0)
    {
      if ((i1 == 0) || (i2 == 0)) {
        break label394;
      }
      return 3;
      f1 = 0.0F;
      break;
      f2 = getWidth();
      break label59;
      if (f5 - f4 < f2 - f1)
      {
        f1 += (f2 - f1 - (f4 + f5)) / 2.0F;
        break label111;
      }
      f1 = Math.max(f2 - f5, Math.min(f1 - f4, paramFloat1));
      break label111;
      f3 = getHeight();
      break label149;
      if (f5 - f4 < f3 - f2)
      {
        f2 += (f3 - f2 - (f4 + f5)) / 2.0F;
        break label203;
      }
      f2 = Math.max(f3 - f5, Math.min(f2 - f4, paramFloat2));
      break label203;
      i1 = 0;
      break label227;
    }
    label394:
    if (i1 != 0) {
      return 1;
    }
    if (i2 != 0) {
      return 2;
    }
    return 0;
  }
  
  public void a(float paramFloat)
  {
    v = paramFloat;
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    a.postRotate(-c, getWidth() / 2, getHeight() / 2);
    paramFloat1 = Math.min(Math.max(paramFloat1, E), F * 1.5F) / j();
    a.postScale(paramFloat1, paramFloat1, paramFloat2, paramFloat3);
    a.postRotate(c, getWidth() / 2, getHeight() / 2);
    invalidate();
  }
  
  public void a(Drawable paramDrawable)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramDrawable != null)
    {
      bool1 = bool2;
      if (paramDrawable != k)
      {
        if (k != null) {
          k.setCallback(null);
        }
        k = paramDrawable;
        E = 0.0F;
        k.setCallback(this);
        bool1 = true;
      }
    }
    c(bool1);
    invalidate();
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean != p)
    {
      p = paramBoolean;
      requestLayout();
      invalidate();
    }
  }
  
  public boolean a()
  {
    if (!z) {}
    float f1;
    float f2;
    float f3;
    do
    {
      return false;
      if (G.a) {
        return true;
      }
      a.getValues(L);
      K.set(I);
      a.mapRect(K);
      f1 = getWidth();
      f2 = L[2];
      f3 = K.right - K.left;
    } while ((!z) || (f3 <= f1) || (f2 == 0.0F));
    return f1 >= f3 + f2;
  }
  
  public void b(boolean paramBoolean)
  {
    z = paramBoolean;
    if (!z) {
      g();
    }
  }
  
  public boolean b()
  {
    if (!z) {}
    float f1;
    float f2;
    float f3;
    do
    {
      do
      {
        return false;
        if (G.a) {
          return true;
        }
        a.getValues(L);
        K.set(I);
        a.mapRect(K);
        f1 = getWidth();
        f2 = L[2];
        f3 = K.right - K.left;
      } while ((!z) || (f3 <= f1));
      if (f2 == 0.0F) {
        return true;
      }
    } while (f1 >= f2 + f3);
    return true;
  }
  
  public void c()
  {
    w = null;
    x = null;
    k = null;
    D.a();
    D = null;
    G.a();
    G = null;
    H.a();
    H = null;
    b.a();
    b = null;
    setOnClickListener(null);
    y = null;
    M = false;
  }
  
  public void d()
  {
    boolean bool3 = k instanceof BitmapDrawable;
    if (!bool3) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      bool2 = bool1;
      if (k == null) {
        break label60;
      }
      bool2 = bool1;
      if (!bool3) {
        break label60;
      }
      if (((BitmapDrawable)k).getBitmap() != null) {
        break;
      }
      return;
    }
    E = 0.0F;
    k = null;
    boolean bool2 = false;
    label60:
    c(bool2);
    invalidate();
  }
  
  public Drawable e()
  {
    return k;
  }
  
  public boolean f()
  {
    return k != null;
  }
  
  public void g()
  {
    a.set(m);
    invalidate();
  }
  
  public void h()
  {
    float f4 = 0.0F;
    K.set(I);
    a.mapRect(K);
    float f1;
    float f2;
    label58:
    float f3;
    float f5;
    label99:
    label115:
    label131:
    float f6;
    if (s)
    {
      f1 = t.left;
      if (!s) {
        break label213;
      }
      f2 = t.right;
      f3 = K.left;
      f5 = K.right;
      if (f5 - f3 >= f2 - f1) {
        break label222;
      }
      f1 += (f2 - f1 - (f3 + f5)) / 2.0F;
      if (!s) {
        break label255;
      }
      f2 = t.top;
      if (!s) {
        break label260;
      }
      f3 = t.bottom;
      f6 = K.top;
      f5 = K.bottom;
      if (f5 - f6 >= f3 - f2) {
        break label269;
      }
      f2 = (f3 - f2 - (f5 + f6)) / 2.0F + f2;
    }
    for (;;)
    {
      if ((Math.abs(f1) <= 20.0F) && (Math.abs(f2) <= 20.0F)) {
        break label302;
      }
      H.a(f1, f2);
      return;
      f1 = 0.0F;
      break;
      label213:
      f2 = getWidth();
      break label58;
      label222:
      if (f3 > f1)
      {
        f1 -= f3;
        break label99;
      }
      if (f5 < f2)
      {
        f1 = f2 - f5;
        break label99;
      }
      f1 = 0.0F;
      break label99;
      label255:
      f2 = 0.0F;
      break label115;
      label260:
      f3 = getHeight();
      break label131;
      label269:
      if (f6 > f2)
      {
        f2 -= f6;
      }
      else
      {
        f2 = f4;
        if (f5 < f3) {
          f2 = f3 - f5;
        }
      }
    }
    label302:
    a.postTranslate(f1, f2);
    invalidate();
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    if (k == paramDrawable)
    {
      invalidate();
      return;
    }
    super.invalidateDrawable(paramDrawable);
  }
  
  public boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    M = true;
    if (!P) {
      return a(paramMotionEvent);
    }
    return false;
  }
  
  public boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    int i1;
    int i2;
    do
    {
      do
      {
        do
        {
          do
          {
            return false;
          } while (!P);
          N = paramMotionEvent.getX();
          O = paramMotionEvent.getY();
          return false;
        } while (!P);
        return a(paramMotionEvent);
      } while ((!P) || (!M));
      i1 = (int)(paramMotionEvent.getX() - N);
      i2 = (int)(paramMotionEvent.getY() - O);
    } while (i1 * i1 + i2 * i2 <= d);
    M = false;
    return false;
  }
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    if (z)
    {
      G.a();
      H.a();
    }
    return true;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i1;
    if (k != null)
    {
      i1 = paramCanvas.getSaveCount();
      paramCanvas.save();
      if (l != null) {
        paramCanvas.concat(l);
      }
      k.draw(paramCanvas);
      paramCanvas.restoreToCount(i1);
      if (q != null) {
        if (!r) {
          break label224;
        }
      }
    }
    label224:
    for (Bitmap localBitmap = g;; localBitmap = h)
    {
      i1 = (getWidth() - localBitmap.getWidth()) / 2;
      int i2 = (getHeight() - localBitmap.getHeight()) / 2;
      paramCanvas.drawBitmap(localBitmap, i1, i2, null);
      K.set(k.getBounds());
      if (l != null) {
        l.mapRect(K);
      }
      if (s)
      {
        i1 = paramCanvas.getSaveCount();
        paramCanvas.drawRect(0.0F, 0.0F, getWidth(), getHeight(), i);
        paramCanvas.save();
        paramCanvas.clipRect(t);
        if (l != null) {
          paramCanvas.concat(l);
        }
        k.draw(paramCanvas);
        paramCanvas.restoreToCount(i1);
        paramCanvas.drawRect(t, j);
      }
      return;
    }
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if ((z) && (!D.a)) {
      G.a(paramFloat1, paramFloat2);
    }
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    o = true;
    paramInt1 = getWidth();
    paramInt2 = getHeight();
    if (s)
    {
      u = Math.min(f, Math.min(paramInt1, paramInt2));
      paramInt1 = (paramInt1 - u) / 2;
      paramInt2 = (paramInt2 - u) / 2;
      paramInt3 = u;
      paramInt4 = u;
      t.set(paramInt1, paramInt2, paramInt3 + paramInt1, paramInt4 + paramInt2);
    }
    c(paramBoolean);
  }
  
  public void onLongPress(MotionEvent paramMotionEvent) {}
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (n != -1)
    {
      super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(n, Integer.MIN_VALUE));
      setMeasuredDimension(getMeasuredWidth(), n);
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
  {
    if (z)
    {
      C = false;
      a(j() * paramScaleGestureDetector.getScaleFactor(), paramScaleGestureDetector.getFocusX(), paramScaleGestureDetector.getFocusY());
    }
    return true;
  }
  
  public boolean onScaleBegin(ScaleGestureDetector paramScaleGestureDetector)
  {
    if (z)
    {
      D.a();
      C = true;
    }
    return true;
  }
  
  public void onScaleEnd(ScaleGestureDetector paramScaleGestureDetector)
  {
    float f3 = j();
    float f5;
    float f1;
    float f6;
    float f4;
    float f7;
    if (f3 > F)
    {
      f5 = 1.0F / (1.0F - F / f3);
      float f8 = 1.0F - f5;
      f1 = getWidth() / 2;
      f2 = getHeight() / 2;
      f6 = K.left * f8;
      f4 = K.top * f8;
      f7 = getWidth() * f5 + K.right * f8;
      f5 = f5 * getHeight() + f8 * K.bottom;
      if (f7 <= f6) {
        break label189;
      }
      f1 = (f7 + f6) / 2.0F;
      if (f5 <= f4) {
        break label204;
      }
    }
    label189:
    label204:
    for (float f2 = (f5 + f4) / 2.0F;; f2 = Math.min(Math.max(f5, f2), f4))
    {
      D.a(f3, F, f1, f2);
      if ((z) && (C))
      {
        B = true;
        g();
      }
      return;
      f1 = Math.min(Math.max(f7, f1), f6);
      break;
    }
  }
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if ((z) && (!D.a)) {
      a(-paramFloat1, -paramFloat2);
    }
    return true;
  }
  
  public void onShowPress(MotionEvent paramMotionEvent) {}
  
  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if ((y != null) && (!C)) {
      y.onClick(this);
    }
    C = false;
    return true;
  }
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((x == null) || (w == null)) {}
    do
    {
      return true;
      x.onTouchEvent(paramMotionEvent);
      w.a(paramMotionEvent);
      switch (paramMotionEvent.getAction())
      {
      case 2: 
      default: 
        return true;
      }
    } while (G.a);
    h();
    return true;
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    y = paramOnClickListener;
  }
  
  public boolean verifyDrawable(Drawable paramDrawable)
  {
    return (k == paramDrawable) || (super.verifyDrawable(paramDrawable));
  }
}

/* Location:
 * Qualified Name:     com.android.ex.photo.views.PhotoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */