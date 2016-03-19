package android.support.v7.widget;

import aax;
import aay;
import aen;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import fv;
import java.util.List;
import jx;
import ks;
import lc;
import sb;
import sr;
import vg;
import vv;
import vw;
import vz;

public class SwitchCompat
  extends CompoundButton
{
  private static final int[] F = { 16842912 };
  private Layout A;
  private Layout B;
  private TransformationMethod C;
  private final Rect D = new Rect();
  private final vv E;
  public aay a;
  private Drawable b;
  private Drawable c;
  private int d;
  private int e;
  private int f;
  private boolean g;
  private CharSequence h;
  private CharSequence i;
  private boolean j;
  private int k;
  private int l;
  private float m;
  private float n;
  private VelocityTracker o = VelocityTracker.obtain();
  private int p;
  private float q;
  private int r;
  private int s;
  private int t;
  private int u;
  private int v;
  private int w;
  private int x;
  private TextPaint y = new TextPaint(1);
  private ColorStateList z;
  
  public SwitchCompat(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SwitchCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aen.ae);
  }
  
  public SwitchCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = getResources();
    y.density = getDisplayMetricsdensity;
    paramAttributeSet = vw.a(paramContext, paramAttributeSet, sb.bU, paramInt);
    b = paramAttributeSet.a(sb.bX);
    if (b != null) {
      b.setCallback(this);
    }
    c = paramAttributeSet.a(sb.ce);
    if (c != null) {
      c.setCallback(this);
    }
    h = paramAttributeSet.c(sb.bW);
    i = paramAttributeSet.c(sb.bV);
    j = paramAttributeSet.a(sb.bY, true);
    d = paramAttributeSet.d(sb.cd, 0);
    e = paramAttributeSet.d(sb.ca, 0);
    f = paramAttributeSet.d(sb.cb, 0);
    g = paramAttributeSet.a(sb.bZ, false);
    paramInt = paramAttributeSet.f(sb.cc, 0);
    if (paramInt != 0) {
      a(paramContext, paramInt);
    }
    E = paramAttributeSet.b();
    paramAttributeSet.a();
    paramContext = ViewConfiguration.get(paramContext);
    l = paramContext.getScaledTouchSlop();
    p = paramContext.getScaledMinimumFlingVelocity();
    refreshDrawableState();
    setChecked(isChecked());
  }
  
  private Layout a(CharSequence paramCharSequence)
  {
    TextPaint localTextPaint;
    if (C != null)
    {
      paramCharSequence = C.getTransformation(paramCharSequence, this);
      localTextPaint = y;
      if (paramCharSequence == null) {
        break label62;
      }
    }
    label62:
    for (int i1 = (int)Math.ceil(Layout.getDesiredWidth(paramCharSequence, y));; i1 = 0)
    {
      return new StaticLayout(paramCharSequence, localTextPaint, i1, Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, true);
      break;
    }
  }
  
  private void a()
  {
    if (a != null)
    {
      clearAnimation();
      a = null;
    }
  }
  
  private boolean b()
  {
    return q > 0.5F;
  }
  
  private int c()
  {
    if (vz.a(this)) {}
    for (float f1 = 1.0F - q;; f1 = q) {
      return (int)(f1 * d() + 0.5F);
    }
  }
  
  private int d()
  {
    if (c != null)
    {
      Rect localRect2 = D;
      c.getPadding(localRect2);
      if (b != null) {}
      for (Rect localRect1 = vg.a(b);; localRect1 = vg.a) {
        return r - t - left - right - left - right;
      }
    }
    return 0;
  }
  
  public void a(float paramFloat)
  {
    q = paramFloat;
    invalidate();
  }
  
  public void a(Context paramContext, int paramInt)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramInt, sb.ch);
    paramContext = localTypedArray.getColorStateList(sb.ci);
    if (paramContext != null)
    {
      z = paramContext;
      paramInt = localTypedArray.getDimensionPixelSize(sb.cj, 0);
      if ((paramInt != 0) && (paramInt != y.getTextSize()))
      {
        y.setTextSize(paramInt);
        requestLayout();
      }
      paramInt = localTypedArray.getInt(sb.cl, -1);
      int i1 = localTypedArray.getInt(sb.ck, -1);
      switch (paramInt)
      {
      default: 
        paramContext = null;
        label118:
        a(paramContext, i1);
        if (!localTypedArray.getBoolean(sb.cm, false)) {
          break;
        }
      }
    }
    for (C = new sr(getContext());; C = null)
    {
      localTypedArray.recycle();
      return;
      z = getTextColors();
      break;
      paramContext = Typeface.SANS_SERIF;
      break label118;
      paramContext = Typeface.SERIF;
      break label118;
      paramContext = Typeface.MONOSPACE;
      break label118;
    }
  }
  
  public void a(Typeface paramTypeface)
  {
    if (y.getTypeface() != paramTypeface)
    {
      y.setTypeface(paramTypeface);
      requestLayout();
      invalidate();
    }
  }
  
  public void a(Typeface paramTypeface, int paramInt)
  {
    boolean bool = false;
    if (paramInt > 0)
    {
      int i1;
      if (paramTypeface == null)
      {
        paramTypeface = Typeface.defaultFromStyle(paramInt);
        a(paramTypeface);
        if (paramTypeface == null) {
          break label88;
        }
        i1 = paramTypeface.getStyle();
        label31:
        paramInt = (i1 ^ 0xFFFFFFFF) & paramInt;
        paramTypeface = y;
        if ((paramInt & 0x1) != 0) {
          bool = true;
        }
        paramTypeface.setFakeBoldText(bool);
        paramTypeface = y;
        if ((paramInt & 0x2) == 0) {
          break label94;
        }
      }
      label88:
      label94:
      for (float f1 = -0.25F;; f1 = 0.0F)
      {
        paramTypeface.setTextSkewX(f1);
        return;
        paramTypeface = Typeface.create(paramTypeface, paramInt);
        break;
        i1 = 0;
        break label31;
      }
    }
    y.setFakeBoldText(false);
    y.setTextSkewX(0.0F);
    a(paramTypeface);
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = D;
    int i2 = u;
    int i5 = v;
    int i7 = w;
    int i6 = x;
    int i8 = i2 + c();
    Object localObject;
    int i9;
    label139:
    int i4;
    int i3;
    if (b != null)
    {
      localObject = vg.a(b);
      if (c == null) {
        break label340;
      }
      c.getPadding(localRect);
      i9 = left;
      if (localObject == null) {
        break label320;
      }
      i1 = i2;
      if (left > left) {
        i1 = i2 + (left - left);
      }
      if (top <= top) {
        break label314;
      }
      i2 = top - top + i5;
      i4 = i7;
      if (right > right) {
        i4 = i7 - (right - right);
      }
      if (bottom <= bottom) {
        break label307;
      }
      i3 = i6 - (bottom - bottom);
      label201:
      c.setBounds(i1, i2, i4, i3);
    }
    label307:
    label314:
    label320:
    label340:
    for (int i1 = i9 + i8;; i1 = i8)
    {
      if (b != null)
      {
        b.getPadding(localRect);
        i2 = i1 - left;
        i1 = i1 + t + right;
        b.setBounds(i2, i5, i1, i6);
        localObject = getBackground();
        if (localObject != null) {
          fv.a((Drawable)localObject, i2, i5, i1, i6);
        }
      }
      super.draw(paramCanvas);
      return;
      localObject = vg.a;
      break;
      i3 = i6;
      break label201;
      i2 = i5;
      break label139;
      i3 = i6;
      i4 = i5;
      i1 = i2;
      i2 = i4;
      i4 = i7;
      break label201;
    }
  }
  
  public void drawableHotspotChanged(float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      super.drawableHotspotChanged(paramFloat1, paramFloat2);
    }
    if (b != null) {
      fv.a(b, paramFloat1, paramFloat2);
    }
    if (c != null) {
      fv.a(c, paramFloat1, paramFloat2);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    if (b != null) {
      b.setState(arrayOfInt);
    }
    if (c != null) {
      c.setState(arrayOfInt);
    }
    invalidate();
  }
  
  public int getCompoundPaddingLeft()
  {
    int i1;
    if (!vz.a(this)) {
      i1 = super.getCompoundPaddingLeft();
    }
    int i2;
    do
    {
      return i1;
      i2 = super.getCompoundPaddingLeft() + r;
      i1 = i2;
    } while (TextUtils.isEmpty(getText()));
    return i2 + f;
  }
  
  public int getCompoundPaddingRight()
  {
    int i1;
    if (vz.a(this)) {
      i1 = super.getCompoundPaddingRight();
    }
    int i2;
    do
    {
      return i1;
      i2 = super.getCompoundPaddingRight() + r;
      i1 = i2;
    } while (TextUtils.isEmpty(getText()));
    return i2 + f;
  }
  
  public void jumpDrawablesToCurrentState()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      super.jumpDrawablesToCurrentState();
      if (b != null) {
        b.jumpToCurrentState();
      }
      if (c != null) {
        c.jumpToCurrentState();
      }
      a();
    }
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if (isChecked()) {
      mergeDrawableStates(arrayOfInt, F);
    }
    return arrayOfInt;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Object localObject1 = D;
    Object localObject3 = c;
    int i3;
    int i4;
    int i5;
    int i6;
    Object localObject2;
    label151:
    int i2;
    if (localObject3 != null)
    {
      ((Drawable)localObject3).getPadding((Rect)localObject1);
      i3 = v;
      i4 = x;
      i5 = top;
      i6 = bottom;
      localObject2 = b;
      if (localObject3 != null)
      {
        if ((!g) || (localObject2 == null)) {
          break label322;
        }
        Rect localRect = vg.a((Drawable)localObject2);
        ((Drawable)localObject2).copyBounds((Rect)localObject1);
        left += left;
        right -= right;
        i1 = paramCanvas.save();
        paramCanvas.clipRect((Rect)localObject1, Region.Op.DIFFERENCE);
        ((Drawable)localObject3).draw(paramCanvas);
        paramCanvas.restoreToCount(i1);
      }
      i2 = paramCanvas.save();
      if (localObject2 != null) {
        ((Drawable)localObject2).draw(paramCanvas);
      }
      if (!b()) {
        break label331;
      }
      localObject1 = A;
      label180:
      if (localObject1 != null)
      {
        localObject3 = getDrawableState();
        if (z != null) {
          y.setColor(z.getColorForState((int[])localObject3, 0));
        }
        y.drawableState = ((int[])localObject3);
        if (localObject2 == null) {
          break label340;
        }
        localObject2 = ((Drawable)localObject2).getBounds();
        i1 = left;
      }
    }
    label322:
    label331:
    label340:
    for (int i1 = right + i1;; i1 = getWidth())
    {
      i1 /= 2;
      int i7 = ((Layout)localObject1).getWidth() / 2;
      i3 = (i3 + i5 + (i4 - i6)) / 2;
      i4 = ((Layout)localObject1).getHeight() / 2;
      paramCanvas.translate(i1 - i7, i3 - i4);
      ((Layout)localObject1).draw(paramCanvas);
      paramCanvas.restoreToCount(i2);
      return;
      ((Rect)localObject1).setEmpty();
      break;
      ((Drawable)localObject3).draw(paramCanvas);
      break label151;
      localObject1 = B;
      break label180;
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName("android.widget.Switch");
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName("android.widget.Switch");
      if (!isChecked()) {
        break label57;
      }
    }
    CharSequence localCharSequence2;
    label57:
    for (CharSequence localCharSequence1 = h;; localCharSequence1 = i)
    {
      if (!TextUtils.isEmpty(localCharSequence1))
      {
        localCharSequence2 = paramAccessibilityNodeInfo.getText();
        if (!TextUtils.isEmpty(localCharSequence2)) {
          break;
        }
        paramAccessibilityNodeInfo.setText(localCharSequence1);
      }
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(localCharSequence2).append(' ').append(localCharSequence1);
    paramAccessibilityNodeInfo.setText(localStringBuilder);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = 0;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    Rect localRect1;
    Rect localRect2;
    if (b != null)
    {
      localRect1 = D;
      if (c != null)
      {
        c.getPadding(localRect1);
        localRect2 = vg.a(b);
        paramInt2 = Math.max(0, left - left);
      }
    }
    for (paramInt1 = Math.max(0, right - right);; paramInt1 = i1)
    {
      if (vz.a(this))
      {
        paramInt3 = getPaddingLeft() + paramInt2;
        paramInt4 = r + paramInt3 - paramInt2 - paramInt1;
        label113:
        switch (getGravity() & 0x70)
        {
        default: 
          paramInt2 = getPaddingTop();
          paramInt1 = s + paramInt2;
        }
      }
      for (;;)
      {
        u = paramInt3;
        v = paramInt2;
        x = paramInt1;
        w = paramInt4;
        return;
        localRect1.setEmpty();
        break;
        paramInt4 = getWidth() - getPaddingRight() - paramInt1;
        paramInt3 = paramInt1 + (paramInt2 + (paramInt4 - r));
        break label113;
        paramInt2 = (getPaddingTop() + getHeight() - getPaddingBottom()) / 2 - s / 2;
        paramInt1 = s + paramInt2;
        continue;
        paramInt1 = getHeight() - getPaddingBottom();
        paramInt2 = paramInt1 - s;
      }
      paramInt2 = 0;
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int i4 = 0;
    if (j)
    {
      if (A == null) {
        A = a(h);
      }
      if (B == null) {
        B = a(i);
      }
    }
    Rect localRect = D;
    int i1;
    int i3;
    if (b != null)
    {
      b.getPadding(localRect);
      i2 = b.getIntrinsicWidth() - left - right;
      i1 = b.getIntrinsicHeight();
      if (!j) {
        break label306;
      }
      i3 = Math.max(A.getWidth(), B.getWidth()) + (d << 1);
      label133:
      t = Math.max(i3, i2);
      if (c == null) {
        break label312;
      }
      c.getPadding(localRect);
    }
    for (int i2 = c.getIntrinsicHeight();; i2 = i4)
    {
      int i6 = left;
      int i5 = right;
      i4 = i5;
      i3 = i6;
      if (b != null)
      {
        localRect = vg.a(b);
        i3 = Math.max(i6, left);
        i4 = Math.max(i5, right);
      }
      i3 = Math.max(e, i4 + (i3 + t * 2));
      i1 = Math.max(i2, i1);
      r = i3;
      s = i1;
      super.onMeasure(paramInt1, paramInt2);
      if (getMeasuredHeight() < i1) {
        setMeasuredDimension(ks.a.d(this), i1);
      }
      return;
      i1 = 0;
      i2 = 0;
      break;
      label306:
      i3 = 0;
      break label133;
      label312:
      localRect.setEmpty();
    }
  }
  
  public void onPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onPopulateAccessibilityEvent(paramAccessibilityEvent);
    if (isChecked()) {}
    for (CharSequence localCharSequence = h;; localCharSequence = i)
    {
      if (localCharSequence != null) {
        paramAccessibilityEvent.getText().add(localCharSequence);
      }
      return;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f3 = 1.0F;
    int i2 = 0;
    boolean bool1 = true;
    o.addMovement(paramMotionEvent);
    switch (jx.a(paramMotionEvent))
    {
    }
    for (;;)
    {
      bool1 = super.onTouchEvent(paramMotionEvent);
      float f1;
      int i1;
      label474:
      label486:
      for (;;)
      {
        return bool1;
        f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        if (!isEnabled()) {
          break;
        }
        i1 = i2;
        if (b != null)
        {
          i1 = c();
          b.getPadding(D);
          int i3 = v;
          int i4 = l;
          int i5 = i1 + u - l;
          int i6 = t;
          int i7 = D.left;
          int i8 = D.right;
          int i9 = l;
          int i10 = x;
          int i11 = l;
          i1 = i2;
          if (f1 > i5)
          {
            i1 = i2;
            if (f1 < i6 + i5 + i7 + i8 + i9)
            {
              i1 = i2;
              if (f2 > i3 - i4)
              {
                i1 = i2;
                if (f2 < i10 + i11) {
                  i1 = 1;
                }
              }
            }
          }
        }
        if (i1 == 0) {
          break;
        }
        k = 1;
        m = f1;
        n = f2;
        break;
        switch (k)
        {
        case 0: 
        default: 
          break;
        case 1: 
          f1 = paramMotionEvent.getX();
          f2 = paramMotionEvent.getY();
          if ((Math.abs(f1 - m) <= l) && (Math.abs(f2 - n) <= l)) {
            break;
          }
          k = 2;
          getParent().requestDisallowInterceptTouchEvent(true);
          m = f1;
          n = f2;
          return true;
        case 2: 
          float f4 = paramMotionEvent.getX();
          i1 = d();
          f1 = f4 - m;
          if (i1 != 0)
          {
            f1 /= i1;
            f2 = f1;
            if (vz.a(this)) {
              f2 = -f1;
            }
            f2 += q;
            if (f2 >= 0.0F) {
              break label474;
            }
            f1 = 0.0F;
          }
          for (;;)
          {
            if (f1 == q) {
              break label486;
            }
            m = f4;
            a(f1);
            return true;
            if (f1 > 0.0F)
            {
              f1 = 1.0F;
              break;
            }
            f1 = -1.0F;
            break;
            f1 = f3;
            if (f2 <= 1.0F) {
              f1 = f2;
            }
          }
        }
      }
      if (k == 2)
      {
        k = 0;
        boolean bool2;
        if ((paramMotionEvent.getAction() == 1) && (isEnabled()))
        {
          i1 = 1;
          bool2 = isChecked();
          if (i1 == 0) {
            break label666;
          }
          o.computeCurrentVelocity(1000);
          f1 = o.getXVelocity();
          if (Math.abs(f1) <= p) {
            break label657;
          }
          if (!vz.a(this)) {
            break label639;
          }
          if (f1 >= 0.0F) {
            break label633;
          }
          bool1 = true;
        }
        for (;;)
        {
          if (bool1 != bool2) {
            playSoundEffect(0);
          }
          setChecked(bool1);
          MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
          localMotionEvent.setAction(3);
          super.onTouchEvent(localMotionEvent);
          localMotionEvent.recycle();
          super.onTouchEvent(paramMotionEvent);
          return true;
          i1 = 0;
          break;
          label633:
          bool1 = false;
          continue;
          label639:
          if (f1 > 0.0F)
          {
            bool1 = true;
          }
          else
          {
            bool1 = false;
            continue;
            label657:
            bool1 = b();
            continue;
            label666:
            bool1 = bool2;
          }
        }
      }
      k = 0;
      o.clear();
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    float f1 = 1.0F;
    super.setChecked(paramBoolean);
    paramBoolean = isChecked();
    if ((getWindowToken() != null) && (ks.a.z(this)) && (isShown()))
    {
      if (a != null) {
        a();
      }
      float f2 = q;
      if (paramBoolean) {}
      for (;;)
      {
        a = new aay(this, f2, f1);
        a.setDuration(250L);
        a.setAnimationListener(new aax(this, paramBoolean));
        startAnimation(a);
        return;
        f1 = 0.0F;
      }
    }
    a();
    if (paramBoolean) {}
    for (;;)
    {
      a(f1);
      return;
      f1 = 0.0F;
    }
  }
  
  public void toggle()
  {
    if (!isChecked()) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == b) || (paramDrawable == c);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.SwitchCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */