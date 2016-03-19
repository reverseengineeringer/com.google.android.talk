import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import java.util.Map;

public final class crk
{
  public static float a = 0.0F;
  private static DecelerateInterpolator d = new DecelerateInterpolator(1.0F);
  private static int e = -1;
  private static int f;
  private static int g;
  private static int h;
  private static int i;
  private static float j;
  private static float k;
  final crp b;
  Map<crq, ObjectAnimator> c = new hq();
  private float l;
  private final int m;
  private final VelocityTracker n;
  private float o;
  private boolean p;
  private boolean q;
  private crq r;
  private View s;
  private boolean t;
  private float u;
  private float v;
  private float w;
  
  public crk(Resources paramResources, VelocityTracker paramVelocityTracker, crp paramcrp, float paramFloat1, float paramFloat2)
  {
    b = paramcrp;
    m = 0;
    n = paramVelocityTracker;
    u = paramFloat1;
    l = paramFloat2;
    if (e == -1)
    {
      e = paramResources.getInteger(aal.nC);
      f = paramResources.getInteger(aal.ny);
      g = paramResources.getInteger(aal.nA);
      h = paramResources.getInteger(aal.nz);
      i = paramResources.getInteger(aal.nB);
      j = paramResources.getDimension(aal.nw);
      k = paramResources.getDimension(aal.nx);
    }
  }
  
  private ObjectAnimator a(View paramView, float paramFloat)
  {
    if (m == 0) {}
    for (String str = "translationX";; str = "translationY") {
      return ObjectAnimator.ofFloat(paramView, str, new float[] { paramFloat });
    }
  }
  
  public static void a(View paramView)
  {
    a(paramView, new RectF(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom()));
  }
  
  private static void a(View paramView, RectF paramRectF)
  {
    while ((paramView.getParent() instanceof View))
    {
      paramView = (View)paramView.getParent();
      paramView.getMatrix().mapRect(paramRectF);
      paramView.invalidate((int)Math.floor(left), (int)Math.floor(top), (int)Math.ceil(right), (int)Math.ceil(bottom));
    }
  }
  
  private float b(View paramView)
  {
    if (m == 0) {
      return paramView.getMeasuredWidth();
    }
    return paramView.getMeasuredHeight();
  }
  
  public void a(float paramFloat)
  {
    u = paramFloat;
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      bool = p;
      float f2;
      do
      {
        return bool;
        v = paramMotionEvent.getY();
        p = false;
        q = false;
        Object localObject = b.a(paramMotionEvent);
        if ((localObject instanceof crq)) {}
        for (localObject = (crq)localObject;; localObject = null)
        {
          r = ((crq)localObject);
          n.clear();
          if (r == null) {
            break;
          }
          if (c.containsKey(r)) {
            ((ObjectAnimator)c.get(r)).cancel();
          }
          s = r.a();
          t = b.a(r);
          n.addMovement(paramMotionEvent);
          o = paramMotionEvent.getX();
          w = paramMotionEvent.getY();
          break;
        }
        if (r == null) {
          break label384;
        }
        if ((v < 0.0F) || (p)) {
          break label307;
        }
        f2 = paramMotionEvent.getY();
        f1 = paramMotionEvent.getX();
        f2 = Math.abs(f2 - w);
        f1 = Math.abs(f1 - o);
        if ((!q) && ((f2 <= 2.0F) || (f2 <= f1 * 1.2F))) {
          break label307;
        }
        v = paramMotionEvent.getY();
      } while (f2 <= k);
      q = true;
      return false;
      label307:
      n.addMovement(paramMotionEvent);
      float f1 = paramMotionEvent.getX() - o;
      if (Math.abs(f1) > l)
      {
        b.a(r, (int)Math.signum(f1));
        p = true;
        o = (paramMotionEvent.getX() - s.getTranslationX());
        w = paramMotionEvent.getY();
      }
      label384:
      v = paramMotionEvent.getY();
      continue;
      p = false;
      r = null;
      s = null;
      v = -1.0F;
      q = false;
    }
  }
  
  public void b(float paramFloat)
  {
    l = paramFloat;
  }
  
  public boolean b(MotionEvent paramMotionEvent)
  {
    if (!p) {
      return false;
    }
    n.addMovement(paramMotionEvent);
    float f1;
    float f3;
    float f2;
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 2: 
    case 4: 
      do
      {
        return true;
      } while (r == null);
      f1 = paramMotionEvent.getX() - o;
      if (Math.abs(f1) < j) {
        return true;
      }
      if (!b.a(r))
      {
        f3 = b(s);
        f2 = 0.05F * f3;
        if (Math.abs(f1) >= f3) {
          if (f1 > 0.0F) {
            f1 = f2;
          }
        }
      }
      break;
    }
    for (;;)
    {
      label135:
      b.b(r, (int)Math.signum(f1));
      paramMotionEvent = s;
      if (m == 0) {
        paramMotionEvent.setTranslationX(f1);
      }
      for (;;)
      {
        a(r.a());
        break;
        f1 = -f2;
        break label135;
        f1 = f2 * (float)Math.sin(f1 / f3 * 1.5707963267948966D);
        break label135;
        paramMotionEvent.setTranslationY(f1);
      }
      if (r == null) {
        break;
      }
      f1 = h;
      f2 = u;
      n.computeCurrentVelocity(1000, f1 * f2);
      f3 = e;
      float f4 = u;
      paramMotionEvent = n;
      label277:
      label294:
      label333:
      int i2;
      label367:
      int i3;
      if (m == 0)
      {
        f1 = paramMotionEvent.getXVelocity();
        paramMotionEvent = n;
        if (m != 0) {
          break label651;
        }
        f2 = paramMotionEvent.getYVelocity();
        float f5 = Math.abs(s.getTranslationX());
        float f6 = b(s);
        if (f5 <= 0.4D * f6) {
          break label659;
        }
        i1 = 1;
        if ((Math.abs(f1) <= f3 * f4) || (Math.abs(f1) <= Math.abs(f2))) {
          break label677;
        }
        if (f1 <= 0.0F) {
          break label665;
        }
        i2 = 1;
        if (s.getTranslationX() <= 0.0F) {
          break label671;
        }
        i3 = 1;
        label382:
        if ((i2 != i3) || (f5 <= f6 * 0.05D)) {
          break label677;
        }
        i2 = 1;
        label406:
        if ((!b.a(r)) || ((i2 == 0) && (i1 == 0))) {
          break label683;
        }
        i1 = 1;
        label435:
        if (i1 == 0) {
          break label712;
        }
        paramMotionEvent = r;
        if (i2 == 0) {
          break label689;
        }
        label450:
        localView = r.a();
        if ((f1 >= 0.0F) && ((f1 != 0.0F) || (localView.getTranslationX() >= 0.0F)) && ((f1 != 0.0F) || (localView.getTranslationX() != 0.0F) || (m != 1))) {
          break label694;
        }
        f2 = -b(localView);
        label515:
        i1 = g;
        if (f1 == 0.0F) {
          break label704;
        }
      }
      label651:
      label659:
      label665:
      label671:
      label677:
      label683:
      label689:
      label694:
      label704:
      for (int i1 = Math.min(i1, (int)(Math.abs(f2 - localView.getTranslationX()) * 1000.0F / Math.abs(f1)));; i1 = f)
      {
        if ((localView != null) && (localView.isHardwareAccelerated()))
        {
          localView.setLayerType(2, null);
          localView.buildLayer();
        }
        localObjectAnimator = a(localView, f2);
        localObjectAnimator.setInterpolator(d);
        localObjectAnimator.setDuration(i1);
        localObjectAnimator.addListener(new crl(this, localView, paramMotionEvent));
        localObjectAnimator.addUpdateListener(new crm(this, localView));
        localObjectAnimator.start();
        break;
        f1 = paramMotionEvent.getYVelocity();
        break label277;
        f2 = paramMotionEvent.getXVelocity();
        break label294;
        i1 = 0;
        break label333;
        i2 = 0;
        break label367;
        i3 = 0;
        break label382;
        i2 = 0;
        break label406;
        i1 = 0;
        break label435;
        f1 = 0.0F;
        break label450;
        f2 = b(localView);
        break label515;
      }
      label712:
      paramMotionEvent = r;
      View localView = paramMotionEvent.a();
      ObjectAnimator localObjectAnimator = a(localView, 0.0F);
      localObjectAnimator.setDuration(i);
      localObjectAnimator.addUpdateListener(new crn(this, localView));
      localObjectAnimator.addListener(new cro(this, paramMotionEvent, localObjectAnimator, localView));
      localObjectAnimator.start();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     crk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */