package com.google.android.apps.hangouts.views;

import android.content.Context;
import android.util.AttributeSet;
import av;
import bg;
import bz;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.fragments.CallContactPickerFragment;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import fcl;
import fcn;
import fco;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MainViewPager
  extends fcl
{
  public static final fcn d = new fcn(ConversationListFragment.class, "conversations", StressMode.rD, R.drawable.aJ, 1546);
  public static final fcn e = new fcn(CallContactPickerFragment.class, "phone_calls", StressMode.rC, R.drawable.aM, 1547);
  private fco f;
  private int g = -1;
  private boolean h;
  
  public MainViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void a(bg parambg, List<av> paramList1, List<av> paramList2)
  {
    bz localbz = parambg.a();
    paramList1 = paramList1.iterator();
    for (;;)
    {
      if (!paramList1.hasNext()) {
        break label177;
      }
      av localav1 = (av)paramList1.next();
      if (((localav1 instanceof ConversationListFragment)) || ((localav1 instanceof CallContactPickerFragment))) {}
      for (int i = 1;; i = 0)
      {
        if (i == 0) {
          break label80;
        }
        if (!localav1.isDetached()) {
          break label82;
        }
        localbz.a(localav1);
        break;
      }
      label80:
      continue;
      label82:
      if (!f.a(localav1.getClass()))
      {
        localbz.a(localav1);
      }
      else
      {
        Iterator localIterator = paramList2.iterator();
        if (localIterator.hasNext())
        {
          av localav2 = (av)localIterator.next();
          if ((localav2 == null) || (!localav1.getClass().equals(localav2.getClass())) || (localav1 == localav2)) {
            break;
          }
          localbz.a(localav1);
        }
      }
    }
    label177:
    localbz.c();
    parambg.b();
  }
  
  public boolean a(int paramInt, bg parambg, boolean paramBoolean)
  {
    if ((g == paramInt) && (h == paramBoolean)) {
      return false;
    }
    ArrayList localArrayList1 = new ArrayList(parambg.d());
    ArrayList localArrayList2 = new ArrayList(2);
    if (paramInt != -1)
    {
      localArrayList2.add(d);
      if (paramBoolean) {
        localArrayList2.add(e);
      }
    }
    f = new fco(parambg, getContext(), paramInt, localArrayList2);
    a(f);
    a(parambg, localArrayList1, new ArrayList(parambg.d()));
    g = paramInt;
    h = paramBoolean;
    return true;
  }
  
  public boolean a(fcn paramfcn)
  {
    if (f != null)
    {
      int i = f.a(paramfcn);
      if (i >= 0)
      {
        b(i);
        return true;
      }
    }
    return false;
  }
  
  public boolean a(String paramString)
  {
    if ((paramString != null) && (f != null))
    {
      int i = f.a(paramString);
      if (i >= 0)
      {
        b(i);
        return true;
      }
    }
    return false;
  }
  
  public fco h()
  {
    return f;
  }
  
  public fcn i()
  {
    if (f != null)
    {
      int i = c();
      int j = f.b();
      if ((i >= 0) && (i < j)) {
        return f.d(i);
      }
    }
    return null;
  }
  
  public boolean j()
  {
    return f != null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.MainViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */