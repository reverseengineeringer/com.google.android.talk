import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class vv
{
  public static final boolean a;
  private static final PorterDuff.Mode b;
  private static final WeakHashMap<Context, vv> c;
  private static final hv d;
  private static final int[] e;
  private static final int[] f;
  private static final int[] g;
  private static final int[] h;
  private static final int[] i;
  private static final int[] j;
  private final WeakReference<Context> k;
  private SparseArray<ColorStateList> l;
  private ColorStateList m;
  
  static
  {
    if (Build.VERSION.SDK_INT < 21) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = PorterDuff.Mode.SRC_IN;
      c = new WeakHashMap();
      d = new hv();
      e = new int[] { aal.ar, aal.ap, aal.G };
      f = new int[] { aal.Q, aal.T, aal.aa, aal.S, aal.R, aal.Z, aal.U, aal.V, aal.Y, aal.X, aal.W, aal.ab };
      g = new int[] { aal.ao, aal.aq, aal.O, aal.an };
      h = new int[] { aal.ae, aal.M, aal.ad };
      i = new int[] { aal.P, aal.am, aal.as, aal.ai, aal.aj, aal.af, aal.al, aal.ak, aal.K, aal.H };
      j = new int[] { aal.I, aal.L };
      return;
    }
  }
  
  private vv(Context paramContext)
  {
    k = new WeakReference(paramContext);
  }
  
  private static PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode)
  {
    PorterDuffColorFilter localPorterDuffColorFilter2 = d.a(paramInt, paramMode);
    PorterDuffColorFilter localPorterDuffColorFilter1 = localPorterDuffColorFilter2;
    if (localPorterDuffColorFilter2 == null)
    {
      localPorterDuffColorFilter1 = new PorterDuffColorFilter(paramInt, paramMode);
      d.a(paramInt, paramMode, localPorterDuffColorFilter1);
    }
    return localPorterDuffColorFilter1;
  }
  
  public static Drawable a(Context paramContext, int paramInt)
  {
    if ((a(f, paramInt)) || (a(e, paramInt)) || (a(g, paramInt)) || (a(i, paramInt)) || (a(h, paramInt)) || (a(j, paramInt)) || (paramInt == aal.N)) {}
    for (int n = 1; n != 0; n = 0) {
      return a(paramContext).a(paramInt);
    }
    return ey.a(paramContext, paramInt);
  }
  
  public static vv a(Context paramContext)
  {
    vv localvv2 = (vv)c.get(paramContext);
    vv localvv1 = localvv2;
    if (localvv2 == null)
    {
      localvv1 = new vv(paramContext);
      c.put(paramContext, localvv1);
    }
    return localvv1;
  }
  
  private static void a(Drawable paramDrawable, int paramInt, PorterDuff.Mode paramMode)
  {
    PorterDuff.Mode localMode = paramMode;
    if (paramMode == null) {
      localMode = b;
    }
    paramDrawable.setColorFilter(a(paramInt, localMode));
  }
  
  public static void a(Drawable paramDrawable, vu paramvu, int[] paramArrayOfInt)
  {
    Object localObject2 = null;
    if ((a(paramDrawable)) && (paramDrawable.mutate() != paramDrawable)) {}
    label57:
    label73:
    label97:
    label104:
    label124:
    for (;;)
    {
      return;
      ColorStateList localColorStateList;
      Object localObject1;
      if ((d) || (c)) {
        if (d)
        {
          localColorStateList = a;
          if (!c) {
            break label97;
          }
          paramvu = b;
          localObject1 = localObject2;
          if (localColorStateList != null)
          {
            if (paramvu != null) {
              break label104;
            }
            localObject1 = localObject2;
          }
          paramDrawable.setColorFilter((ColorFilter)localObject1);
        }
      }
      for (;;)
      {
        if (Build.VERSION.SDK_INT > 10) {
          break label124;
        }
        paramDrawable.invalidateSelf();
        return;
        localColorStateList = null;
        break;
        paramvu = b;
        break label57;
        localObject1 = a(localColorStateList.getColorForState(paramArrayOfInt, 0), paramvu);
        break label73;
        paramDrawable.clearColorFilter();
      }
    }
  }
  
  private static boolean a(Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return true;
    }
    if ((paramDrawable instanceof LayerDrawable)) {
      return Build.VERSION.SDK_INT >= 16;
    }
    if ((paramDrawable instanceof InsetDrawable)) {
      return Build.VERSION.SDK_INT >= 14;
    }
    if ((paramDrawable instanceof DrawableContainer))
    {
      paramDrawable = paramDrawable.getConstantState();
      if ((paramDrawable instanceof DrawableContainer.DrawableContainerState))
      {
        paramDrawable = ((DrawableContainer.DrawableContainerState)paramDrawable).getChildren();
        int i1 = paramDrawable.length;
        int n = 0;
        while (n < i1)
        {
          if (!a(paramDrawable[n])) {
            return false;
          }
          n += 1;
        }
      }
    }
    return true;
  }
  
  private static boolean a(int[] paramArrayOfInt, int paramInt)
  {
    boolean bool2 = false;
    int i1 = paramArrayOfInt.length;
    int n = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (n < i1)
      {
        if (paramArrayOfInt[n] == paramInt) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      n += 1;
    }
  }
  
  private static ColorStateList b(Context paramContext, int paramInt)
  {
    paramInt = vr.a(paramContext, paramInt);
    int i2 = vr.a(paramContext, aen.O);
    int[] arrayOfInt1 = vr.a;
    int n = vr.c(paramContext, aen.M);
    paramContext = vr.d;
    int i1 = aal.a(i2, paramInt);
    int[] arrayOfInt2 = vr.b;
    i2 = aal.a(i2, paramInt);
    return new ColorStateList(new int[][] { arrayOfInt1, paramContext, arrayOfInt2, vr.h }, new int[] { n, i1, i2, paramInt });
  }
  
  public Drawable a(int paramInt)
  {
    return a(paramInt, false);
  }
  
  public Drawable a(int paramInt, boolean paramBoolean)
  {
    Object localObject3 = null;
    Context localContext = (Context)k.get();
    if (localContext == null) {
      return null;
    }
    Drawable localDrawable = ey.a(localContext, paramInt);
    Object localObject1 = localDrawable;
    Object localObject2;
    if (localDrawable != null)
    {
      localObject2 = localDrawable;
      if (Build.VERSION.SDK_INT >= 8) {
        localObject2 = localDrawable.mutate();
      }
      localObject1 = b(paramInt);
      if (localObject1 == null) {
        break label119;
      }
      localDrawable = fv.a.c((Drawable)localObject2);
      fv.a(localDrawable, (ColorStateList)localObject1);
      localObject2 = localObject3;
      if (paramInt == aal.ak) {
        localObject2 = PorterDuff.Mode.MULTIPLY;
      }
      localObject1 = localDrawable;
      if (localObject2 != null)
      {
        fv.a(localDrawable, (PorterDuff.Mode)localObject2);
        localObject1 = localDrawable;
      }
    }
    for (;;)
    {
      return (Drawable)localObject1;
      label119:
      if (paramInt == aal.N) {
        return new LayerDrawable(new Drawable[] { a(aal.M), a(aal.O) });
      }
      if (paramInt == aal.ah)
      {
        localObject1 = (LayerDrawable)localObject2;
        a(((LayerDrawable)localObject1).findDrawableByLayerId(16908288), vr.a(localContext, aen.P), b);
        a(((LayerDrawable)localObject1).findDrawableByLayerId(16908303), vr.a(localContext, aen.P), b);
        a(((LayerDrawable)localObject1).findDrawableByLayerId(16908301), vr.a(localContext, aen.N), b);
        localObject1 = localObject2;
      }
      else
      {
        localObject1 = localObject2;
        if (!a(paramInt, (Drawable)localObject2))
        {
          localObject1 = localObject2;
          if (paramBoolean) {
            localObject1 = null;
          }
        }
      }
    }
  }
  
  public final boolean a(int paramInt, Drawable paramDrawable)
  {
    Context localContext = (Context)k.get();
    if (localContext == null) {
      return false;
    }
    PorterDuff.Mode localMode = b;
    int n;
    int i1;
    if (a(e, paramInt))
    {
      n = aen.P;
      i1 = 1;
      paramInt = -1;
    }
    for (;;)
    {
      if (i1 != 0)
      {
        paramDrawable.setColorFilter(a(vr.a(localContext, n), localMode));
        if (paramInt != -1) {
          paramDrawable.setAlpha(paramInt);
        }
        return true;
        if (a(g, paramInt))
        {
          n = aen.N;
          i1 = 1;
          paramInt = -1;
          continue;
        }
        if (a(h, paramInt))
        {
          localMode = PorterDuff.Mode.MULTIPLY;
          i1 = 1;
          n = 16842801;
          paramInt = -1;
          continue;
        }
        if (paramInt == aal.ac)
        {
          n = 16842800;
          paramInt = Math.round(40.8F);
          i1 = 1;
        }
      }
      else
      {
        return false;
      }
      paramInt = -1;
      n = 0;
      i1 = 0;
    }
  }
  
  public final ColorStateList b(int paramInt)
  {
    Object localObject2 = (Context)k.get();
    if (localObject2 == null)
    {
      localObject2 = null;
      return (ColorStateList)localObject2;
    }
    Object localObject1;
    label43:
    int n;
    int[] arrayOfInt;
    int i1;
    Object localObject3;
    int i2;
    if (l != null)
    {
      localObject1 = (ColorStateList)l.get(paramInt);
      if (localObject1 != null) {
        break label967;
      }
      if (paramInt != aal.P) {
        break label188;
      }
      localObject1 = vr.a;
      n = vr.c((Context)localObject2, aen.P);
      arrayOfInt = vr.g;
      i1 = vr.a((Context)localObject2, aen.P);
      localObject3 = vr.h;
      i2 = vr.a((Context)localObject2, aen.N);
      localObject1 = new ColorStateList(new int[][] { localObject1, arrayOfInt, localObject3 }, new int[] { n, i1, i2 });
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (localObject1 == null) {
        break;
      }
      if (l == null) {
        l = new SparseArray();
      }
      l.append(paramInt, localObject1);
      return (ColorStateList)localObject1;
      localObject1 = null;
      break label43;
      label188:
      if (paramInt == aal.al)
      {
        localObject1 = vr.a;
        n = vr.a((Context)localObject2, 16842800, 0.1F);
        arrayOfInt = vr.e;
        i1 = vr.a((Context)localObject2, aen.N, 0.3F);
        localObject3 = vr.h;
        i2 = vr.a((Context)localObject2, 16842800, 0.3F);
        localObject1 = new ColorStateList(new int[][] { localObject1, arrayOfInt, localObject3 }, new int[] { n, i1, i2 });
      }
      else
      {
        if (paramInt == aal.ak)
        {
          localObject1 = new int[3][];
          arrayOfInt = new int[3];
          localObject3 = vr.b((Context)localObject2, aen.Q);
          if ((localObject3 != null) && (((ColorStateList)localObject3).isStateful()))
          {
            localObject1[0] = vr.a;
            arrayOfInt[0] = ((ColorStateList)localObject3).getColorForState(localObject1[0], 0);
            localObject1[1] = vr.e;
            arrayOfInt[1] = vr.a((Context)localObject2, aen.N);
            localObject1[2] = vr.h;
            arrayOfInt[2] = ((ColorStateList)localObject3).getDefaultColor();
          }
          for (;;)
          {
            localObject1 = new ColorStateList((int[][])localObject1, arrayOfInt);
            break;
            localObject1[0] = vr.a;
            arrayOfInt[0] = vr.c((Context)localObject2, aen.Q);
            localObject1[1] = vr.e;
            arrayOfInt[1] = vr.a((Context)localObject2, aen.N);
            localObject1[2] = vr.h;
            arrayOfInt[2] = vr.a((Context)localObject2, aen.Q);
          }
        }
        if ((paramInt == aal.K) || (paramInt == aal.H))
        {
          localObject1 = b((Context)localObject2, aen.M);
        }
        else if (paramInt == aal.J)
        {
          localObject1 = b((Context)localObject2, aen.L);
        }
        else if ((paramInt == aal.ai) || (paramInt == aal.aj))
        {
          localObject1 = vr.a;
          n = vr.c((Context)localObject2, aen.P);
          arrayOfInt = vr.g;
          i1 = vr.a((Context)localObject2, aen.P);
          localObject3 = vr.h;
          i2 = vr.a((Context)localObject2, aen.N);
          localObject1 = new ColorStateList(new int[][] { localObject1, arrayOfInt, localObject3 }, new int[] { n, i1, i2 });
        }
        else if (a(f, paramInt))
        {
          localObject1 = vr.b((Context)localObject2, aen.P);
        }
        else if (a(i, paramInt))
        {
          if (m == null)
          {
            n = vr.a((Context)localObject2, aen.P);
            i1 = vr.a((Context)localObject2, aen.N);
            localObject1 = vr.a;
            i2 = vr.c((Context)localObject2, aen.P);
            m = new ColorStateList(new int[][] { localObject1, vr.b, vr.c, vr.d, vr.e, vr.f, vr.h }, new int[] { i2, i1, i1, i1, i1, i1, n });
          }
          localObject1 = m;
        }
        else if (a(j, paramInt))
        {
          localObject1 = vr.a;
          n = vr.c((Context)localObject2, aen.P);
          arrayOfInt = vr.e;
          i1 = vr.a((Context)localObject2, aen.N);
          localObject3 = vr.h;
          i2 = vr.a((Context)localObject2, aen.P);
          localObject1 = new ColorStateList(new int[][] { localObject1, arrayOfInt, localObject3 }, new int[] { n, i1, i2 });
        }
        else if (paramInt == aal.ag)
        {
          localObject1 = vr.a;
          n = vr.c((Context)localObject2, aen.N);
          arrayOfInt = vr.h;
          i1 = vr.a((Context)localObject2, aen.N);
          localObject1 = new ColorStateList(new int[][] { localObject1, arrayOfInt }, new int[] { n, i1 });
        }
      }
    }
    label967:
    return (ColorStateList)localObject1;
  }
}

/* Location:
 * Qualified Name:     vv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */