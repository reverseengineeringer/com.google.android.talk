import android.os.Build.VERSION;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;
import org.chromium.net.CronetEngine.Builder.Pkp;

public final class an
  extends bz
  implements Runnable
{
  static final boolean a;
  final bh b;
  CronetEngine.Builder.Pkp c;
  CronetEngine.Builder.Pkp d;
  int e;
  int f;
  int g;
  int h;
  int i;
  int j;
  int k;
  boolean l;
  boolean m = true;
  String n;
  boolean o;
  int p = -1;
  int q;
  CharSequence r;
  int s;
  CharSequence t;
  ArrayList<String> u;
  ArrayList<String> v;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public an(bh parambh)
  {
    b = parambh;
  }
  
  private int a(boolean paramBoolean)
  {
    if (o) {
      throw new IllegalStateException("commit already called");
    }
    if (bh.a)
    {
      new StringBuilder("Commit: ").append(this);
      a("  ", new PrintWriter(new ht("FragmentManager")));
    }
    o = true;
    if (l) {}
    for (p = b.a(this);; p = -1)
    {
      b.a(this, paramBoolean);
      return p;
    }
  }
  
  private hq<String, View> a(ien paramien, av paramav, boolean paramBoolean)
  {
    hq localhq2 = new hq();
    hq localhq1 = localhq2;
    if (u != null)
    {
      aal.a(localhq2, paramav.getView());
      if (!paramBoolean) {
        break label74;
      }
      localhq2.a(v);
    }
    label74:
    for (localhq1 = localhq2; paramBoolean; localhq1 = a(u, v, localhq2))
    {
      if (ah != null) {
        paramav = ah;
      }
      a(paramien, localhq1, false);
      return localhq1;
    }
    if (ai != null) {
      paramav = ai;
    }
    b(paramien, localhq1, false);
    return localhq1;
  }
  
  private static hq<String, View> a(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, hq<String, View> paramhq)
  {
    if (paramhq.isEmpty()) {
      return paramhq;
    }
    hq localhq = new hq();
    int i2 = paramArrayList1.size();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = (View)paramhq.get(paramArrayList1.get(i1));
      if (localView != null) {
        localhq.put(paramArrayList2.get(i1), localView);
      }
      i1 += 1;
    }
    return localhq;
  }
  
  private ien a(SparseArray<av> paramSparseArray1, SparseArray<av> paramSparseArray2, boolean paramBoolean)
  {
    int i5 = 0;
    ien localien = new ien(this);
    f = new View(b.o.i());
    int i2 = 0;
    int i1 = 0;
    int i3 = i5;
    int i4 = i1;
    if (i2 < paramSparseArray1.size())
    {
      if (!a(paramSparseArray1.keyAt(i2), localien, paramBoolean, paramSparseArray1, paramSparseArray2)) {
        break label164;
      }
      i1 = 1;
    }
    label164:
    for (;;)
    {
      i2 += 1;
      break;
      while (i3 < paramSparseArray2.size())
      {
        i2 = paramSparseArray2.keyAt(i3);
        i1 = i4;
        if (paramSparseArray1.get(i2) == null)
        {
          i1 = i4;
          if (a(i2, localien, paramBoolean, paramSparseArray1, paramSparseArray2)) {
            i1 = 1;
          }
        }
        i3 += 1;
        i4 = i1;
      }
      paramSparseArray1 = localien;
      if (i4 == 0) {
        paramSparseArray1 = null;
      }
      return paramSparseArray1;
    }
  }
  
  private static Object a(Object paramObject, av paramav, ArrayList<View> paramArrayList, hq<String, View> paramhq, View paramView)
  {
    Object localObject = paramObject;
    if (paramObject != null)
    {
      paramav = paramav.getView();
      localObject = paramObject;
      if (paramObject != null)
      {
        aal.a(paramArrayList, paramav);
        if (paramhq != null) {
          paramArrayList.removeAll(paramhq.values());
        }
        if (!paramArrayList.isEmpty()) {
          break label52;
        }
        localObject = null;
      }
    }
    return localObject;
    label52:
    paramArrayList.add(paramView);
    aal.b((Transition)paramObject, paramArrayList);
    return paramObject;
  }
  
  private void a(int paramInt1, av paramav, String paramString, int paramInt2)
  {
    C = b;
    if (paramString != null)
    {
      if ((I != null) && (!paramString.equals(I))) {
        throw new IllegalStateException("Can't change tag of fragment " + paramav + ": was " + I + " now " + paramString);
      }
      I = paramString;
    }
    if (paramInt1 != 0)
    {
      if ((G != 0) && (G != paramInt1)) {
        throw new IllegalStateException("Can't change container ID of fragment " + paramav + ": was " + G + " now " + paramInt1);
      }
      G = paramInt1;
      H = paramInt1;
    }
    paramString = new CronetEngine.Builder.Pkp();
    g = paramInt2;
    h = paramav;
    a(paramString);
  }
  
  private static void a(SparseArray<av> paramSparseArray, av paramav)
  {
    if (paramav != null)
    {
      int i1 = H;
      if ((i1 != 0) && (!paramav.isHidden()) && (paramav.isAdded()) && (paramav.getView() != null) && (paramSparseArray.get(i1) == null)) {
        paramSparseArray.put(i1, paramav);
      }
    }
  }
  
  private static void a(hq<String, String> paramhq, String paramString1, String paramString2)
  {
    int i1;
    if ((paramString1 != null) && (paramString2 != null)) {
      i1 = 0;
    }
    while (i1 < paramhq.size())
    {
      if (paramString1.equals(paramhq.c(i1)))
      {
        paramhq.a(i1, paramString2);
        return;
      }
      i1 += 1;
    }
    paramhq.put(paramString1, paramString2);
  }
  
  private void a(ien paramien, int paramInt, Object paramObject)
  {
    if (b.g != null)
    {
      int i1 = 0;
      if (i1 < b.g.size())
      {
        av localav = (av)b.g.get(i1);
        if ((S != null) && (R != null) && (H == paramInt))
        {
          if (!J) {
            break label125;
          }
          if (!d.contains(S))
          {
            aal.a(paramObject, S, true);
            d.add(S);
          }
        }
        for (;;)
        {
          i1 += 1;
          break;
          label125:
          aal.a(paramObject, S, false);
          d.remove(S);
        }
      }
    }
  }
  
  private void a(ien paramien, hq<String, View> paramhq, boolean paramBoolean)
  {
    int i1;
    int i2;
    label13:
    String str;
    Object localObject;
    if (v == null)
    {
      i1 = 0;
      i2 = 0;
      if (i2 >= i1) {
        return;
      }
      str = (String)u.get(i2);
      localObject = (View)paramhq.get((String)v.get(i2));
      if (localObject != null)
      {
        localObject = ((View)localObject).getTransitionName();
        if (!paramBoolean) {
          break label103;
        }
        a(c, str, (String)localObject);
      }
    }
    for (;;)
    {
      i2 += 1;
      break label13;
      i1 = v.size();
      break;
      label103:
      a(c, (String)localObject, str);
    }
  }
  
  private static void a(ien paramien, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2)
  {
    if (paramArrayList1 != null)
    {
      int i1 = 0;
      while (i1 < paramArrayList1.size())
      {
        String str1 = (String)paramArrayList1.get(i1);
        String str2 = (String)paramArrayList2.get(i1);
        a(c, str1, str2);
        i1 += 1;
      }
    }
  }
  
  private boolean a(int paramInt, ien paramien, boolean paramBoolean, SparseArray<av> paramSparseArray1, SparseArray<av> paramSparseArray2)
  {
    ViewGroup localViewGroup = (ViewGroup)b.p.a(paramInt);
    if (localViewGroup == null) {
      return false;
    }
    Object localObject4 = (av)paramSparseArray2.get(paramInt);
    Object localObject5 = (av)paramSparseArray1.get(paramInt);
    Object localObject2;
    label66:
    Object localObject3;
    ArrayList localArrayList1;
    Object localObject1;
    if (localObject4 == null)
    {
      localObject2 = null;
      if ((localObject4 != null) && (localObject5 != null)) {
        break label160;
      }
      paramSparseArray1 = null;
      if (localObject5 != null) {
        break label230;
      }
      localObject3 = null;
      localArrayList1 = new ArrayList();
      if (paramSparseArray1 == null) {
        break label941;
      }
      localObject1 = a(paramien, (av)localObject5, paramBoolean);
      if (!((hq)localObject1).isEmpty()) {
        break label261;
      }
      localObject1 = null;
      paramSparseArray2 = null;
    }
    for (;;)
    {
      if ((localObject2 == null) && (paramSparseArray2 == null) && (localObject3 == null))
      {
        return false;
        if (paramBoolean) {}
        for (paramSparseArray1 = ((av)localObject4).getReenterTransition();; paramSparseArray1 = ((av)localObject4).getEnterTransition())
        {
          localObject2 = aal.a(paramSparseArray1);
          break;
        }
        label160:
        if (paramBoolean) {}
        for (paramSparseArray1 = ((av)localObject5).getSharedElementReturnTransition();; paramSparseArray1 = ((av)localObject4).getSharedElementEnterTransition())
        {
          if (paramSparseArray1 != null) {
            break label192;
          }
          paramSparseArray1 = null;
          break;
        }
        label192:
        paramSparseArray2 = (Transition)paramSparseArray1;
        if (paramSparseArray2 == null)
        {
          paramSparseArray1 = null;
          break label66;
        }
        paramSparseArray1 = new TransitionSet();
        paramSparseArray1.addTransition(paramSparseArray2);
        break label66;
        label230:
        if (paramBoolean) {}
        for (paramSparseArray2 = ((av)localObject5).getReturnTransition();; paramSparseArray2 = ((av)localObject5).getExitTransition())
        {
          localObject3 = aal.a(paramSparseArray2);
          break;
        }
        label261:
        if (paramBoolean) {}
        for (paramSparseArray2 = ah;; paramSparseArray2 = ah)
        {
          if (paramSparseArray2 != null)
          {
            new ArrayList(((hq)localObject1).keySet());
            new ArrayList(((hq)localObject1).values());
          }
          localViewGroup.getViewTreeObserver().addOnPreDrawListener(new ao(this, localViewGroup, paramSparseArray1, localArrayList1, paramien, paramBoolean, (av)localObject4, (av)localObject5));
          paramSparseArray2 = paramSparseArray1;
          break;
        }
      }
      ArrayList localArrayList2 = new ArrayList();
      Object localObject6 = a(localObject3, (av)localObject5, localArrayList2, (hq)localObject1, f);
      if ((v != null) && (localObject1 != null))
      {
        paramSparseArray1 = (View)((hq)localObject1).get(v.get(0));
        if (paramSparseArray1 != null)
        {
          if (localObject6 != null) {
            aal.a(localObject6, paramSparseArray1);
          }
          if (paramSparseArray2 != null) {
            aal.a(paramSparseArray2, paramSparseArray1);
          }
        }
      }
      cf localcf = new cf(this, (av)localObject4);
      localObject5 = new ArrayList();
      hq localhq = new hq();
      if (localObject4 != null) {
        if (paramBoolean) {
          paramBoolean = ((av)localObject4).getAllowReturnTransitionOverlap();
        }
      }
      for (;;)
      {
        localObject3 = (Transition)localObject2;
        paramSparseArray1 = (Transition)localObject6;
        Object localObject7 = (Transition)paramSparseArray2;
        if ((localObject3 != null) && (paramSparseArray1 != null)) {}
        for (;;)
        {
          if (paramBoolean)
          {
            localObject4 = new TransitionSet();
            if (localObject3 != null) {
              ((TransitionSet)localObject4).addTransition((Transition)localObject3);
            }
            if (paramSparseArray1 != null) {
              ((TransitionSet)localObject4).addTransition(paramSparseArray1);
            }
            if (localObject7 != null) {
              ((TransitionSet)localObject4).addTransition((Transition)localObject7);
            }
            paramSparseArray1 = (SparseArray<av>)localObject4;
          }
          label926:
          for (;;)
          {
            if (paramSparseArray1 != null)
            {
              localObject3 = f;
              localObject4 = e;
              localObject7 = c;
              if ((localObject2 != null) || (paramSparseArray2 != null))
              {
                Transition localTransition = (Transition)localObject2;
                if (localTransition != null) {
                  localTransition.addTarget((View)localObject3);
                }
                if (paramSparseArray2 != null) {
                  aal.a(paramSparseArray2, (View)localObject3, (Map)localObject1, localArrayList1);
                }
                localViewGroup.getViewTreeObserver().addOnPreDrawListener(new cb(localViewGroup, localTransition, (View)localObject3, localcf, (Map)localObject7, localhq, (ArrayList)localObject5));
                if (localTransition != null) {
                  localTransition.setEpicenterCallback(new cc((ce)localObject4));
                }
              }
              localViewGroup.getViewTreeObserver().addOnPreDrawListener(new ap(this, localViewGroup, paramien, paramInt, paramSparseArray1));
              aal.a(paramSparseArray1, f, true);
              a(paramien, paramInt, paramSparseArray1);
              TransitionManager.beginDelayedTransition(localViewGroup, (Transition)paramSparseArray1);
              localObject1 = f;
              paramien = d;
              localObject2 = (Transition)localObject2;
              localObject3 = (Transition)localObject6;
              paramSparseArray2 = (Transition)paramSparseArray2;
              localObject4 = (Transition)paramSparseArray1;
              if (localObject4 != null) {
                localViewGroup.getViewTreeObserver().addOnPreDrawListener(new cd(localViewGroup, (Transition)localObject2, (ArrayList)localObject5, (Transition)localObject3, localArrayList2, paramSparseArray2, localArrayList1, localhq, paramien, (Transition)localObject4, (View)localObject1));
              }
            }
            if (paramSparseArray1 == null) {
              break label929;
            }
            return true;
            paramBoolean = ((av)localObject4).getAllowEnterTransitionOverlap();
            break;
            if ((paramSparseArray1 != null) && (localObject3 != null)) {
              paramSparseArray1 = new TransitionSet().addTransition(paramSparseArray1).addTransition((Transition)localObject3).setOrdering(1);
            }
            for (;;)
            {
              if (localObject7 == null) {
                break label926;
              }
              localObject3 = new TransitionSet();
              if (paramSparseArray1 != null) {
                ((TransitionSet)localObject3).addTransition(paramSparseArray1);
              }
              ((TransitionSet)localObject3).addTransition((Transition)localObject7);
              paramSparseArray1 = (SparseArray<av>)localObject3;
              break;
              if (paramSparseArray1 == null)
              {
                paramSparseArray1 = (SparseArray<av>)localObject3;
                if (localObject3 == null) {
                  paramSparseArray1 = null;
                }
              }
            }
          }
          label929:
          return false;
          paramBoolean = true;
        }
        paramBoolean = true;
      }
      label941:
      localObject1 = null;
      paramSparseArray2 = paramSparseArray1;
    }
  }
  
  private void b(SparseArray<av> paramSparseArray1, SparseArray<av> paramSparseArray2)
  {
    if (!b.p.a()) {}
    CronetEngine.Builder.Pkp localPkp;
    do
    {
      return;
      localPkp = c;
    } while (localPkp == null);
    switch (g)
    {
    }
    for (;;)
    {
      localPkp = e;
      break;
      b(paramSparseArray2, h);
      continue;
      Object localObject1 = h;
      Object localObject2;
      if (b.g != null)
      {
        int i1 = 0;
        localObject2 = localObject1;
        if (i1 < b.g.size())
        {
          av localav = (av)b.g.get(i1);
          if (localObject1 != null)
          {
            localObject2 = localObject1;
            if (H != H) {}
          }
          else
          {
            if (localav != localObject1) {
              break label190;
            }
          }
          for (localObject2 = null;; localObject2 = localObject1)
          {
            i1 += 1;
            localObject1 = localObject2;
            break;
            label190:
            a(paramSparseArray1, localav);
          }
        }
      }
      else
      {
        localObject2 = localObject1;
      }
      b(paramSparseArray2, (av)localObject2);
      continue;
      a(paramSparseArray1, h);
      continue;
      a(paramSparseArray1, h);
      continue;
      b(paramSparseArray2, h);
      continue;
      a(paramSparseArray1, h);
      continue;
      b(paramSparseArray2, h);
    }
  }
  
  private static void b(SparseArray<av> paramSparseArray, av paramav)
  {
    if (paramav != null)
    {
      int i1 = H;
      if (i1 != 0) {
        paramSparseArray.put(i1, paramav);
      }
    }
  }
  
  private static void b(ien paramien, hq<String, View> paramhq, boolean paramBoolean)
  {
    int i2 = paramhq.size();
    int i1 = 0;
    if (i1 < i2)
    {
      String str1 = (String)paramhq.b(i1);
      String str2 = ((View)paramhq.c(i1)).getTransitionName();
      if (paramBoolean) {
        a(c, str1, str2);
      }
      for (;;)
      {
        i1 += 1;
        break;
        a(c, str2, str1);
      }
    }
  }
  
  public bz a()
  {
    j = 0;
    return this;
  }
  
  public bz a(int paramInt1, int paramInt2)
  {
    f = paramInt1;
    g = paramInt2;
    h = 0;
    i = 0;
    return this;
  }
  
  public bz a(int paramInt, av paramav)
  {
    a(paramInt, paramav, null, 1);
    return this;
  }
  
  public bz a(int paramInt, av paramav, String paramString)
  {
    a(paramInt, paramav, paramString, 1);
    return this;
  }
  
  public bz a(av paramav)
  {
    CronetEngine.Builder.Pkp localPkp = new CronetEngine.Builder.Pkp();
    g = 3;
    h = paramav;
    a(localPkp);
    return this;
  }
  
  public bz a(av paramav, String paramString)
  {
    a(0, paramav, paramString, 1);
    return this;
  }
  
  public ien a(boolean paramBoolean, ien paramien, SparseArray<av> paramSparseArray1, SparseArray<av> paramSparseArray2)
  {
    if (bh.a)
    {
      new StringBuilder("popFromBackStack: ").append(this);
      a("  ", new PrintWriter(new ht("FragmentManager")));
    }
    ien localien = paramien;
    if (a)
    {
      if (paramien != null) {
        break label204;
      }
      if (paramSparseArray1.size() == 0)
      {
        localien = paramien;
        if (paramSparseArray2.size() == 0) {}
      }
      else
      {
        localien = a(paramSparseArray1, paramSparseArray2, true);
      }
    }
    label84:
    a(-1);
    int i1;
    label97:
    int i2;
    label105:
    int i3;
    if (localien != null)
    {
      i1 = 0;
      if (localien == null) {
        break label238;
      }
      i2 = 0;
      paramien = d;
      if (paramien == null) {
        break label527;
      }
      if (localien == null) {
        break label247;
      }
      i3 = 0;
      label122:
      if (localien == null) {
        break label256;
      }
    }
    label204:
    label238:
    label247:
    label256:
    for (int i4 = 0;; i4 = l) {
      switch (g)
      {
      default: 
        throw new IllegalArgumentException("Unknown cmd: " + g);
        localien = paramien;
        if (paramBoolean) {
          break label84;
        }
        a(paramien, v, u);
        localien = paramien;
        break label84;
        i1 = k;
        break label97;
        i2 = j;
        break label105;
        i3 = k;
        break label122;
      }
    }
    paramSparseArray1 = h;
    Q = i4;
    b.a(paramSparseArray1, bh.d(i2), i1);
    for (;;)
    {
      paramien = f;
      break;
      paramSparseArray1 = h;
      if (paramSparseArray1 != null)
      {
        Q = i4;
        b.a(paramSparseArray1, bh.d(i2), i1);
      }
      if (m != null)
      {
        i4 = 0;
        while (i4 < m.size())
        {
          paramSparseArray1 = (av)m.get(i4);
          Q = i3;
          b.a(paramSparseArray1, false);
          i4 += 1;
        }
        paramSparseArray1 = h;
        Q = i3;
        b.a(paramSparseArray1, false);
        continue;
        paramSparseArray1 = h;
        Q = i3;
        b.c(paramSparseArray1, bh.d(i2), i1);
        continue;
        paramSparseArray1 = h;
        Q = i4;
        b.b(paramSparseArray1, bh.d(i2), i1);
        continue;
        paramSparseArray1 = h;
        Q = i3;
        b.e(paramSparseArray1, bh.d(i2), i1);
        continue;
        paramSparseArray1 = h;
        Q = i3;
        b.d(paramSparseArray1, bh.d(i2), i1);
      }
    }
    label527:
    if (paramBoolean)
    {
      b.a(b.n, bh.d(i2), i1, true);
      localien = null;
    }
    if (p >= 0)
    {
      b.c(p);
      p = -1;
    }
    return localien;
  }
  
  void a(int paramInt)
  {
    if (!l) {}
    for (;;)
    {
      return;
      if (bh.a) {
        new StringBuilder("Bump nesting in ").append(this).append(" by ").append(paramInt);
      }
      for (CronetEngine.Builder.Pkp localPkp = c; localPkp != null; localPkp = e)
      {
        av localav;
        if (h != null)
        {
          localav = h;
          B += paramInt;
          if (bh.a) {
            new StringBuilder("Bump nesting of ").append(h).append(" to ").append(h.B);
          }
        }
        if (m != null)
        {
          int i1 = m.size() - 1;
          while (i1 >= 0)
          {
            localav = (av)m.get(i1);
            B += paramInt;
            if (bh.a) {
              new StringBuilder("Bump nesting of ").append(localav).append(" to ").append(B);
            }
            i1 -= 1;
          }
        }
      }
    }
  }
  
  public void a(SparseArray<av> paramSparseArray1, SparseArray<av> paramSparseArray2)
  {
    if (!b.p.a()) {}
    CronetEngine.Builder.Pkp localPkp;
    do
    {
      return;
      localPkp = c;
    } while (localPkp == null);
    switch (g)
    {
    }
    for (;;)
    {
      localPkp = e;
      break;
      a(paramSparseArray1, h);
      continue;
      if (m != null)
      {
        int i1 = m.size() - 1;
        while (i1 >= 0)
        {
          b(paramSparseArray2, (av)m.get(i1));
          i1 -= 1;
        }
      }
      a(paramSparseArray1, h);
      continue;
      b(paramSparseArray2, h);
      continue;
      b(paramSparseArray2, h);
      continue;
      a(paramSparseArray1, h);
      continue;
      b(paramSparseArray2, h);
      continue;
      a(paramSparseArray1, h);
    }
  }
  
  public void a(String paramString, PrintWriter paramPrintWriter)
  {
    a(paramString, paramPrintWriter, true);
  }
  
  public void a(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mName=");
      paramPrintWriter.print(n);
      paramPrintWriter.print(" mIndex=");
      paramPrintWriter.print(p);
      paramPrintWriter.print(" mCommitted=");
      paramPrintWriter.println(o);
      if (j != 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mTransition=#");
        paramPrintWriter.print(Integer.toHexString(j));
        paramPrintWriter.print(" mTransitionStyle=#");
        paramPrintWriter.println(Integer.toHexString(k));
      }
      if ((f != 0) || (g != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(f));
        paramPrintWriter.print(" mExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(g));
      }
      if ((h != 0) || (i != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mPopEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(h));
        paramPrintWriter.print(" mPopExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(i));
      }
      if ((q != 0) || (r != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(q));
        paramPrintWriter.print(" mBreadCrumbTitleText=");
        paramPrintWriter.println(r);
      }
      if ((s != 0) || (t != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(s));
        paramPrintWriter.print(" mBreadCrumbShortTitleText=");
        paramPrintWriter.println(t);
      }
    }
    if (c != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      String str2 = paramString + "    ";
      CronetEngine.Builder.Pkp localPkp = c;
      int i1 = 0;
      while (localPkp != null)
      {
        String str1;
        int i2;
        switch (g)
        {
        default: 
          str1 = "cmd=" + g;
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  Op #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.print(str1);
          paramPrintWriter.print(" ");
          paramPrintWriter.println(h);
          if (paramBoolean)
          {
            if ((i != 0) || (j != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("enterAnim=#");
              paramPrintWriter.print(Integer.toHexString(i));
              paramPrintWriter.print(" exitAnim=#");
              paramPrintWriter.println(Integer.toHexString(j));
            }
            if ((k != 0) || (l != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("popEnterAnim=#");
              paramPrintWriter.print(Integer.toHexString(k));
              paramPrintWriter.print(" popExitAnim=#");
              paramPrintWriter.println(Integer.toHexString(l));
            }
          }
          if ((m == null) || (m.size() <= 0)) {
            break label804;
          }
          i2 = 0;
          label638:
          if (i2 >= m.size()) {
            break label804;
          }
          paramPrintWriter.print(str2);
          if (m.size() == 1) {
            paramPrintWriter.print("Removed: ");
          }
          break;
        }
        for (;;)
        {
          paramPrintWriter.println(m.get(i2));
          i2 += 1;
          break label638;
          str1 = "NULL";
          break;
          str1 = "ADD";
          break;
          str1 = "REPLACE";
          break;
          str1 = "REMOVE";
          break;
          str1 = "HIDE";
          break;
          str1 = "SHOW";
          break;
          str1 = "DETACH";
          break;
          str1 = "ATTACH";
          break;
          if (i2 == 0) {
            paramPrintWriter.println("Removed:");
          }
          paramPrintWriter.print(str2);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i2);
          paramPrintWriter.print(": ");
        }
        label804:
        localPkp = e;
        i1 += 1;
      }
    }
  }
  
  void a(CronetEngine.Builder.Pkp paramPkp)
  {
    if (c == null)
    {
      d = paramPkp;
      c = paramPkp;
    }
    for (;;)
    {
      i = f;
      j = g;
      k = h;
      l = i;
      e += 1;
      return;
      f = d;
      d.e = paramPkp;
      d = paramPkp;
    }
  }
  
  public int b()
  {
    return a(false);
  }
  
  public bz b(int paramInt, av paramav)
  {
    return b(paramInt, paramav, null);
  }
  
  public bz b(int paramInt, av paramav, String paramString)
  {
    if (paramInt == 0) {
      throw new IllegalArgumentException("Must use non-zero containerViewId");
    }
    a(paramInt, paramav, paramString, 2);
    return this;
  }
  
  public bz b(av paramav)
  {
    CronetEngine.Builder.Pkp localPkp = new CronetEngine.Builder.Pkp();
    g = 4;
    h = paramav;
    a(localPkp);
    return this;
  }
  
  public int c()
  {
    return a(true);
  }
  
  public bz c(av paramav)
  {
    CronetEngine.Builder.Pkp localPkp = new CronetEngine.Builder.Pkp();
    g = 5;
    h = paramav;
    a(localPkp);
    return this;
  }
  
  public bz d(av paramav)
  {
    CronetEngine.Builder.Pkp localPkp = new CronetEngine.Builder.Pkp();
    g = 6;
    h = paramav;
    a(localPkp);
    return this;
  }
  
  public bz e(av paramav)
  {
    CronetEngine.Builder.Pkp localPkp = new CronetEngine.Builder.Pkp();
    g = 7;
    h = paramav;
    a(localPkp);
    return this;
  }
  
  public void run()
  {
    if (bh.a) {
      new StringBuilder("Run: ").append(this);
    }
    if ((l) && (p < 0)) {
      throw new IllegalStateException("addToBackStack() called after commit()");
    }
    a(1);
    Object localObject1;
    if (a)
    {
      localObject1 = new SparseArray();
      localObject2 = new SparseArray();
      b((SparseArray)localObject1, (SparseArray)localObject2);
    }
    for (Object localObject2 = a((SparseArray)localObject1, (SparseArray)localObject2, false);; localObject2 = null)
    {
      int i1;
      label101:
      int i2;
      label108:
      CronetEngine.Builder.Pkp localPkp;
      int i3;
      if (localObject2 != null)
      {
        i1 = 0;
        if (localObject2 == null) {
          break label217;
        }
        i2 = 0;
        localPkp = c;
        if (localPkp == null) {
          break label693;
        }
        if (localObject2 == null) {
          break label225;
        }
        i3 = 0;
        label126:
        if (localObject2 == null) {
          break label234;
        }
      }
      label217:
      label225:
      label234:
      for (int i4 = 0;; i4 = j) {
        switch (g)
        {
        default: 
          throw new IllegalArgumentException("Unknown cmd: " + g);
          i1 = k;
          break label101;
          i2 = j;
          break label108;
          i3 = i;
          break label126;
        }
      }
      localObject1 = h;
      Q = i3;
      b.a((av)localObject1, false);
      for (;;)
      {
        localPkp = e;
        break;
        localObject1 = h;
        int i6 = H;
        Object localObject3;
        if (b.g != null)
        {
          int i5 = 0;
          localObject3 = localObject1;
          if (i5 < b.g.size())
          {
            av localav = (av)b.g.get(i5);
            if (bh.a) {
              new StringBuilder("OP_REPLACE: adding=").append(localObject1).append(" old=").append(localav);
            }
            localObject3 = localObject1;
            if (H == i6)
            {
              if (localav != localObject1) {
                break label416;
              }
              h = null;
            }
            for (localObject3 = null;; localObject3 = localObject1)
            {
              i5 += 1;
              localObject1 = localObject3;
              break;
              label416:
              if (m == null) {
                m = new ArrayList();
              }
              m.add(localav);
              Q = i4;
              if (l)
              {
                B += 1;
                if (bh.a) {
                  new StringBuilder("Bump nesting of ").append(localav).append(" to ").append(B);
                }
              }
              b.a(localav, i2, i1);
            }
          }
        }
        else
        {
          localObject3 = localObject1;
        }
        if (localObject3 != null)
        {
          Q = i3;
          b.a((av)localObject3, false);
          continue;
          localObject1 = h;
          Q = i4;
          b.a((av)localObject1, i2, i1);
          continue;
          localObject1 = h;
          Q = i4;
          b.b((av)localObject1, i2, i1);
          continue;
          localObject1 = h;
          Q = i3;
          b.c((av)localObject1, i2, i1);
          continue;
          localObject1 = h;
          Q = i4;
          b.d((av)localObject1, i2, i1);
          continue;
          localObject1 = h;
          Q = i3;
          b.e((av)localObject1, i2, i1);
        }
      }
      label693:
      b.a(b.n, i2, i1, true);
      if (l) {
        b.b(this);
      }
      return;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (p >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(p);
    }
    if (n != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(n);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */