package com.google.android.apps.hangouts.views;

import aal;
import aen;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.Space;
import bic;
import bix;
import cum;
import cyx;
import czb;
import egy;
import ewv;
import ezc;
import ezi;
import fdl;
import feb;
import imx;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class MessageListItemWrapperView
  extends LinearLayout
  implements ewv, feb
{
  static int a;
  private static final boolean g = false;
  private static int h = -1;
  private static int i = -1;
  private static boolean z = false;
  private boolean A = false;
  public fdl b;
  public int c;
  public int d = -1;
  public String e;
  public MessageListAnimationManager f;
  private cum j;
  private int k;
  private int l;
  private int m;
  private int n;
  private int o;
  private int p;
  private boolean q;
  private int r;
  private ParticipantsGalleryView s;
  private FrameLayout t;
  private Space u;
  private long v;
  private boolean w;
  private boolean x = false;
  private boolean y = false;
  
  static
  {
    imx localimx = ezi.u;
  }
  
  public MessageListItemWrapperView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b(0);
    setClipToPadding(false);
    a = getResources().getInteger(aal.eQ);
  }
  
  static int a(Resources paramResources)
  {
    if (h == -1) {
      h = paramResources.getDimensionPixelSize(aal.eq);
    }
    return h;
  }
  
  private boolean a(long paramLong1, long paramLong2, bic parambic, bix parambix)
  {
    if (w) {
      return false;
    }
    parambix = parambix.a(paramLong1, paramLong2).iterator();
    while (parambix.hasNext())
    {
      czb localczb = ((egy)parambix.next()).b();
      if (!parambic.b(localczb))
      {
        cyx localcyx = parambic.a(localczb);
        if (localcyx == null) {
          return true;
        }
        if ((localcyx != null) && (!parambic.c(localczb))) {
          return true;
        }
      }
    }
    return false;
  }
  
  private static boolean a(List<cyx> paramList1, List<cyx> paramList2)
  {
    if (paramList1.size() != paramList2.size()) {
      return false;
    }
    int i1 = 0;
    for (;;)
    {
      if (i1 >= paramList1.size()) {
        break label68;
      }
      if (!getb.a(getb)) {
        break;
      }
      i1 += 1;
    }
    label68:
    return true;
  }
  
  private static int b(Resources paramResources)
  {
    if (i == -1) {
      i = paramResources.getDimensionPixelSize(aal.em);
    }
    return i;
  }
  
  public static void c(boolean paramBoolean)
  {
    z = paramBoolean;
  }
  
  private void e(boolean paramBoolean)
  {
    boolean bool = k();
    if ((paramBoolean) || (bool)) {}
    for (c = 0;; c = a(getResources()))
    {
      if (aal.a(getContext(), "babel_crash_on_conversation_scroll_error", false))
      {
        String str = String.valueOf("initializeWatermarkGalleryMeasuredHeightReduction setting mWatermarkGalleryMeasuredHeightReduction to ");
        int i1 = c;
        ezi.c("Babel_Scroll", String.valueOf(str).length() + 11 + str + i1, new Object[0]);
      }
      return;
    }
  }
  
  private void i()
  {
    setPadding(getPaddingLeft(), o, getPaddingRight(), p);
  }
  
  private void j()
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    CharSequence localCharSequence = j.b().getContentDescription();
    if (!TextUtils.isEmpty(localCharSequence)) {
      localSpannableStringBuilder.append(localCharSequence);
    }
    localCharSequence = s.getContentDescription();
    if (!TextUtils.isEmpty(localCharSequence))
    {
      if (localSpannableStringBuilder.length() > 0) {
        localSpannableStringBuilder.append(", ");
      }
      localSpannableStringBuilder.append(localCharSequence);
    }
    setContentDescription(localSpannableStringBuilder);
  }
  
  private boolean k()
  {
    return (w) && (z);
  }
  
  public int a(float paramFloat)
  {
    if (g) {
      new StringBuilder(44).append("setRevealAnimationPercentage ").append(paramFloat);
    }
    int i1 = b(getResources());
    int i2 = k;
    int i3 = getPaddingTop();
    int i4 = getPaddingBottom();
    int i5 = c;
    int i6 = n;
    int i7 = l;
    n = ((int)((i2 - i3 - i4 + i1 - i5 - l) * paramFloat) + i7);
    o = ((int)((1.0F - paramFloat) * m));
    p = ((int)(i1 * paramFloat));
    i();
    return n - i6;
  }
  
  public void a() {}
  
  public void a(int paramInt)
  {
    s.c(paramInt);
  }
  
  public void a(Cursor paramCursor, bic parambic, int paramInt, bix parambix)
  {
    long l1 = paramCursor.getLong(0);
    if (v != l1) {
      f();
    }
    v = l1;
    e = paramCursor.getString(1);
    w = paramCursor.isLast();
    boolean bool2 = paramCursor.isFirst();
    if (w) {
      f.a(this);
    }
    long l3;
    long l2;
    ArrayList localArrayList;
    Object localObject2;
    for (;;)
    {
      s.d(paramInt);
      l3 = paramCursor.getLong(6);
      l2 = Long.MAX_VALUE;
      l1 = l2;
      if (!w)
      {
        l1 = l2;
        if (paramCursor.moveToNext())
        {
          l1 = paramCursor.getLong(6);
          paramCursor.moveToPrevious();
        }
      }
      bool1 = false;
      if (A) {
        break label790;
      }
      bool1 = a(l3, l1, parambic, parambix);
      localArrayList = new ArrayList();
      if (!bool1) {
        break;
      }
      localObject1 = parambix.a(l3, l1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (egy)((Iterator)localObject1).next();
        String str1;
        if (g)
        {
          localObject3 = String.valueOf("[MessageListItem#bind] Associated watermark found for messageId ");
          str1 = e;
          new StringBuilder(String.valueOf(localObject3).length() + 36 + String.valueOf(str1).length()).append((String)localObject3).append(str1).append(" with timestamp ").append(l3);
          localObject3 = String.valueOf(((egy)localObject2).b());
          l1 = ((egy)localObject2).c();
          new StringBuilder(String.valueOf(localObject3).length() + 43).append("  gaiaId: ").append((String)localObject3).append("  timestamp: ").append(l1);
        }
        Object localObject3 = ((egy)localObject2).b();
        if (!parambic.b((czb)localObject3))
        {
          localObject2 = parambic.a((czb)localObject3);
          boolean bool3 = parambic.c((czb)localObject3);
          if (g)
          {
            str1 = String.valueOf(localObject3);
            String str2 = e;
            new StringBuilder(String.valueOf(str1).length() + 31 + String.valueOf(str2).length()).append("Have watermark for ").append(str1).append(" on message ").append(str2);
            if (bool3)
            {
              str1 = String.valueOf(localObject3);
              new StringBuilder(String.valueOf(str1).length() + 30).append("  ").append(str1).append(" is focused; Hide watermark.");
            }
            if (localObject2 == null)
            {
              str1 = String.valueOf(localObject3);
              new StringBuilder(String.valueOf(str1).length() + 42).append("  ").append(str1).append(" not in participant map; Hide watermark.");
            }
            if (w)
            {
              localObject3 = String.valueOf(localObject3);
              new StringBuilder(String.valueOf(localObject3).length() + 38).append("  ").append((String)localObject3).append(" is on last message; Hide watermark.");
            }
          }
          if ((localObject2 != null) && (!bool3)) {
            localArrayList.add(localObject2);
          }
        }
      }
      if (f.b() == this) {
        f.a(null);
      }
    }
    Object localObject1 = b.c(e);
    b.a(e, localArrayList);
    if ((localObject1 != null) && (((List)localObject1).size() > 0))
    {
      s.b((List)localObject1, false);
      if (localArrayList.size() > 0)
      {
        if (a(localArrayList, (List)localObject1)) {
          break label896;
        }
        localObject2 = new ArrayList((Collection)localObject1);
        ((List)localObject2).removeAll(localArrayList);
        localArrayList = new ArrayList(localArrayList);
        localArrayList.removeAll((Collection)localObject1);
        if (localArrayList.size() > 0) {
          s.b(localArrayList, true);
        }
        if (((List)localObject2).size() > 0) {
          s.a((List)localObject2, true);
        }
        label790:
        p = 0;
        o = 0;
        switch (r)
        {
        default: 
          label840:
          i();
          if (bool1) {
            break;
          }
        }
      }
    }
    for (boolean bool1 = true;; bool1 = false)
    {
      a(bool1);
      j();
      return;
      s.a((List)localObject1, false);
      break;
      if (localArrayList.size() > 0) {
        s.b(localArrayList, false);
      }
      label896:
      break;
      if (x) {
        break label840;
      }
      x = true;
      m = b(getResources());
      l2 = 0L;
      l1 = l2;
      if (!bool2)
      {
        l1 = l2;
        if (paramCursor.moveToPrevious())
        {
          l1 = paramCursor.getLong(6);
          paramCursor.moveToNext();
        }
      }
      if ((!a(l1, l3, parambic, parambix)) && (z)) {
        m += a(getResources());
      }
      o = m;
      l = m;
      n = l;
      ezc.a(this, null, j.b().getContentDescription());
      break label840;
      n = 0;
      break label840;
      p = b(getResources());
      n = -1;
      break label840;
    }
  }
  
  public void a(MessageListAnimationManager paramMessageListAnimationManager)
  {
    f = paramMessageListAnimationManager;
  }
  
  public void a(cum paramcum)
  {
    j = paramcum;
    t.removeAllViews();
    t.addView(j.b());
  }
  
  public void a(fdl paramfdl)
  {
    b = paramfdl;
  }
  
  public void a(boolean paramBoolean)
  {
    y = paramBoolean;
    h();
  }
  
  public void b()
  {
    j();
  }
  
  public void b(int paramInt)
  {
    r = paramInt;
  }
  
  public void b(boolean paramBoolean)
  {
    A = paramBoolean;
  }
  
  public cum c()
  {
    return j;
  }
  
  public void d()
  {
    r = 4;
  }
  
  public void d(boolean paramBoolean)
  {
    Space localSpace = u;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 8)
    {
      localSpace.setVisibility(i1);
      return;
    }
  }
  
  public long e()
  {
    return v;
  }
  
  public void f()
  {
    setTranslationX(0.0F);
    q = false;
    s.e();
    x = false;
  }
  
  public long g()
  {
    return j.a();
  }
  
  public void h()
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (b.b(e)) {}
    for (int i2 = b.a(e); i2 == 4; i2 = 0) {
      return;
    }
    int i1;
    if (A)
    {
      i1 = 1;
      if (i2 != i1) {
        break label104;
      }
      if (i1 == 1) {
        break label98;
      }
    }
    for (;;)
    {
      e(bool1);
      return;
      if (k())
      {
        i1 = 3;
        break;
      }
      if (y)
      {
        i1 = 1;
        break;
      }
      i1 = 2;
      break;
      label98:
      bool1 = false;
    }
    label104:
    if (aal.a(getContext(), "babel_crash_on_conversation_scroll_error", false)) {
      ezi.c("Babel_Scroll", 79 + "reevaluateWatermarkGalleryExpansion: oldState=" + i2 + ", newState=" + i1, new Object[0]);
    }
    if ((fdl.a(i1)) && (fdl.a(i2))) {}
    for (int i3 = 1; (i2 != 0) && (i2 != 3) && (i2 != 4) && (i3 == 0); i3 = 0)
    {
      b.a(e, 4);
      post(new MessageListItemWrapperView.WatermarkGalleryStateTransition(this, this, i1));
      return;
    }
    b.a(e, i1);
    if (i1 != 1) {}
    for (bool1 = bool2;; bool1 = false)
    {
      e(bool1);
      return;
    }
  }
  
  public void onFinishInflate()
  {
    t = ((FrameLayout)findViewById(aen.eh));
    s = ((ParticipantsGalleryView)findViewById(aen.hk));
    s.a(this);
    s.a(this);
    u = ((Space)findViewById(aen.aU));
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    if (TextUtils.isEmpty(paramAccessibilityNodeInfo.getText())) {
      paramAccessibilityNodeInfo.setText(paramAccessibilityNodeInfo.getContentDescription());
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    k = getMeasuredHeight();
    if ((r != 4) && (r == 1) && (f != null) && (!q))
    {
      f.b(this);
      q = true;
    }
    if (n >= 0) {}
    for (paramInt1 = n;; paramInt1 = k - a(getResources()))
    {
      setMeasuredDimension(getMeasuredWidth(), paramInt1);
      return;
      if (!A) {
        break;
      }
    }
    if (d >= 0) {}
    for (paramInt1 = d;; paramInt1 = c)
    {
      paramInt1 = k - paramInt1;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.MessageListItemWrapperView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */