package com.google.android.apps.hangouts.views;

import aal;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import bfd;
import eyd;
import fbm;
import fbn;
import fbo;
import gvj;
import hbs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

public class EasterEggView
  extends FrameLayout
{
  public static final Random a = new Random();
  public static final int[] d = { aal.cl, aal.cn, aal.cm };
  private static final String[] i = { "ponies", "ponystream", "pitchforks" };
  public final TypedArray b;
  public final TypedArray c;
  public Handler e = new Handler();
  public Runnable f;
  public int g;
  public final List<fbo> h = new ArrayList();
  private Runnable j;
  
  public EasterEggView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public EasterEggView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.getResources();
    b = paramContext.obtainTypedArray(aal.cx);
    c = paramContext.obtainTypedArray(aal.cw);
  }
  
  public static String a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0) || (paramString.charAt(0) != '/')) {
      return null;
    }
    String[] arrayOfString = i;
    int m = arrayOfString.length;
    int k = 0;
    while (k < m)
    {
      String str2 = arrayOfString[k];
      String str1 = String.valueOf(str2);
      if (str1.length() != 0) {}
      for (str1 = "/".concat(str1); TextUtils.equals(paramString, str1); str1 = new String("/")) {
        return str2;
      }
      k += 1;
    }
    return null;
  }
  
  public static boolean b(String paramString)
  {
    return !TextUtils.equals(paramString, "ponystream");
  }
  
  public void a()
  {
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext())
    {
      ((fbo)localIterator.next()).a();
      localIterator.remove();
    }
    if (h.size() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      if (j != null)
      {
        e.removeCallbacks(j);
        j = null;
      }
      if (f != null)
      {
        e.removeCallbacks(f);
        f = null;
      }
      return;
    }
  }
  
  public void a(bfd parambfd, TypedArray paramTypedArray, int paramInt)
  {
    if (paramTypedArray == null) {
      return;
    }
    int k = a.nextInt(paramTypedArray.length());
    String str = String.valueOf("//ssl.gstatic.com/chat/babble/ee/");
    paramTypedArray = String.valueOf(paramTypedArray.getString(k));
    if (paramTypedArray.length() != 0) {}
    for (paramTypedArray = str.concat(paramTypedArray);; paramTypedArray = new String(str))
    {
      parambfd = new eyd(paramTypedArray, parambfd.a());
      parambfd.a(false);
      parambfd.c(false);
      parambfd.d(false);
      h.add(new fbo(this, parambfd, paramInt));
      return;
    }
  }
  
  public void a(bfd parambfd, String paramString)
  {
    if (!gvj.a(getContext().getContentResolver(), "babel_easter_eggs", true)) {}
    do
    {
      return;
      if (TextUtils.equals("ponies", paramString))
      {
        if (a.nextBoolean()) {}
        for (int k = aal.ck;; k = aal.cj)
        {
          a(parambfd, b, k);
          return;
        }
      }
      if (TextUtils.equals("ponystream", paramString))
      {
        if (j != null)
        {
          e.removeCallbacks(j);
          j = null;
          return;
        }
        j = new fbm(this, parambfd);
        e.post(j);
        return;
      }
    } while ((!TextUtils.equals("pitchforks", paramString)) || (f != null));
    g = (a.nextInt(20) + 20);
    f = new fbn(this, parambfd);
    e.post(f);
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.EasterEggView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */