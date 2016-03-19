package com.google.android.apps.hangouts.views;

import aal;
import aen;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import awl;
import bfd;
import bfq;
import cyx;
import czb;
import dvd;
import ewv;
import eyp;
import ezc;
import ezi;
import fdy;
import fdz;
import fea;
import feb;
import fec;
import fed;
import fef;
import hpu;
import ilh;
import imx;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Queue;

public class ParticipantsGalleryView
  extends FrameLayout
  implements ewv
{
  public static final boolean a = false;
  public feb b;
  public final int c;
  public int d;
  public final eyp<OverlayedAvatarView> e = new eyp();
  public boolean f = true;
  public final Handler g = new fec(this);
  public final Queue<fef> h = new LinkedList();
  public boolean i = false;
  private boolean j;
  private boolean k;
  private ewv l;
  private LayoutTransition m;
  private LayoutTransition n;
  private final int o;
  private int p = -1;
  private final ViewGroup q;
  private int r;
  private final eyp<Runnable> s = new eyp();
  private int t = 0;
  private bfd u = null;
  
  static
  {
    imx localimx = ezi.u;
  }
  
  public ParticipantsGalleryView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ParticipantsGalleryView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    u = dvd.e(((hpu)ilh.a(paramContext, hpu.class)).a());
    paramAttributeSet = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, awl.aj, 0, 0);
    try
    {
      k = paramAttributeSet.getBoolean(awl.ak, false);
      paramAttributeSet.recycle();
      LayoutInflater.from(paramContext).inflate(aal.gy, this, true);
      q = ((ViewGroup)findViewById(aen.eN));
      o = getResources().getInteger(aal.eP);
      c = getResources().getInteger(aal.eM);
      paramContext = new LayoutTransition();
      int i1 = bfq.a(getContext());
      paramContext.setAnimator(3, ObjectAnimator.ofFloat(null, "translationY", new float[] { 0.0F, i1 + 20 }));
      paramContext.setAnimator(2, ObjectAnimator.ofFloat(null, "translationY", new float[] { i1 + 20, 0.0F }));
      paramContext.setStartDelay(2, paramContext.getDuration(0));
      paramContext.setDuration(o);
      n = paramContext;
      paramContext = new LayoutTransition();
      paramContext.setAnimator(3, ObjectAnimator.ofFloat(null, "alpha", new float[] { 1.0F, 0.0F }));
      paramContext.setAnimator(2, ObjectAnimator.ofFloat(null, "alpha", new float[] { 0.0F, 1.0F }));
      paramContext.setDuration(o);
      paramContext.setStartDelay(1, paramContext.getDuration(3));
      m = paramContext;
      q.setLayoutTransition(n);
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  private static String a(List<cyx> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localStringBuilder.append(nextb.b).append(" ");
    }
    return localStringBuilder.toString();
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    switch (OverlayedAvatarView.b(paramInt1))
    {
    }
    for (;;)
    {
      switch (OverlayedAvatarView.b(paramInt2))
      {
      case 3: 
      default: 
        return;
        r -= 1;
        d -= 1;
      }
    }
    r += 1;
    d += 1;
  }
  
  private void a(OverlayedAvatarView paramOverlayedAvatarView, int paramInt)
  {
    String str1;
    if (a)
    {
      String str2 = String.valueOf(paramOverlayedAvatarView.g());
      if (j)
      {
        str1 = "focus gallery.";
        new StringBuilder(String.valueOf(str2).length() + 39 + String.valueOf(str1).length()).append("[PartGallery] Removing from layout ").append(str2).append(" in ").append(str1);
      }
    }
    else
    {
      if (q.indexOfChild(paramOverlayedAvatarView) < 0) {
        break label147;
      }
      a(paramInt, 0);
      q.removeView(paramOverlayedAvatarView);
    }
    for (;;)
    {
      if (a) {
        a(new Throwable(), paramOverlayedAvatarView, 18 + "Remove " + paramInt);
      }
      return;
      str1 = "watermark.";
      break;
      label147:
      ezi.e("Babel", "removeAvatarViewFromLayout: removing an avatar not inserted", new Object[0]);
      if (a) {
        a(null, null, "------> ERROR <------ : Removing an avatar not inserted");
      }
    }
  }
  
  private void a(fef paramfef)
  {
    h.offer(paramfef);
    if ((!i) && (!g.hasMessages(0))) {
      g.sendEmptyMessage(0);
    }
  }
  
  private LayoutTransition g()
  {
    LayoutTransition localLayoutTransition = q.getLayoutTransition();
    q.setLayoutTransition(null);
    return localLayoutTransition;
  }
  
  public void a()
  {
    synchronized (e)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localObject2 = e.values().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        OverlayedAvatarView localOverlayedAvatarView = (OverlayedAvatarView)((Iterator)localObject2).next();
        if ((localOverlayedAvatarView != null) && (!TextUtils.isEmpty(localOverlayedAvatarView.getContentDescription()))) {
          ezc.a(localStringBuilder, localOverlayedAvatarView.getContentDescription());
        }
      }
    }
    if (((StringBuilder)localObject1).length() == 0)
    {
      setContentDescription(null);
      if (l != null) {
        l.b();
      }
      return;
    }
    Object localObject2 = getResources();
    if (j) {}
    for (int i1 = aal.hk;; i1 = aal.hD)
    {
      setContentDescription(((Resources)localObject2).getQuantityString(i1, e.size(), new Object[] { ((StringBuilder)localObject1).toString() }));
      break;
    }
  }
  
  public void a(int paramInt)
  {
    setTranslationY(paramInt);
    setVisibility(0);
  }
  
  public void a(int paramInt, bfd parambfd)
  {
    d(paramInt);
    u = parambfd;
  }
  
  public void a(OverlayedAvatarView paramOverlayedAvatarView, int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    String str1;
    if (a)
    {
      String str2 = String.valueOf(paramOverlayedAvatarView.g());
      if (j)
      {
        str1 = "focus gallery.";
        new StringBuilder(String.valueOf(str2).length() + 30 + String.valueOf(str1).length()).append("[PartGallery] Inserting ").append(str2).append(" into ").append(str1);
      }
    }
    else
    {
      q.endViewTransition(paramOverlayedAvatarView);
      if ((q.indexOfChild(paramOverlayedAvatarView) >= 0) || (paramInt1 < 0) || (paramInt1 > q.getChildCount())) {
        break label201;
      }
      a(0, paramInt2);
      q.addView(paramOverlayedAvatarView, paramInt1);
      paramOverlayedAvatarView.a(paramString2, paramString1, u);
      requestLayout();
    }
    for (;;)
    {
      if (a) {
        a(new Throwable(), paramOverlayedAvatarView, 36 + "Insert at " + paramInt1 + " to " + paramInt2);
      }
      return;
      str1 = "watermark.";
      break;
      label201:
      int i1 = q.indexOfChild(paramOverlayedAvatarView);
      int i2 = q.getChildCount();
      ezi.e("Babel", 127 + "insertAvatarViewIntoLayout: inserting already inserted @" + i1 + ", or wrong index " + paramInt1 + " with ViewGroup size " + i2, new Object[0]);
      if (a)
      {
        i1 = q.indexOfChild(paramOverlayedAvatarView);
        i2 = q.getChildCount();
        a(null, null, 123 + "------> ERROR <------ : Inserting already inserted @" + i1 + ", or wrong index " + paramInt1 + " with ViewGroup size " + i2);
      }
    }
  }
  
  public void a(cyx paramcyx)
  {
    if ((paramcyx == null) || (b == null)) {}
    while (!e.containsKey(b)) {
      return;
    }
    a(paramcyx, 2, false);
  }
  
  public void a(cyx paramcyx, int paramInt)
  {
    if (paramcyx == null)
    {
      ezi.e("Babel", "ParticipantsGalleryView.setParticipantState: null participant", new Object[0]);
      return;
    }
    if (a)
    {
      Throwable localThrowable = new Throwable();
      String str = String.valueOf(b.b);
      a(localThrowable, null, String.valueOf(str).length() + 43 + "+++ SetParticipantState " + str + " setBit=" + paramInt);
    }
    a(new fed(paramcyx, paramInt, true, true));
  }
  
  public void a(cyx paramcyx, int paramInt, boolean paramBoolean)
  {
    if (paramcyx == null)
    {
      ezi.e("Babel", "ParticipantsGalleryView.unsetParticipantState: null participant", new Object[0]);
      return;
    }
    if (a)
    {
      Throwable localThrowable = new Throwable();
      String str = String.valueOf(b.b);
      a(localThrowable, null, String.valueOf(str).length() + 47 + "--- unsetParticipantState " + str + " unsetBit=" + paramInt);
    }
    a(new fed(paramcyx, paramInt, false, paramBoolean));
  }
  
  public void a(cyx paramcyx, OverlayedAvatarView paramOverlayedAvatarView, int paramInt, boolean paramBoolean)
  {
    int i1 = 1;
    int i2 = b(paramInt);
    paramOverlayedAvatarView.e(paramInt);
    for (;;)
    {
      synchronized (e)
      {
        e.put(b, paramOverlayedAvatarView);
        a();
        if (paramOverlayedAvatarView.a() == 1)
        {
          if (paramBoolean) {
            break label91;
          }
          g();
          a(paramOverlayedAvatarView, i2, paramInt, e, h);
          return;
        }
      }
      i1 = 0;
      continue;
      label91:
      if (i1 != 0) {
        q.setLayoutTransition(m);
      } else {
        q.setLayoutTransition(n);
      }
    }
  }
  
  public void a(ewv paramewv)
  {
    l = paramewv;
  }
  
  public void a(fdz paramfdz, List<cyx> paramList, boolean paramBoolean)
  {
    paramList = paramList.iterator();
    boolean bool = false;
    while (paramList.hasNext())
    {
      cyx localcyx = (cyx)paramList.next();
      if (localcyx == null)
      {
        ezi.e("Babel", "ParticipantsGalleryView.internalExecuteBatchWatermarkeUnset: null participant", new Object[0]);
      }
      else
      {
        OverlayedAvatarView localOverlayedAvatarView = c(localcyx);
        if (localOverlayedAvatarView == null) {
          break label251;
        }
        int i1 = localOverlayedAvatarView.b();
        int i2 = localOverlayedAvatarView.c(1);
        int i3 = OverlayedAvatarView.b(i2);
        int i4 = OverlayedAvatarView.b(i1);
        if (d(localcyx))
        {
          localOverlayedAvatarView.f(i2);
          if (!a) {
            break label251;
          }
          a(null, localOverlayedAvatarView, 53 + "UnsetWatermark (COALESCED) " + i1 + " -> " + i2);
        }
        else if (i3 == i4)
        {
          localOverlayedAvatarView.e(i2);
          if (!a) {
            break label251;
          }
          a(null, localOverlayedAvatarView, 49 + "UnsetWatermark (HI EQ) " + i1 + " -> " + i2);
        }
        else
        {
          if (i2 != 0) {
            break label251;
          }
          b(localcyx, i1, paramBoolean);
          bool = true;
        }
      }
    }
    label251:
    for (;;)
    {
      break;
      paramfdz.a(bool);
      return;
    }
  }
  
  public void a(feb paramfeb)
  {
    b = paramfeb;
  }
  
  public void a(Throwable paramThrowable, OverlayedAvatarView paramOverlayedAvatarView, String paramString)
  {
    if (!j) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString != null) {
      localStringBuilder.append(String.format(Locale.US, "%1$-96s", new Object[] { paramString }));
    }
    if (paramOverlayedAvatarView != null)
    {
      localStringBuilder.append(" :");
      localStringBuilder.append(" Participant=").append(gb).append(".");
      localStringBuilder.append(OverlayedAvatarView.a(paramOverlayedAvatarView.b()).replace("STATE_", "").subSequence(0, 1)).append(".");
      if (s.get(paramOverlayedAvatarView.g()) != null)
      {
        localStringBuilder.append(OverlayedAvatarView.a(paramOverlayedAvatarView.c()).replace("STATE_", "").subSequence(0, 1));
        localStringBuilder.append(" Indices=(").append(r).append(", ");
        localStringBuilder.append(d).append(") ");
        localStringBuilder.append(" Avatars=[");
        i1 = 0;
        label206:
        if (i1 >= q.getChildCount()) {
          break label334;
        }
        if (i1 > 0) {
          localStringBuilder.append(", ");
        }
        paramOverlayedAvatarView = q.getChildAt(i1);
        if (!(paramOverlayedAvatarView instanceof OverlayedAvatarView)) {
          break label321;
        }
        paramOverlayedAvatarView = (OverlayedAvatarView)paramOverlayedAvatarView;
        localStringBuilder.append(gb).append(".");
        localStringBuilder.append(OverlayedAvatarView.a(paramOverlayedAvatarView.b()).replace("STATE_", "").subSequence(0, 1));
      }
      for (;;)
      {
        i1 += 1;
        break label206;
        localStringBuilder.append("-");
        break;
        label321:
        localStringBuilder.append(paramOverlayedAvatarView.getVisibility());
      }
      label334:
      localStringBuilder.append("]");
    }
    if (paramThrowable != null) {
      localStringBuilder.append(" @ ").append(Log.getStackTraceString(paramThrowable).replace("\t", "").replace("\n", " ==> ").replace("com.google.android.apps.hangouts", "").subSequence(0, 512));
    }
    int i1 = System.identityHashCode(this);
    paramThrowable = String.valueOf(localStringBuilder.toString());
    new StringBuilder(String.valueOf(paramThrowable).length() + 23).append("WATERMARK[").append(i1).append("]\t").append(paramThrowable);
  }
  
  public void a(List<cyx> paramList, boolean paramBoolean)
  {
    Throwable localThrowable;
    if (a)
    {
      localThrowable = new Throwable();
      str = String.valueOf(a(paramList));
      if (str.length() == 0) {
        break label61;
      }
    }
    label61:
    for (String str = "--- UnsetWatermarkBatch ".concat(str);; str = new String("--- UnsetWatermarkBatch "))
    {
      a(localThrowable, null, str);
      a(new fea(paramList, false, paramBoolean));
      return;
    }
  }
  
  public boolean a(czb paramczb)
  {
    for (;;)
    {
      synchronized (e)
      {
        paramczb = (OverlayedAvatarView)e.get(paramczb);
        if (paramczb != null)
        {
          if (!paramczb.d())
          {
            if (!paramczb.e()) {
              break label58;
            }
            break label53;
            return bool;
          }
        }
        else {
          return false;
        }
      }
      label53:
      boolean bool = true;
      continue;
      label58:
      bool = false;
    }
  }
  
  public boolean a(fdz arg1, cyx paramcyx, OverlayedAvatarView paramOverlayedAvatarView, int paramInt1, int paramInt2)
  {
    ViewGroup localViewGroup = q;
    a(paramInt1, 0);
    int i1 = b(paramInt2);
    a(0, paramInt1);
    if (localViewGroup.getChildAt(i1) != paramOverlayedAvatarView)
    {
      paramOverlayedAvatarView.f(paramInt2);
      if (a) {
        a(null, paramOverlayedAvatarView, 39 + "Move (start) " + paramInt1 + " -> " + paramInt2);
      }
      q.setLayoutTransition(m);
      a(paramOverlayedAvatarView, paramInt1);
      paramOverlayedAvatarView = new fdy(this, paramOverlayedAvatarView, paramcyx, ???, paramInt1, paramInt2);
      postDelayed(paramOverlayedAvatarView, o);
      synchronized (s)
      {
        s.put(b, paramOverlayedAvatarView);
        return false;
      }
    }
    a(paramInt1, paramInt2);
    paramOverlayedAvatarView.e(paramInt2);
    if (a) {
      a(null, paramOverlayedAvatarView, 31 + "Move " + paramInt1 + " -> " + paramInt2);
    }
    return true;
  }
  
  public int b(int paramInt)
  {
    switch (OverlayedAvatarView.b(paramInt))
    {
    case 3: 
    default: 
      return 0;
    case 2: 
    case 4: 
      return r;
    }
    return d;
  }
  
  public OverlayedAvatarView b(cyx paramcyx)
  {
    boolean bool = true;
    OverlayedAvatarView localOverlayedAvatarView = OverlayedAvatarView.a(LayoutInflater.from(getContext()), e, b, p, this);
    if (t == 1) {}
    for (;;)
    {
      localOverlayedAvatarView.a(bool);
      localOverlayedAvatarView.setTag(paramcyx);
      return localOverlayedAvatarView;
      bool = false;
    }
  }
  
  public void b()
  {
    a();
  }
  
  public void b(fdz paramfdz, List<cyx> paramList, boolean paramBoolean)
  {
    Iterator localIterator = paramList.iterator();
    boolean bool = false;
    while (localIterator.hasNext())
    {
      cyx localcyx = (cyx)localIterator.next();
      if (localcyx == null)
      {
        ezi.e("Babel", "ParticipantsGalleryView.internalExecuteBatchWatermarkSet: null participant", new Object[0]);
      }
      else
      {
        OverlayedAvatarView localOverlayedAvatarView = c(localcyx);
        paramList = localOverlayedAvatarView;
        if (localOverlayedAvatarView == null) {
          paramList = b(localcyx);
        }
        int i1 = paramList.b();
        int i2 = paramList.d(1);
        int i3 = OverlayedAvatarView.b(i2);
        int i4 = OverlayedAvatarView.b(i1);
        if (d(localcyx))
        {
          paramList.f(i2);
          if (!a) {
            break label259;
          }
          a(null, paramList, 51 + "SetWatermark (COALESCED) " + i1 + " -> " + i2);
        }
        else if (i3 == i4)
        {
          paramList.e(i2);
          if (!a) {
            break label259;
          }
          a(null, paramList, 47 + "SetWatermark (HI EQ) " + i1 + " -> " + i2);
        }
        else
        {
          if (i2 != 1) {
            break label259;
          }
          a(localcyx, paramList, i2, paramBoolean);
          bool = true;
        }
      }
    }
    label259:
    for (;;)
    {
      break;
      paramfdz.a(bool);
      return;
    }
  }
  
  public void b(List<cyx> paramList, boolean paramBoolean)
  {
    Throwable localThrowable;
    if (a)
    {
      localThrowable = new Throwable();
      str = String.valueOf(a(paramList));
      if (str.length() == 0) {
        break label61;
      }
    }
    label61:
    for (String str = "+++ SetWatermarkBatch ".concat(str);; str = new String("+++ SetWatermarkBatch "))
    {
      a(localThrowable, null, str);
      a(new fea(paramList, true, paramBoolean));
      return;
    }
  }
  
  public boolean b(cyx paramcyx, int paramInt, boolean paramBoolean)
  {
    ??? = c(paramcyx);
    int i1;
    if (((OverlayedAvatarView)???).a() == 1) {
      i1 = 1;
    }
    for (;;)
    {
      if (paramBoolean) {
        if (i1 != 0)
        {
          q.setLayoutTransition(m);
          label39:
          a((OverlayedAvatarView)???, paramInt);
        }
      }
      synchronized (e)
      {
        e.remove(b);
        a();
        return true;
        i1 = 0;
        continue;
        q.setLayoutTransition(n);
        break label39;
        g();
        a((OverlayedAvatarView)???, paramInt);
      }
    }
  }
  
  public OverlayedAvatarView c(cyx paramcyx)
  {
    synchronized (e)
    {
      paramcyx = (OverlayedAvatarView)e.get(b);
      return paramcyx;
    }
  }
  
  public void c()
  {
    if (getVisibility() == 0) {
      setVisibility(8);
    }
  }
  
  public void c(int paramInt)
  {
    if (p != paramInt)
    {
      p = paramInt;
      int i1 = 0;
      while (i1 < q.getChildCount())
      {
        if ((q.getChildAt(i1) instanceof OverlayedAvatarView)) {
          ((OverlayedAvatarView)q.getChildAt(i1)).g(paramInt);
        }
        i1 += 1;
      }
    }
  }
  
  public void d(int paramInt)
  {
    t = paramInt;
    for (;;)
    {
      synchronized (e)
      {
        Iterator localIterator = e.values().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        OverlayedAvatarView localOverlayedAvatarView = (OverlayedAvatarView)localIterator.next();
        if (paramInt == 1)
        {
          bool = true;
          localOverlayedAvatarView.a(bool);
        }
      }
      boolean bool = false;
    }
    a();
  }
  
  public boolean d()
  {
    return f;
  }
  
  public boolean d(cyx paramcyx)
  {
    for (;;)
    {
      synchronized (s)
      {
        if (s.get(b) != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void e()
  {
    synchronized (e)
    {
      Iterator localIterator = e.values().iterator();
      if (localIterator.hasNext()) {
        ((OverlayedAvatarView)localIterator.next()).f();
      }
    }
    e.clear();
    g();
    r = 0;
    d = 0;
    int i1;
    if (a)
    {
      i1 = q.getChildCount();
      if (!j) {
        break label225;
      }
    }
    label225:
    for (??? = "focus gallery.";; ??? = "watermarks.")
    {
      new StringBuilder(String.valueOf(???).length() + 48).append("[PartGallery] Removing ").append(i1).append(" view(s) from ").append((String)???);
      q.removeAllViews();
      g.removeMessages(0);
      h.clear();
      i = false;
      f = true;
      a();
      synchronized (s)
      {
        ??? = s.values().iterator();
        if (!((Iterator)???).hasNext()) {
          break;
        }
        removeCallbacks((Runnable)((Iterator)???).next());
      }
    }
    s.clear();
    if (a) {
      a(null, null, "================ Switch Conversation ================");
    }
  }
  
  public void e(cyx paramcyx)
  {
    synchronized (s)
    {
      s.remove(b);
      return;
    }
  }
  
  public void f()
  {
    j = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    e();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.ParticipantsGalleryView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */