import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class bh
  extends bg
  implements jm
{
  static final Interpolator A = new DecelerateInterpolator(2.5F);
  static final Interpolator B = new DecelerateInterpolator(1.5F);
  static final Interpolator C = new AccelerateInterpolator(2.5F);
  static final Interpolator D = new AccelerateInterpolator(1.5F);
  static boolean a;
  static final boolean b;
  static Field r;
  ArrayList<Runnable> c;
  Runnable[] d;
  boolean e;
  public ArrayList<av> f;
  ArrayList<av> g;
  ArrayList<Integer> h;
  ArrayList<an> i;
  ArrayList<av> j;
  ArrayList<an> k;
  ArrayList<Integer> l;
  ArrayList<a> m;
  int n = 0;
  bf o;
  be p;
  av q;
  boolean s;
  boolean t;
  boolean u;
  String v;
  boolean w;
  Bundle x = null;
  SparseArray<Parcelable> y = null;
  Runnable z = new bi(this);
  
  static
  {
    boolean bool = false;
    a = false;
    if (Build.VERSION.SDK_INT >= 11) {
      bool = true;
    }
    b = bool;
    r = null;
  }
  
  private static Animation a(float paramFloat1, float paramFloat2)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat1, paramFloat2);
    localAlphaAnimation.setInterpolator(B);
    localAlphaAnimation.setDuration(220L);
    return localAlphaAnimation;
  }
  
  private static Animation a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    AnimationSet localAnimationSet = new AnimationSet(false);
    Object localObject = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    ((ScaleAnimation)localObject).setInterpolator(A);
    ((ScaleAnimation)localObject).setDuration(220L);
    localAnimationSet.addAnimation((Animation)localObject);
    localObject = new AlphaAnimation(paramFloat3, paramFloat4);
    ((AlphaAnimation)localObject).setInterpolator(B);
    ((AlphaAnimation)localObject).setDuration(220L);
    localAnimationSet.addAnimation((Animation)localObject);
    return localAnimationSet;
  }
  
  private Animation a(av paramav, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    Animation localAnimation = paramav.onCreateAnimation(paramInt1, paramBoolean, Q);
    if (localAnimation != null) {
      paramav = localAnimation;
    }
    do
    {
      return paramav;
      if (Q == 0) {
        break;
      }
      localAnimation = AnimationUtils.loadAnimation(o.i(), Q);
      paramav = localAnimation;
    } while (localAnimation != null);
    if (paramInt1 == 0) {
      return null;
    }
    int i1 = -1;
    switch (paramInt1)
    {
    default: 
      paramInt1 = i1;
    }
    while (paramInt1 < 0)
    {
      return null;
      if (paramBoolean)
      {
        paramInt1 = 1;
      }
      else
      {
        paramInt1 = 2;
        continue;
        if (paramBoolean)
        {
          paramInt1 = 3;
        }
        else
        {
          paramInt1 = 4;
          continue;
          if (paramBoolean) {
            paramInt1 = 5;
          } else {
            paramInt1 = 6;
          }
        }
      }
    }
    switch (paramInt1)
    {
    default: 
      paramInt1 = paramInt2;
      if (paramInt2 == 0)
      {
        paramInt1 = paramInt2;
        if (o.e()) {
          paramInt1 = o.f();
        }
      }
      if (paramInt1 == 0) {
        return null;
      }
      break;
    case 1: 
      return a(1.125F, 1.0F, 0.0F, 1.0F);
    case 2: 
      return a(1.0F, 0.975F, 1.0F, 0.0F);
    case 3: 
      return a(0.975F, 1.0F, 0.0F, 1.0F);
    case 4: 
      return a(1.0F, 1.075F, 1.0F, 0.0F);
    case 5: 
      return a(0.0F, 1.0F);
    case 6: 
      return a(1.0F, 0.0F);
    }
    return null;
  }
  
  private av a(Bundle paramBundle, String paramString)
  {
    int i1 = paramBundle.getInt(paramString, -1);
    if (i1 == -1) {
      paramBundle = null;
    }
    av localav;
    do
    {
      return paramBundle;
      if (i1 >= f.size()) {
        a(new IllegalStateException("Fragment no longer exists for key " + paramString + ": index " + i1));
      }
      localav = (av)f.get(i1);
      paramBundle = localav;
    } while (localav != null);
    a(new IllegalStateException("Fragment no longer exists for key " + paramString + ": index " + i1));
    return localav;
  }
  
  /* Error */
  private void a(int paramInt, an paraman)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 220	bh:k	Ljava/util/ArrayList;
    //   6: ifnonnull +14 -> 20
    //   9: aload_0
    //   10: new 184	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 221	java/util/ArrayList:<init>	()V
    //   17: putfield 220	bh:k	Ljava/util/ArrayList;
    //   20: aload_0
    //   21: getfield 220	bh:k	Ljava/util/ArrayList;
    //   24: invokevirtual 187	java/util/ArrayList:size	()I
    //   27: istore 4
    //   29: iload 4
    //   31: istore_3
    //   32: iload_1
    //   33: iload 4
    //   35: if_icmpge +45 -> 80
    //   38: getstatic 59	bh:a	Z
    //   41: ifeq +26 -> 67
    //   44: new 191	java/lang/StringBuilder
    //   47: dup
    //   48: ldc -33
    //   50: invokespecial 196	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   53: iload_1
    //   54: invokevirtual 205	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   57: ldc -31
    //   59: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: aload_2
    //   63: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   66: pop
    //   67: aload_0
    //   68: getfield 220	bh:k	Ljava/util/ArrayList;
    //   71: iload_1
    //   72: aload_2
    //   73: invokevirtual 232	java/util/ArrayList:set	(ILjava/lang/Object;)Ljava/lang/Object;
    //   76: pop
    //   77: aload_0
    //   78: monitorexit
    //   79: return
    //   80: iload_3
    //   81: iload_1
    //   82: if_icmpge +55 -> 137
    //   85: aload_0
    //   86: getfield 220	bh:k	Ljava/util/ArrayList;
    //   89: aconst_null
    //   90: invokevirtual 236	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   93: pop
    //   94: aload_0
    //   95: getfield 238	bh:l	Ljava/util/ArrayList;
    //   98: ifnonnull +14 -> 112
    //   101: aload_0
    //   102: new 184	java/util/ArrayList
    //   105: dup
    //   106: invokespecial 221	java/util/ArrayList:<init>	()V
    //   109: putfield 238	bh:l	Ljava/util/ArrayList;
    //   112: getstatic 59	bh:a	Z
    //   115: ifeq +3 -> 118
    //   118: aload_0
    //   119: getfield 238	bh:l	Ljava/util/ArrayList;
    //   122: iload_3
    //   123: invokestatic 244	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   126: invokevirtual 236	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   129: pop
    //   130: iload_3
    //   131: iconst_1
    //   132: iadd
    //   133: istore_3
    //   134: goto -54 -> 80
    //   137: getstatic 59	bh:a	Z
    //   140: ifeq +26 -> 166
    //   143: new 191	java/lang/StringBuilder
    //   146: dup
    //   147: ldc -10
    //   149: invokespecial 196	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   152: iload_1
    //   153: invokevirtual 205	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   156: ldc -8
    //   158: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_2
    //   162: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   165: pop
    //   166: aload_0
    //   167: getfield 220	bh:k	Ljava/util/ArrayList;
    //   170: aload_2
    //   171: invokevirtual 236	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   174: pop
    //   175: goto -98 -> 77
    //   178: astore_2
    //   179: aload_0
    //   180: monitorexit
    //   181: aload_2
    //   182: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	bh
    //   0	183	1	paramInt	int
    //   0	183	2	paraman	an
    //   31	103	3	i1	int
    //   27	9	4	i2	int
    // Exception table:
    //   from	to	target	type
    //   2	20	178	finally
    //   20	29	178	finally
    //   38	67	178	finally
    //   67	77	178	finally
    //   77	79	178	finally
    //   85	112	178	finally
    //   112	118	178	finally
    //   118	130	178	finally
    //   137	166	178	finally
    //   166	175	178	finally
    //   179	181	178	finally
  }
  
  private void a(RuntimeException paramRuntimeException)
  {
    Log.e("FragmentManager", paramRuntimeException.getMessage());
    Log.e("FragmentManager", "Activity state:");
    PrintWriter localPrintWriter = new PrintWriter(new ht("FragmentManager"));
    if (o != null) {}
    for (;;)
    {
      try
      {
        o.a("  ", localPrintWriter, new String[0]);
        throw paramRuntimeException;
      }
      catch (Exception localException1)
      {
        Log.e("FragmentManager", "Failed dumping state", localException1);
        continue;
      }
      try
      {
        a("  ", null, localException1, new String[0]);
      }
      catch (Exception localException2)
      {
        Log.e("FragmentManager", "Failed dumping state", localException2);
      }
    }
  }
  
  static boolean a(View paramView, Animation paramAnimation)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int i1;
    if (Build.VERSION.SDK_INT >= 19)
    {
      bool1 = bool2;
      if (ks.a.c(paramView) == 0)
      {
        bool1 = bool2;
        if (ks.a.t(paramView))
        {
          if (!(paramAnimation instanceof AlphaAnimation)) {
            break label60;
          }
          i1 = 1;
        }
      }
    }
    for (;;)
    {
      bool1 = bool2;
      if (i1 != 0) {
        bool1 = true;
      }
      return bool1;
      label60:
      if ((paramAnimation instanceof AnimationSet))
      {
        paramView = ((AnimationSet)paramAnimation).getAnimations();
        i1 = 0;
        for (;;)
        {
          if (i1 >= paramView.size()) {
            break label112;
          }
          if ((paramView.get(i1) instanceof AlphaAnimation))
          {
            i1 = 1;
            break;
          }
          i1 += 1;
        }
      }
      label112:
      i1 = 0;
    }
  }
  
  private static void b(View paramView, Animation paramAnimation)
  {
    if ((paramView == null) || (paramAnimation == null)) {}
    while (!a(paramView, paramAnimation)) {
      return;
    }
    try
    {
      if (r == null)
      {
        localObject1 = Animation.class.getDeclaredField("mListener");
        r = (Field)localObject1;
        ((Field)localObject1).setAccessible(true);
      }
      localObject1 = (Animation.AnimationListener)r.get(paramAnimation);
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;)
      {
        Object localObject1;
        Log.e("FragmentManager", "No field with the name mListener is found in Animation class", localNoSuchFieldException);
        Object localObject2 = null;
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        Log.e("FragmentManager", "Cannot access Animation's mListener field", localIllegalAccessException);
        Object localObject3 = null;
      }
    }
    paramAnimation.setAnimationListener(new bl(paramView, paramAnimation, (Animation.AnimationListener)localObject1));
  }
  
  private void b(av paramav)
  {
    a(paramav, n, 0, 0, false);
  }
  
  private void c(av paramav)
  {
    if (T == null) {
      return;
    }
    if (y == null) {
      y = new SparseArray();
    }
    for (;;)
    {
      T.saveHierarchyState(y);
      if (y.size() <= 0) {
        break;
      }
      o = y;
      y = null;
      return;
      y.clear();
    }
  }
  
  public static int d(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 4097: 
      return 8194;
    case 8194: 
      return 4097;
    }
    return 4099;
  }
  
  private void e(int paramInt)
  {
    a(paramInt, 0, 0, false);
  }
  
  private void u()
  {
    if (t) {
      throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
    if (v != null) {
      throw new IllegalStateException("Can not perform this action inside of " + v);
    }
  }
  
  private void v()
  {
    if (m != null)
    {
      int i1 = 0;
      while (i1 < m.size())
      {
        m.get(i1);
        i1 += 1;
      }
    }
  }
  
  public int a(an paraman)
  {
    try
    {
      if ((l == null) || (l.size() <= 0))
      {
        if (k == null) {
          k = new ArrayList();
        }
        i1 = k.size();
        if (a) {
          new StringBuilder("Setting back stack index ").append(i1).append(" to ").append(paraman);
        }
        k.add(paraman);
        return i1;
      }
      int i1 = ((Integer)l.remove(l.size() - 1)).intValue();
      if (a) {
        new StringBuilder("Adding back stack index ").append(i1).append(" with ").append(paraman);
      }
      k.set(i1, paraman);
      return i1;
    }
    finally {}
  }
  
  public View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!"fragment".equals(paramString)) {
      return null;
    }
    String str1 = paramAttributeSet.getAttributeValue(null, "class");
    paramString = paramContext.obtainStyledAttributes(paramAttributeSet, bo.a);
    if (str1 == null) {
      str1 = paramString.getString(0);
    }
    for (;;)
    {
      int i3 = paramString.getResourceId(1, -1);
      String str2 = paramString.getString(2);
      paramString.recycle();
      if (!av.a(o.i(), str1)) {
        return null;
      }
      if (paramView != null) {}
      for (int i1 = paramView.getId(); (i1 == -1) && (i3 == -1) && (str2 == null); i1 = 0) {
        throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str1);
      }
      int i2;
      if (i3 != -1)
      {
        paramString = a(i3);
        paramView = paramString;
        if (paramString == null)
        {
          paramView = paramString;
          if (str2 != null) {
            paramView = a(str2);
          }
        }
        paramString = paramView;
        if (paramView == null)
        {
          paramString = paramView;
          if (i1 != -1) {
            paramString = a(i1);
          }
        }
        if (a) {
          new StringBuilder("onCreateView: id=0x").append(Integer.toHexString(i3)).append(" fname=").append(str1).append(" existing=").append(paramString);
        }
        if (paramString != null) {
          break label413;
        }
        paramView = av.instantiate(paramContext, str1);
        y = true;
        if (i3 == 0) {
          break label406;
        }
        i2 = i3;
        label280:
        G = i2;
        H = i1;
        I = str2;
        z = true;
        C = this;
        D = o;
        paramView.onInflate(o.i(), paramAttributeSet, n);
        a(paramView, true);
        label339:
        if ((n > 0) || (!y)) {
          break label532;
        }
        a(paramView, 1, 0, 0, false);
      }
      for (;;)
      {
        if (S != null) {
          break label540;
        }
        throw new IllegalStateException("Fragment " + str1 + " did not create a view.");
        paramString = null;
        break;
        label406:
        i2 = i1;
        break label280;
        label413:
        if (z) {
          throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(i3) + ", tag " + str2 + ", or parent id 0x" + Integer.toHexString(i1) + " with another fragment for " + str1);
        }
        z = true;
        if (!M) {
          paramString.onInflate(o.i(), paramAttributeSet, n);
        }
        paramView = paramString;
        break label339;
        label532:
        b(paramView);
      }
      label540:
      if (i3 != 0) {
        S.setId(i3);
      }
      if (S.getTag() == null) {
        S.setTag(str2);
      }
      return S;
    }
  }
  
  public av a(int paramInt)
  {
    int i1;
    Object localObject;
    if (g != null)
    {
      i1 = g.size() - 1;
      while (i1 >= 0)
      {
        localObject = (av)g.get(i1);
        if ((localObject != null) && (G == paramInt)) {
          return (av)localObject;
        }
        i1 -= 1;
      }
    }
    if (f != null)
    {
      i1 = f.size() - 1;
      for (;;)
      {
        if (i1 < 0) {
          break label112;
        }
        av localav = (av)f.get(i1);
        if (localav != null)
        {
          localObject = localav;
          if (G == paramInt) {
            break;
          }
        }
        i1 -= 1;
      }
    }
    label112:
    return null;
  }
  
  public av a(String paramString)
  {
    int i1;
    Object localObject;
    if ((g != null) && (paramString != null))
    {
      i1 = g.size() - 1;
      while (i1 >= 0)
      {
        localObject = (av)g.get(i1);
        if ((localObject != null) && (paramString.equals(I))) {
          return (av)localObject;
        }
        i1 -= 1;
      }
    }
    if ((f != null) && (paramString != null))
    {
      i1 = f.size() - 1;
      for (;;)
      {
        if (i1 < 0) {
          break label126;
        }
        av localav = (av)f.get(i1);
        if (localav != null)
        {
          localObject = localav;
          if (paramString.equals(I)) {
            break;
          }
        }
        i1 -= 1;
      }
    }
    label126:
    return null;
  }
  
  public bz a()
  {
    return new an(this);
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((o == null) && (paramInt1 != 0)) {
      throw new IllegalStateException("No host");
    }
    if ((!paramBoolean) && (n == paramInt1)) {}
    do
    {
      return;
      n = paramInt1;
    } while (f == null);
    int i1 = 0;
    boolean bool = false;
    label54:
    if (i1 < f.size())
    {
      av localav = (av)f.get(i1);
      if (localav == null) {
        break label169;
      }
      a(localav, paramInt1, paramInt2, paramInt3, false);
      if (W == null) {
        break label169;
      }
      bool |= W.a();
    }
    label169:
    for (;;)
    {
      i1 += 1;
      break label54;
      if (!bool) {
        f();
      }
      if ((!s) || (o == null) || (n != 5)) {
        break;
      }
      o.d();
      s = false;
      return;
    }
  }
  
  public void a(Configuration paramConfiguration)
  {
    if (g != null)
    {
      int i1 = 0;
      while (i1 < g.size())
      {
        av localav = (av)g.get(i1);
        if (localav != null) {
          localav.a(paramConfiguration);
        }
        i1 += 1;
      }
    }
  }
  
  public void a(Parcelable paramParcelable, List<av> paramList)
  {
    if (paramParcelable == null) {}
    for (;;)
    {
      return;
      paramParcelable = (bp)paramParcelable;
      if (a != null)
      {
        Object localObject1;
        Object localObject2;
        if (paramList != null)
        {
          i1 = 0;
          while (i1 < paramList.size())
          {
            localObject1 = (av)paramList.get(i1);
            if (a) {
              new StringBuilder("restoreAllState: re-attaching retained ").append(localObject1);
            }
            localObject2 = a[p];
            k = ((av)localObject1);
            o = null;
            B = 0;
            z = false;
            v = false;
            s = null;
            if (j != null)
            {
              j.setClassLoader(o.i().getClassLoader());
              o = j.getSparseParcelableArray("android:view_state");
              n = j;
            }
            i1 += 1;
          }
        }
        f = new ArrayList(a.length);
        if (h != null) {
          h.clear();
        }
        int i1 = 0;
        if (i1 < a.length)
        {
          localObject1 = a[i1];
          if (localObject1 != null)
          {
            localObject2 = ((bs)localObject1).a(o, q);
            if (a) {
              new StringBuilder("restoreAllState: active #").append(i1).append(": ").append(localObject2);
            }
            f.add(localObject2);
            k = null;
          }
          for (;;)
          {
            i1 += 1;
            break;
            f.add(null);
            if (h == null) {
              h = new ArrayList();
            }
            if (a) {}
            h.add(Integer.valueOf(i1));
          }
        }
        if (paramList != null)
        {
          i1 = 0;
          if (i1 < paramList.size())
          {
            localObject1 = (av)paramList.get(i1);
            if (t >= 0) {
              if (t >= f.size()) {
                break label425;
              }
            }
            for (s = ((av)f.get(t));; s = null)
            {
              i1 += 1;
              break;
              label425:
              new StringBuilder("Re-attaching retained fragment ").append(localObject1).append(" target no longer exists: ").append(t);
            }
          }
        }
        if (b != null)
        {
          g = new ArrayList(b.length);
          i1 = 0;
          while (i1 < b.length)
          {
            paramList = (av)f.get(b[i1]);
            if (paramList == null) {
              a(new IllegalStateException("No instantiated fragment for index #" + b[i1]));
            }
            v = true;
            if (a) {
              new StringBuilder("restoreAllState: added #").append(i1).append(": ").append(paramList);
            }
            if (g.contains(paramList)) {
              throw new IllegalStateException("Already added!");
            }
            g.add(paramList);
            i1 += 1;
          }
        }
        g = null;
        if (c == null) {
          break;
        }
        i = new ArrayList(c.length);
        i1 = 0;
        while (i1 < c.length)
        {
          paramList = c[i1].a(this);
          if (a)
          {
            new StringBuilder("restoreAllState: back stack #").append(i1).append(" (index ").append(p).append("): ").append(paramList);
            paramList.a("  ", new PrintWriter(new ht("FragmentManager")), false);
          }
          i.add(paramList);
          if (p >= 0) {
            a(p, paramList);
          }
          i1 += 1;
        }
      }
    }
    i = null;
  }
  
  public void a(av paramav)
  {
    if (U)
    {
      if (e) {
        w = true;
      }
    }
    else {
      return;
    }
    U = false;
    a(paramav, n, 0, 0, false);
  }
  
  public void a(av paramav, int paramInt1, int paramInt2)
  {
    if (a) {
      new StringBuilder("remove: ").append(paramav).append(" nesting=").append(B);
    }
    if (B > 0)
    {
      i1 = 1;
      if (i1 != 0) {
        break label134;
      }
      i1 = 1;
      label52:
      if ((!K) || (i1 != 0))
      {
        if (g != null) {
          g.remove(paramav);
        }
        if ((N) && (O)) {
          s = true;
        }
        v = false;
        w = true;
        if (i1 == 0) {
          break label140;
        }
      }
    }
    label134:
    label140:
    for (int i1 = 0;; i1 = 1)
    {
      a(paramav, i1, paramInt1, paramInt2, false);
      return;
      i1 = 0;
      break;
      i1 = 0;
      break label52;
    }
  }
  
  void a(av paramav, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i1;
    if (v)
    {
      i1 = paramInt1;
      if (!K) {}
    }
    else
    {
      i1 = paramInt1;
      if (paramInt1 > 1) {
        i1 = 1;
      }
    }
    int i2 = i1;
    if (w)
    {
      i2 = i1;
      if (i1 > k) {
        i2 = k;
      }
    }
    paramInt1 = i2;
    if (U)
    {
      paramInt1 = i2;
      if (k < 4)
      {
        paramInt1 = i2;
        if (i2 > 3) {
          paramInt1 = 3;
        }
      }
    }
    int i3;
    label567:
    Object localObject2;
    if (k < paramInt1)
    {
      if ((y) && (!z)) {
        return;
      }
      if (l != null)
      {
        l = null;
        a(paramav, m, 0, 0, true);
      }
      i1 = paramInt1;
      i3 = paramInt1;
      i2 = paramInt1;
      switch (k)
      {
      default: 
        i1 = paramInt1;
        k = i1;
        return;
      case 0: 
        if (a) {
          new StringBuilder("moveto CREATED: ").append(paramav);
        }
        i2 = paramInt1;
        if (n != null)
        {
          n.setClassLoader(o.i().getClassLoader());
          o = n.getSparseParcelableArray("android:view_state");
          s = a(n, "android:target_state");
          if (s != null) {
            u = n.getInt("android:target_req_state", 0);
          }
          V = n.getBoolean("android:user_visible_hint", true);
          i2 = paramInt1;
          if (!V)
          {
            U = true;
            i2 = paramInt1;
            if (paramInt1 > 3) {
              i2 = 3;
            }
          }
        }
        D = o;
        F = q;
        if (q != null) {}
        for (localObject1 = q.E;; localObject1 = o.k())
        {
          C = ((bh)localObject1);
          P = false;
          paramav.onAttach(o.i());
          if (P) {
            break;
          }
          throw new en("Fragment " + paramav + " did not call through to super.onAttach()");
        }
        if (F == null) {
          o.a(paramav);
        }
        if (!M) {
          paramav.b(n);
        }
        M = false;
        i1 = i2;
        if (y)
        {
          S = paramav.a(paramav.getLayoutInflater(n), null, n);
          if (S == null) {
            break label957;
          }
          T = S;
          if (Build.VERSION.SDK_INT < 11) {
            break label943;
          }
          ks.a(S);
          if (J) {
            S.setVisibility(8);
          }
          paramav.onViewCreated(S, n);
          i1 = i2;
        }
      case 1: 
        i3 = i1;
        if (i1 > 1)
        {
          if (a) {
            new StringBuilder("moveto ACTIVITY_CREATED: ").append(paramav);
          }
          if (!y)
          {
            if (H == 0) {
              break label1698;
            }
            localObject2 = (ViewGroup)p.a(H);
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject1 = localObject2;
              if (!A) {
                a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(H) + " (" + paramav.getResources().getResourceName(H) + ") for fragment " + paramav));
              }
            }
          }
        }
        break;
      }
    }
    label774:
    label943:
    label957:
    label991:
    label1150:
    label1474:
    label1692:
    label1698:
    for (Object localObject1 = localObject2;; localObject1 = null)
    {
      R = ((ViewGroup)localObject1);
      S = paramav.a(paramav.getLayoutInflater(n), (ViewGroup)localObject1, n);
      if (S != null)
      {
        T = S;
        if (Build.VERSION.SDK_INT >= 11)
        {
          ks.a(S);
          if (localObject1 != null)
          {
            localObject2 = a(paramav, paramInt2, true, paramInt3);
            if (localObject2 != null)
            {
              b(S, (Animation)localObject2);
              S.startAnimation((Animation)localObject2);
            }
            ((ViewGroup)localObject1).addView(S);
          }
          if (J) {
            S.setVisibility(8);
          }
          paramav.onViewCreated(S, n);
        }
      }
      for (;;)
      {
        paramav.c(n);
        if (S == null) {
          break label991;
        }
        localObject1 = n;
        if (o != null)
        {
          T.restoreHierarchyState(o);
          o = null;
        }
        P = false;
        paramav.onViewStateRestored((Bundle)localObject1);
        if (P) {
          break label991;
        }
        throw new en("Fragment " + paramav + " did not call through to super.onViewStateRestored()");
        S = cq.a(S);
        break;
        T = null;
        i1 = i2;
        break label567;
        S = cq.a(S);
        break label774;
        T = null;
      }
      n = null;
      i3 = i1;
      i2 = i3;
      if (i3 > 3)
      {
        if (a) {
          new StringBuilder("moveto STARTED: ").append(paramav);
        }
        paramav.i();
        i2 = i3;
      }
      i1 = i2;
      if (i2 <= 4) {
        break;
      }
      if (a) {
        new StringBuilder("moveto RESUMED: ").append(paramav);
      }
      x = true;
      paramav.j();
      n = null;
      o = null;
      i1 = i2;
      break;
      i1 = paramInt1;
      if (k <= paramInt1) {
        break;
      }
      switch (k)
      {
      default: 
        i1 = paramInt1;
        break;
      case 1: 
      case 5: 
      case 4: 
      case 3: 
      case 2: 
        do
        {
          i1 = paramInt1;
          if (paramInt1 > 0) {
            break;
          }
          if ((u) && (l != null))
          {
            localObject1 = l;
            l = null;
            ((View)localObject1).clearAnimation();
          }
          if (l == null) {
            break label1474;
          }
          m = paramInt1;
          i1 = 1;
          break;
          if (paramInt1 < 5)
          {
            if (a) {
              new StringBuilder("movefrom RESUMED: ").append(paramav);
            }
            paramav.l();
            x = false;
          }
          if (paramInt1 < 4)
          {
            if (a) {
              new StringBuilder("movefrom STARTED: ").append(paramav);
            }
            paramav.m();
          }
          if (paramInt1 < 3)
          {
            if (a) {
              new StringBuilder("movefrom STOPPED: ").append(paramav);
            }
            paramav.n();
          }
        } while (paramInt1 >= 2);
        if (a) {
          new StringBuilder("movefrom ACTIVITY_CREATED: ").append(paramav);
        }
        if ((S != null) && (o.b()) && (o == null)) {
          c(paramav);
        }
        paramav.o();
        if ((S != null) && (R != null)) {
          if ((n <= 0) || (u)) {
            break label1692;
          }
        }
        for (localObject1 = a(paramav, paramInt2, false, paramInt3);; localObject1 = null)
        {
          if (localObject1 != null)
          {
            l = S;
            m = paramInt1;
            ((Animation)localObject1).setAnimationListener(new bk(this, S, (Animation)localObject1, paramav));
            S.startAnimation((Animation)localObject1);
          }
          R.removeView(S);
          R = null;
          S = null;
          T = null;
          break label1150;
          if (a) {
            new StringBuilder("movefrom CREATED: ").append(paramav);
          }
          if (!M) {
            paramav.p();
          }
          P = false;
          paramav.onDetach();
          if (!P) {
            throw new en("Fragment " + paramav + " did not call through to super.onDetach()");
          }
          i1 = paramInt1;
          if (paramBoolean) {
            break;
          }
          if (!M)
          {
            i1 = paramInt1;
            if (p < 0) {
              break;
            }
            if (a) {
              new StringBuilder("Freeing fragment index ").append(paramav);
            }
            f.set(p, null);
            if (h == null) {
              h = new ArrayList();
            }
            h.add(Integer.valueOf(p));
            o.b(q);
            paramav.M_();
            i1 = paramInt1;
            break;
          }
          D = null;
          F = null;
          C = null;
          E = null;
          i1 = paramInt1;
          break;
        }
      }
    }
  }
  
  public void a(av paramav, boolean paramBoolean)
  {
    if (g == null) {
      g = new ArrayList();
    }
    if (a) {
      new StringBuilder("add: ").append(paramav);
    }
    if (p < 0)
    {
      if ((h != null) && (h.size() > 0)) {
        break label169;
      }
      if (f == null) {
        f = new ArrayList();
      }
      paramav.a(f.size(), q);
      f.add(paramav);
    }
    for (;;)
    {
      if (a) {
        new StringBuilder("Allocated fragment index ").append(paramav);
      }
      if (K) {
        return;
      }
      if (!g.contains(paramav)) {
        break;
      }
      throw new IllegalStateException("Fragment already added: " + paramav);
      label169:
      paramav.a(((Integer)h.remove(h.size() - 1)).intValue(), q);
      f.set(p, paramav);
    }
    g.add(paramav);
    v = true;
    w = false;
    if ((N) && (O)) {
      s = true;
    }
    if (paramBoolean) {
      b(paramav);
    }
  }
  
  public void a(bf parambf, be parambe, av paramav)
  {
    if (o != null) {
      throw new IllegalStateException("Already attached");
    }
    o = parambf;
    p = parambe;
    q = paramav;
  }
  
  public void a(Runnable paramRunnable, boolean paramBoolean)
  {
    if (!paramBoolean) {
      u();
    }
    try
    {
      if ((u) || (o == null)) {
        throw new IllegalStateException("Activity has been destroyed");
      }
    }
    finally
    {
      throw paramRunnable;
      if (c == null) {
        c = new ArrayList();
      }
      c.add(paramRunnable);
      if (c.size() == 1) {
        o.j().removeCallbacks(z);
      }
    }
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i2 = 0;
    String str = paramString + "    ";
    int i3;
    int i1;
    if (f != null)
    {
      i3 = f.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("Active Fragments in ");
        paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
        paramPrintWriter.println(":");
        i1 = 0;
        while (i1 < i3)
        {
          av localav = (av)f.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localav);
          if (localav != null) {
            localav.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
          }
          i1 += 1;
        }
      }
    }
    if (g != null)
    {
      i3 = g.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Added Fragments:");
        i1 = 0;
        while (i1 < i3)
        {
          paramFileDescriptor = (av)g.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(paramFileDescriptor.toString());
          i1 += 1;
        }
      }
    }
    if (j != null)
    {
      i3 = j.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Fragments Created Menus:");
        i1 = 0;
        while (i1 < i3)
        {
          paramFileDescriptor = (av)j.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(paramFileDescriptor.toString());
          i1 += 1;
        }
      }
    }
    if (i != null)
    {
      i3 = i.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Back Stack:");
        i1 = 0;
        while (i1 < i3)
        {
          paramFileDescriptor = (an)i.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(paramFileDescriptor.toString());
          paramFileDescriptor.a(str, paramPrintWriter);
          i1 += 1;
        }
      }
    }
    try
    {
      if (k != null)
      {
        i3 = k.size();
        if (i3 > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Back Stack Indices:");
          i1 = 0;
          while (i1 < i3)
          {
            paramFileDescriptor = (an)k.get(i1);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i1);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i1 += 1;
          }
        }
      }
      if ((l != null) && (l.size() > 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mAvailBackStackIndices: ");
        paramPrintWriter.println(Arrays.toString(l.toArray()));
      }
      if (c != null)
      {
        i3 = c.size();
        if (i3 > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Pending Actions:");
          i1 = i2;
          while (i1 < i3)
          {
            paramFileDescriptor = (Runnable)c.get(i1);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i1);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i1 += 1;
          }
        }
      }
      paramPrintWriter.print(paramString);
    }
    finally {}
    paramPrintWriter.println("FragmentManager misc state:");
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mHost=");
    paramPrintWriter.println(o);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mContainer=");
    paramPrintWriter.println(p);
    if (q != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mParent=");
      paramPrintWriter.println(q);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mCurState=");
    paramPrintWriter.print(n);
    paramPrintWriter.print(" mStateSaved=");
    paramPrintWriter.print(t);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(u);
    if (s)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNeedMenuInvalidate=");
      paramPrintWriter.println(s);
    }
    if (v != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNoTransactionsBecause=");
      paramPrintWriter.println(v);
    }
    if ((h != null) && (h.size() > 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mAvailIndices: ");
      paramPrintWriter.println(Arrays.toString(h.toArray()));
    }
  }
  
  boolean a(int paramInt1, int paramInt2)
  {
    if (i == null) {}
    int i1;
    do
    {
      int i2;
      do
      {
        do
        {
          return false;
          if ((paramInt1 >= 0) || ((paramInt2 & 0x1) != 0)) {
            break;
          }
          paramInt1 = i.size() - 1;
        } while (paramInt1 < 0);
        localObject1 = (an)i.remove(paramInt1);
        localObject2 = new SparseArray();
        localSparseArray1 = new SparseArray();
        ((an)localObject1).a((SparseArray)localObject2, localSparseArray1);
        ((an)localObject1).a(true, null, (SparseArray)localObject2, localSparseArray1);
        v();
        return true;
        i1 = -1;
        if (paramInt1 < 0) {
          break;
        }
        i2 = i.size() - 1;
        while (i2 >= 0)
        {
          localObject1 = (an)i.get(i2);
          if ((paramInt1 >= 0) && (paramInt1 == p)) {
            break;
          }
          i2 -= 1;
        }
      } while (i2 < 0);
      i1 = i2;
      if ((paramInt2 & 0x1) != 0)
      {
        paramInt2 = i2 - 1;
        for (;;)
        {
          i1 = paramInt2;
          if (paramInt2 < 0) {
            break;
          }
          localObject1 = (an)i.get(paramInt2);
          i1 = paramInt2;
          if (paramInt1 < 0) {
            break;
          }
          i1 = paramInt2;
          if (paramInt1 != p) {
            break;
          }
          paramInt2 -= 1;
        }
      }
    } while (i1 == i.size() - 1);
    Object localObject2 = new ArrayList();
    paramInt1 = i.size() - 1;
    while (paramInt1 > i1)
    {
      ((ArrayList)localObject2).add(i.remove(paramInt1));
      paramInt1 -= 1;
    }
    paramInt2 = ((ArrayList)localObject2).size() - 1;
    SparseArray localSparseArray1 = new SparseArray();
    SparseArray localSparseArray2 = new SparseArray();
    paramInt1 = 0;
    while (paramInt1 <= paramInt2)
    {
      ((an)((ArrayList)localObject2).get(paramInt1)).a(localSparseArray1, localSparseArray2);
      paramInt1 += 1;
    }
    Object localObject1 = null;
    paramInt1 = 0;
    label330:
    an localan;
    if (paramInt1 <= paramInt2)
    {
      if (a) {
        new StringBuilder("Popping back stack state: ").append(((ArrayList)localObject2).get(paramInt1));
      }
      localan = (an)((ArrayList)localObject2).get(paramInt1);
      if (paramInt1 != paramInt2) {
        break label402;
      }
    }
    label402:
    for (boolean bool = true;; bool = false)
    {
      localObject1 = localan.a(bool, (ien)localObject1, localSparseArray1, localSparseArray2);
      paramInt1 += 1;
      break label330;
      break;
    }
  }
  
  public boolean a(Menu paramMenu)
  {
    if (g != null)
    {
      int i1 = 0;
      for (boolean bool1 = false;; bool1 = bool2)
      {
        bool2 = bool1;
        if (i1 >= g.size()) {
          break;
        }
        av localav = (av)g.get(i1);
        bool2 = bool1;
        if (localav != null)
        {
          bool2 = bool1;
          if (localav.a(paramMenu)) {
            bool2 = true;
          }
        }
        i1 += 1;
      }
    }
    boolean bool2 = false;
    return bool2;
  }
  
  public boolean a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    int i2 = 0;
    Object localObject2 = null;
    Object localObject1 = null;
    int i1;
    if (g != null)
    {
      i1 = 0;
      boolean bool1 = false;
      for (;;)
      {
        localObject2 = localObject1;
        bool2 = bool1;
        if (i1 >= g.size()) {
          break;
        }
        av localav = (av)g.get(i1);
        localObject2 = localObject1;
        bool2 = bool1;
        if (localav != null)
        {
          localObject2 = localObject1;
          bool2 = bool1;
          if (localav.a(paramMenu, paramMenuInflater))
          {
            bool2 = true;
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localav);
          }
        }
        i1 += 1;
        bool1 = bool2;
        localObject1 = localObject2;
      }
    }
    boolean bool2 = false;
    if (j != null)
    {
      i1 = i2;
      while (i1 < j.size())
      {
        paramMenu = (av)j.get(i1);
        if ((localObject2 == null) || (!((ArrayList)localObject2).contains(paramMenu))) {
          paramMenu.onDestroyOptionsMenu();
        }
        i1 += 1;
      }
    }
    j = ((ArrayList)localObject2);
    return bool2;
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int i1;
    if (g != null) {
      i1 = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i1 < g.size())
      {
        av localav = (av)g.get(i1);
        if ((localav != null) && (localav.a(paramMenuItem))) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public void b(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("Bad id: " + paramInt);
    }
    a(new bj(this, paramInt, 1), false);
  }
  
  void b(an paraman)
  {
    if (i == null) {
      i = new ArrayList();
    }
    i.add(paraman);
    v();
  }
  
  public void b(Menu paramMenu)
  {
    if (g != null)
    {
      int i1 = 0;
      while (i1 < g.size())
      {
        av localav = (av)g.get(i1);
        if (localav != null) {
          localav.b(paramMenu);
        }
        i1 += 1;
      }
    }
  }
  
  public void b(av paramav, int paramInt1, int paramInt2)
  {
    if (a) {
      new StringBuilder("hide: ").append(paramav);
    }
    if (!J)
    {
      J = true;
      if (S != null)
      {
        Animation localAnimation = a(paramav, paramInt1, false, paramInt2);
        if (localAnimation != null)
        {
          b(S, localAnimation);
          S.startAnimation(localAnimation);
        }
        S.setVisibility(8);
      }
      if ((v) && (N) && (O)) {
        s = true;
      }
      paramav.onHiddenChanged(true);
    }
  }
  
  public boolean b()
  {
    return g();
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int i1;
    if (g != null) {
      i1 = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i1 < g.size())
      {
        av localav = (av)g.get(i1);
        if ((localav != null) && (localav.b(paramMenuItem))) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public void c(int paramInt)
  {
    try
    {
      k.set(paramInt, null);
      if (l == null) {
        l = new ArrayList();
      }
      if (a) {}
      l.add(Integer.valueOf(paramInt));
      return;
    }
    finally {}
  }
  
  public void c(av paramav, int paramInt1, int paramInt2)
  {
    if (a) {
      new StringBuilder("show: ").append(paramav);
    }
    if (J)
    {
      J = false;
      if (S != null)
      {
        Animation localAnimation = a(paramav, paramInt1, true, paramInt2);
        if (localAnimation != null)
        {
          b(S, localAnimation);
          S.startAnimation(localAnimation);
        }
        S.setVisibility(0);
      }
      if ((v) && (N) && (O)) {
        s = true;
      }
      paramav.onHiddenChanged(false);
    }
  }
  
  public boolean c()
  {
    u();
    b();
    return a(-1, 0);
  }
  
  public List<av> d()
  {
    return f;
  }
  
  public void d(av paramav, int paramInt1, int paramInt2)
  {
    if (a) {
      new StringBuilder("detach: ").append(paramav);
    }
    if (!K)
    {
      K = true;
      if (v)
      {
        if (g != null)
        {
          if (a) {
            new StringBuilder("remove from detach: ").append(paramav);
          }
          g.remove(paramav);
        }
        if ((N) && (O)) {
          s = true;
        }
        v = false;
        a(paramav, 1, paramInt1, paramInt2, false);
      }
    }
  }
  
  public void e(av paramav, int paramInt1, int paramInt2)
  {
    if (a) {
      new StringBuilder("attach: ").append(paramav);
    }
    if (K)
    {
      K = false;
      if (!v)
      {
        if (g == null) {
          g = new ArrayList();
        }
        if (g.contains(paramav)) {
          throw new IllegalStateException("Fragment already added: " + paramav);
        }
        if (a) {
          new StringBuilder("add from attach: ").append(paramav);
        }
        g.add(paramav);
        v = true;
        if ((N) && (O)) {
          s = true;
        }
        a(paramav, n, paramInt1, paramInt2, false);
      }
    }
  }
  
  public boolean e()
  {
    return u;
  }
  
  void f()
  {
    if (f == null) {}
    for (;;)
    {
      return;
      int i1 = 0;
      while (i1 < f.size())
      {
        av localav = (av)f.get(i1);
        if (localav != null) {
          a(localav);
        }
        i1 += 1;
      }
    }
  }
  
  public boolean g()
  {
    if (e) {
      throw new IllegalStateException("Recursive entry to executePendingTransactions");
    }
    if (Looper.myLooper() != o.j().getLooper()) {
      throw new IllegalStateException("Must be called from main thread of process");
    }
    int i2;
    for (boolean bool = false;; bool = true) {
      try
      {
        if ((c == null) || (c.size() == 0))
        {
          if (!w) {
            break label276;
          }
          i1 = 0;
          int i4;
          for (i2 = 0; i1 < f.size(); i2 = i4)
          {
            av localav = (av)f.get(i1);
            int i3 = i2;
            if (localav != null)
            {
              i3 = i2;
              if (W != null) {
                i4 = i2 | W.a();
              }
            }
            i1 += 1;
          }
        }
        i2 = c.size();
        if ((d == null) || (d.length < i2)) {
          d = new Runnable[i2];
        }
        c.toArray(d);
        c.clear();
        o.j().removeCallbacks(z);
        e = true;
        int i1 = 0;
        while (i1 < i2)
        {
          d[i1].run();
          d[i1] = null;
          i1 += 1;
        }
        e = false;
      }
      finally {}
    }
    if (i2 == 0)
    {
      w = false;
      f();
    }
    label276:
    return bool;
  }
  
  public ArrayList<av> h()
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (f != null)
    {
      int i1 = 0;
      localObject2 = localObject1;
      if (i1 < f.size())
      {
        av localav = (av)f.get(i1);
        Object localObject3 = localObject1;
        if (localav != null)
        {
          localObject3 = localObject1;
          if (L)
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localav);
            M = true;
            if (s == null) {
              break label153;
            }
          }
        }
        label153:
        for (int i2 = s.p;; i2 = -1)
        {
          t = i2;
          localObject3 = localObject2;
          if (a)
          {
            new StringBuilder("retainNonConfig: keeping retained ").append(localav);
            localObject3 = localObject2;
          }
          i1 += 1;
          localObject1 = localObject3;
          break;
        }
      }
    }
    return (ArrayList<av>)localObject2;
  }
  
  public Parcelable i()
  {
    Object localObject3 = null;
    g();
    if (b) {
      t = true;
    }
    if ((f == null) || (f.size() <= 0)) {
      return null;
    }
    int i3 = f.size();
    bs[] arrayOfbs = new bs[i3];
    int i2 = 0;
    int i1 = 0;
    label56:
    av localav;
    bs localbs;
    Object localObject2;
    label211:
    Object localObject1;
    if (i2 < i3)
    {
      localav = (av)f.get(i2);
      if (localav == null) {
        break label862;
      }
      if (p < 0) {
        a(new IllegalStateException("Failure saving state: active " + localav + " has cleared index: " + p));
      }
      localbs = new bs(localav);
      arrayOfbs[i2] = localbs;
      if ((k > 0) && (j == null))
      {
        if (x == null) {
          x = new Bundle();
        }
        localav.d(x);
        if (x.isEmpty()) {
          break label856;
        }
        localObject2 = x;
        x = null;
        if (S != null) {
          c(localav);
        }
        localObject1 = localObject2;
        if (o != null)
        {
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = new Bundle();
          }
          ((Bundle)localObject1).putSparseParcelableArray("android:view_state", o);
        }
        localObject2 = localObject1;
        if (!V)
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new Bundle();
          }
          ((Bundle)localObject2).putBoolean("android:user_visible_hint", V);
        }
        j = ((Bundle)localObject2);
        if (s != null)
        {
          if (s.p < 0) {
            a(new IllegalStateException("Failure saving state: " + localav + " has target not in fragment manager: " + s));
          }
          if (j == null) {
            j = new Bundle();
          }
          localObject1 = j;
          localObject2 = s;
          if (p < 0) {
            a(new IllegalStateException("Fragment " + localObject2 + " is not currently in the FragmentManager"));
          }
          ((Bundle)localObject1).putInt("android:target_state", p);
          if (u != 0) {
            j.putInt("android:target_req_state", u);
          }
        }
        label494:
        if (a) {
          new StringBuilder("Saved state of ").append(localav).append(": ").append(j);
        }
        i1 = 1;
      }
    }
    label856:
    label862:
    for (;;)
    {
      i2 += 1;
      break label56;
      j = n;
      break label494;
      if (i1 == 0) {
        break;
      }
      if (g != null)
      {
        i2 = g.size();
        if (i2 > 0)
        {
          localObject2 = new int[i2];
          i1 = 0;
          for (;;)
          {
            localObject1 = localObject2;
            if (i1 >= i2) {
              break;
            }
            localObject2[i1] = g.get(i1)).p;
            if (localObject2[i1] < 0) {
              a(new IllegalStateException("Failure saving state: active " + g.get(i1) + " has cleared index: " + localObject2[i1]));
            }
            if (a) {
              new StringBuilder("saveAllState: adding fragment #").append(i1).append(": ").append(g.get(i1));
            }
            i1 += 1;
          }
        }
      }
      localObject1 = null;
      localObject2 = localObject3;
      if (i != null)
      {
        i2 = i.size();
        localObject2 = localObject3;
        if (i2 > 0)
        {
          localObject3 = new aq[i2];
          i1 = 0;
          for (;;)
          {
            localObject2 = localObject3;
            if (i1 >= i2) {
              break;
            }
            localObject3[i1] = new aq((an)i.get(i1));
            if (a) {
              new StringBuilder("saveAllState: adding back stack #").append(i1).append(": ").append(i.get(i1));
            }
            i1 += 1;
          }
        }
      }
      localObject3 = new bp();
      a = arrayOfbs;
      b = ((int[])localObject1);
      c = ((aq[])localObject2);
      return (Parcelable)localObject3;
      localObject2 = null;
      break label211;
    }
  }
  
  public void j()
  {
    t = false;
    e(1);
  }
  
  public void k()
  {
    t = false;
    e(2);
  }
  
  public void l()
  {
    t = false;
    e(4);
  }
  
  public void m()
  {
    t = false;
    e(5);
  }
  
  public void n()
  {
    e(4);
  }
  
  public void noteStateNotSaved()
  {
    t = false;
  }
  
  public void o()
  {
    t = true;
    e(3);
  }
  
  public void p()
  {
    e(2);
  }
  
  public void q()
  {
    e(1);
  }
  
  public void r()
  {
    u = true;
    g();
    e(0);
    o = null;
    p = null;
    q = null;
  }
  
  public void s()
  {
    if (g != null)
    {
      int i1 = 0;
      while (i1 < g.size())
      {
        av localav = (av)g.get(i1);
        if (localav != null) {
          localav.k();
        }
        i1 += 1;
      }
    }
  }
  
  jm t()
  {
    return this;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("FragmentManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    if (q != null) {
      aal.a(q, localStringBuilder);
    }
    for (;;)
    {
      localStringBuilder.append("}}");
      return localStringBuilder.toString();
      aal.a(o, localStringBuilder);
    }
  }
}

/* Location:
 * Qualified Name:     bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */