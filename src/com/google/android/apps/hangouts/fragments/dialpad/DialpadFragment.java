package com.google.android.apps.hangouts.fragments.dialpad;

import aal;
import aen;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import av;
import bwr;
import cdv;
import cdw;
import cdz;
import com.google.android.apps.hangouts.hangout.StressMode;
import ezc;
import ilh;

public class DialpadFragment
  extends av
  implements cdz
{
  private static final int[][] c;
  private static final SparseArray<Integer> d;
  private static final SparseIntArray e;
  private cdw a;
  private cdv b;
  
  static
  {
    Object localObject = { aen.hm, StressMode.aS, StressMode.aR };
    int i = aen.eC;
    int j = StressMode.aU;
    int k = StressMode.aT;
    int[] arrayOfInt1 = { aen.gZ, StressMode.aW, StressMode.aV };
    int m = aen.gI;
    int n = StressMode.aY;
    int i1 = StressMode.aX;
    int i2 = aen.cp;
    int i3 = StressMode.ba;
    int i4 = StressMode.aZ;
    int[] arrayOfInt2 = { aen.cf, StressMode.bc, StressMode.bb };
    int i5 = aen.gh;
    int i6 = StressMode.be;
    int i7 = StressMode.bd;
    int[] arrayOfInt3 = { aen.gc, StressMode.bg, StressMode.bf };
    int[] arrayOfInt4 = { aen.bN, StressMode.bi, StressMode.bh };
    int[] arrayOfInt5 = { aen.et, StressMode.bk, StressMode.bj };
    int[] arrayOfInt6 = { aen.gp, StressMode.by, StressMode.bx };
    int i8 = aen.eY;
    int i9 = StressMode.bu;
    int i10 = StressMode.bt;
    c = new int[][] { localObject, { i, j, k }, arrayOfInt1, { m, n, i1 }, { i2, i3, i4 }, arrayOfInt2, { i5, i6, i7 }, arrayOfInt3, arrayOfInt4, arrayOfInt5, arrayOfInt6, { i8, i9, i10 } };
    localObject = new SparseArray();
    d = (SparseArray)localObject;
    ((SparseArray)localObject).put(aen.eC, Integer.valueOf(8));
    d.put(aen.gZ, Integer.valueOf(9));
    d.put(aen.gI, Integer.valueOf(10));
    d.put(aen.cp, Integer.valueOf(11));
    d.put(aen.cf, Integer.valueOf(12));
    d.put(aen.gh, Integer.valueOf(13));
    d.put(aen.gc, Integer.valueOf(14));
    d.put(aen.bN, Integer.valueOf(15));
    d.put(aen.et, Integer.valueOf(16));
    d.put(aen.hm, Integer.valueOf(7));
    d.put(aen.eY, Integer.valueOf(18));
    d.put(aen.gp, Integer.valueOf(17));
    localObject = new SparseIntArray();
    e = (SparseIntArray)localObject;
    ((SparseIntArray)localObject).put(8, 1);
    e.put(9, 2);
    e.put(10, 3);
    e.put(11, 4);
    e.put(12, 5);
    e.put(13, 6);
    e.put(14, 7);
    e.put(15, 8);
    e.put(16, 9);
    e.put(7, 0);
    e.put(18, 11);
    e.put(17, 10);
  }
  
  private static int a(int paramInt)
  {
    return aal.a((Integer)d.get(paramInt), -1);
  }
  
  public void a(View paramView)
  {
    int i = a(paramView.getId());
    if (i != -1)
    {
      a.a(i);
      b.c();
    }
  }
  
  public void a(View paramView, boolean paramBoolean)
  {
    int i = a(paramView.getId());
    if (i != -1)
    {
      a.a(i, paramBoolean);
      if (paramBoolean)
      {
        b.a(e.get(i));
        b.d();
      }
    }
    else
    {
      return;
    }
    b.c();
  }
  
  public void a(cdw paramcdw)
  {
    a = paramcdw;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = new cdv(getActivity());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(aal.fB, paramViewGroup, false);
    paramViewGroup = getResources();
    int i = 0;
    while (i < c.length)
    {
      paramBundle = (DialpadKeyButton)paramLayoutInflater.findViewById(c[i][0]);
      TextView localTextView1 = (TextView)paramBundle.findViewById(aen.bG);
      TextView localTextView2 = (TextView)paramBundle.findViewById(aen.bF);
      ezc.a(paramBundle, true);
      paramBundle.a(this);
      String str = paramViewGroup.getString(c[i][1]);
      localTextView1.setText(str);
      paramBundle.setContentDescription(str);
      localTextView2.setText(paramViewGroup.getString(c[i][2]));
      if (c[i][0] == aen.hm)
      {
        paramBundle.a(paramViewGroup.getString(StressMode.br));
        localTextView2.setTextSize(0, paramViewGroup.getDimension(aal.dP));
      }
      if ((c[i][0] == aen.gp) || (c[i][0] == aen.eY))
      {
        localTextView1.setTextColor(getResources().getColor(aal.cW));
        localTextView1.setTextSize(0, getResources().getDimension(aal.dQ));
        localTextView1.setTypeface(Typeface.create(null, 0));
        localTextView1.setPadding(localTextView1.getPaddingLeft(), paramViewGroup.getDimensionPixelOffset(aal.dR), localTextView1.getPaddingRight(), localTextView1.getPaddingBottom());
      }
      i += 1;
    }
    if ((bwr)ilh.b(getActivity(), bwr.class) != null) {
      paramLayoutInflater.setPadding(0, 0, 0, getResources().getDimensionPixelSize(aal.er));
    }
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    b.c();
    b.a();
  }
  
  public void onHiddenChanged(boolean paramBoolean)
  {
    super.onHiddenChanged(paramBoolean);
    if (paramBoolean) {
      b.c();
    }
  }
  
  public void onPause()
  {
    super.onPause();
    b.c();
  }
  
  public void onResume()
  {
    super.onResume();
    b.b();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.dialpad.DialpadFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */