package com.google.android.apps.hangouts.conversation.v2;

import aal;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Spinner;
import bgd;
import bjb;
import bjc;
import brt;
import bru;
import brv;
import brw;
import com.google.android.apps.hangouts.hangout.StressMode;
import dlj;
import eot;
import hpu;
import ilh;
import ino;
import iog;
import java.util.Iterator;
import java.util.List;

public class TransportSpinner
  extends Spinner
{
  public int a;
  public brw b;
  public boolean c;
  public boolean d;
  public View e;
  public bjb f;
  private eot g;
  private String h;
  private boolean i;
  private bjc j;
  private List<bjb> k;
  private dlj l;
  
  public TransportSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a()
  {
    i = true;
    a(k);
  }
  
  public void a(bjb parambjb)
  {
    for (;;)
    {
      int n = b.getCount();
      int m = 0;
      if (m < n) {
        if (getItemAtPosition(m) == parambjb) {
          setSelection(m);
        }
      }
      while ((i) || (parambjb == null) || (!k.contains(parambjb)))
      {
        return;
        m += 1;
        break;
      }
      a();
    }
  }
  
  public void a(ilh paramilh)
  {
    b = new brw(this, getContext(), aal.fi);
    g = ((eot)paramilh.a(eot.class));
    setAdapter(b);
    a = ((hpu)paramilh.a(hpu.class)).a();
    j = ((bjc)paramilh.a(bjc.class));
    j.a(new brt(this));
    paramilh = (iog)paramilh.a(ino.class);
    l = new brv(this, getContext(), paramilh, a);
  }
  
  public void a(List<bjb> paramList)
  {
    int m = 8;
    k = paramList;
    if (!g.d()) {
      paramList = null;
    }
    b.clear();
    boolean bool2;
    Object localObject;
    int i1;
    int n;
    label93:
    int i2;
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      if (paramList.size() > 1) {
        m = 0;
      }
      setVisibility(m);
      bjb localbjb;
      int i4;
      if (paramList.size() > 1)
      {
        bool2 = true;
        setEnabled(bool2);
        localObject = paramList.iterator();
        i1 = 0;
        m = 0;
        n = 0;
        if (!((Iterator)localObject).hasNext()) {
          break label241;
        }
        localbjb = (bjb)((Iterator)localObject).next();
        i4 = b;
        i2 = n;
        if (!TextUtils.isEmpty(e)) {
          if (i == null) {
            break label235;
          }
        }
      }
      label235:
      for (i2 = 1;; i2 = 0)
      {
        i2 = n | i2;
        int i3 = m | aal.e(i4);
        boolean bool1 = i1 | aal.h(i4);
        i1 = bool1;
        m = i3;
        n = i2;
        if (h != null) {
          break label93;
        }
        i1 = bool1;
        m = i3;
        n = i2;
        if (!aal.g(i4)) {
          break label93;
        }
        h = localbjb.a();
        i1 = bool1;
        m = i3;
        n = i2;
        break label93;
        bool2 = false;
        break;
      }
      label241:
      l.a(h);
      localObject = b;
      if ((m != 0) && (i1 != 0))
      {
        bool2 = true;
        a = bool2;
        if ((i) || (n == 0)) {
          break label402;
        }
        localObject = paramList.iterator();
        m = 0;
        label298:
        n = m;
        if (!((Iterator)localObject).hasNext()) {
          break label404;
        }
        localbjb = (bjb)((Iterator)localObject).next();
        if (TextUtils.isEmpty(e)) {
          break label385;
        }
        n = 1;
        label335:
        if (i == null) {
          break label390;
        }
        i1 = 1;
        label346:
        if (localbjb != f) {
          break label396;
        }
        i2 = 1;
        label358:
        if ((i2 != 0) || (n == 0) || (i1 != 0)) {
          break label567;
        }
        m += 1;
      }
    }
    label385:
    label390:
    label396:
    label402:
    label404:
    label418:
    label455:
    label466:
    label510:
    label515:
    label521:
    label525:
    label527:
    label567:
    for (;;)
    {
      break label298;
      bool2 = false;
      break;
      n = 0;
      break label335;
      i1 = 0;
      break label346;
      i2 = 0;
      break label358;
      n = 0;
      if (n > 1)
      {
        m = 1;
        paramList = paramList.iterator();
      }
      for (;;)
      {
        if (!paramList.hasNext()) {
          break label527;
        }
        localObject = (bjb)paramList.next();
        if (m != 0)
        {
          if (TextUtils.isEmpty(e)) {
            break label510;
          }
          n = 1;
          if (i == null) {
            break label515;
          }
          i1 = 1;
          if (localObject != f) {
            break label521;
          }
        }
        for (i2 = 1;; i2 = 0)
        {
          if ((i2 == 0) && (n != 0) && (i1 == 0)) {
            break label525;
          }
          b.insert(localObject, 0);
          break label418;
          m = 0;
          break;
          n = 0;
          break label455;
          i1 = 0;
          break label466;
        }
      }
      if (m != 0) {
        b.insert(new bru(this), 0);
      }
      a(f);
      b();
      return;
      setVisibility(8);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (d == paramBoolean) {
      return;
    }
    d = paramBoolean;
    b.notifyDataSetChanged();
  }
  
  public void b()
  {
    Object localObject3 = null;
    Object localObject1;
    int n;
    int m;
    Object localObject2;
    int i1;
    label109:
    Resources localResources;
    String str;
    if (k != null)
    {
      localObject1 = k.iterator();
      n = 0;
      m = 0;
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (bjb)((Iterator)localObject1).next();
        if (!TextUtils.isEmpty(e))
        {
          i1 = 1;
          n = m;
          m = i1;
        }
        for (;;)
        {
          if (m != 0)
          {
            i2 = m;
            i1 = n;
            if (n != 0) {
              break label109;
            }
          }
          i1 = n;
          n = m;
          m = i1;
          break;
          if (!aal.g(b)) {
            break label387;
          }
          m = n;
          n = 1;
        }
      }
      i1 = m;
      int i2 = n;
      localResources = getContext().getResources();
      if ((i1 != 0) && (i2 != 0))
      {
        str = localResources.getString(StressMode.rQ);
        label137:
        if ((k != null) && (!k.isEmpty()) && (getSelectedItemPosition() < b.getCount()))
        {
          localObject2 = (bjb)getSelectedItem();
          label179:
          localObject1 = localObject3;
          if (localObject2 != null)
          {
            if (!TextUtils.isEmpty(e)) {
              localObject1 = localResources.getString(StressMode.rP);
            }
          }
          else
          {
            label209:
            localObject2 = str;
            if (localObject1 != null)
            {
              if (str != null) {
                break label348;
              }
              localObject2 = localObject1;
            }
          }
        }
      }
    }
    for (;;)
    {
      setContentDescription((CharSequence)localObject2);
      return;
      localObject1 = localObject3;
      if (h == null) {
        break label209;
      }
      localObject1 = i;
      if ((localObject1 != null) && (!TextUtils.isEmpty(o)))
      {
        localObject1 = o;
        label276:
        if (!c) {
          break label341;
        }
      }
      label341:
      for (m = StressMode.rO;; m = StressMode.rR)
      {
        localObject1 = localResources.getString(m, new Object[] { localObject1 });
        break;
        if (!TextUtils.isEmpty(d))
        {
          localObject1 = d;
          break label276;
        }
        localObject1 = localResources.getString(StressMode.rM);
        break label276;
      }
      label348:
      localObject2 = localResources.getString(StressMode.rL, new Object[] { localObject1, str });
      continue;
      localObject2 = null;
      break label179;
      str = null;
      break label137;
      label387:
      i1 = m;
      m = n;
      n = i1;
      break;
      localObject2 = null;
    }
  }
  
  public boolean performClick()
  {
    j.c();
    return super.performClick();
  }
  
  public void setSelection(int paramInt)
  {
    Object localObject = getItemAtPosition(paramInt);
    if ((localObject instanceof bjb))
    {
      super.setSelection(paramInt);
      j.a((bjb)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.conversation.v2.TransportSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */