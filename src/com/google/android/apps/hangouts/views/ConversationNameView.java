package com.google.android.apps.hangouts.views;

import aal;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import gw;
import java.util.Locale;

public class ConversationNameView
  extends View
{
  private final Paint a = new Paint();
  private String b = "";
  private String[] c = new String[0];
  private final int d;
  private final int e;
  private boolean f;
  private boolean g;
  
  public ConversationNameView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ConversationNameView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { aal.cM, aal.cL, aal.cN, aal.cJ });
    d = paramContext.getDimensionPixelSize(0, 36);
    e = paramContext.getDimensionPixelSize(1, 28);
    a.setTextSize(d);
    a.setColor(paramContext.getColor(2, -16777216));
    a.setFlags(a.getFlags() | 0x1);
    f = paramContext.getBoolean(3, false);
    paramContext.recycle();
  }
  
  private static int a(Paint paramPaint, String[] paramArrayOfString, int paramInt)
  {
    float f1 = paramPaint.measureText(", ");
    int j = 0;
    int i = 0;
    while (j < paramArrayOfString.length)
    {
      int k = (int)(i + paramPaint.measureText(paramArrayOfString[j]));
      i = k;
      if (j < paramArrayOfString.length - 1) {
        i = (int)(k + f1);
      }
      if (i > paramInt) {
        return 0;
      }
      j += 1;
    }
    return i;
  }
  
  public static String b(String paramString)
  {
    String str = String.valueOf("T");
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      return str.concat(paramString);
    }
    return new String(str);
  }
  
  public void a(int paramInt)
  {
    boolean bool = false;
    if (paramInt > 0)
    {
      Object localObject = Typeface.defaultFromStyle(paramInt);
      a.setTypeface((Typeface)localObject);
      int i;
      if (localObject != null)
      {
        i = ((Typeface)localObject).getStyle();
        paramInt = (i ^ 0xFFFFFFFF) & paramInt;
        localObject = a;
        if ((paramInt & 0x1) != 0) {
          bool = true;
        }
        ((Paint)localObject).setFakeBoldText(bool);
        localObject = a;
        if ((paramInt & 0x2) == 0) {
          break label89;
        }
      }
      label89:
      for (float f1 = -0.25F;; f1 = 0.0F)
      {
        ((Paint)localObject).setTextSkewX(f1);
        return;
        i = 0;
        break;
      }
    }
    a.setFakeBoldText(false);
    a.setTextSkewX(0.0F);
    a.setTypeface(null);
  }
  
  public void a(String paramString)
  {
    if ((!paramString.startsWith("L")) && (!paramString.startsWith("T"))) {
      throw new IllegalArgumentException("the parameter to setText must be the output of ConversationNameView.title() or ConversationNameView.nameList()");
    }
    if (TextUtils.equals(b, paramString)) {
      return;
    }
    b = paramString;
    String str = paramString.substring(1);
    setContentDescription(str);
    if (paramString.startsWith("T")) {}
    for (c = new String[] { str };; c = str.split(", "))
    {
      requestLayout();
      return;
    }
  }
  
  public void b(int paramInt)
  {
    if (a.getColor() != paramInt)
    {
      a.setColor(paramInt);
      invalidate();
    }
  }
  
  public int getBaseline()
  {
    float f1 = getMeasuredHeight();
    float f2 = a.getTextSize();
    float f3 = a.descent();
    return (int)(f1 / 2.0F + (f2 - f3) / 2.0F);
  }
  
  public CharSequence getContentDescription()
  {
    return aal.a(c, 3);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    boolean bool = gw.a().a(b);
    int m = getMeasuredHeight();
    int i2 = getMeasuredWidth();
    float f1;
    int j;
    int i;
    if (g)
    {
      f1 = e;
      a.setTextSize(f1);
      j = 0;
      i = j;
      if (!f) {
        break label769;
      }
      i = j;
      if (c.length <= 1) {
        break label769;
      }
      if (a(a, c, i2) != 0) {
        break label457;
      }
      j = 1;
      label91:
      i = j;
      if (j == 0) {
        break label769;
      }
      a.setTextSize(e);
      i = j;
      if (a(a, c, i2) == 0) {
        break label769;
      }
    }
    label144:
    label211:
    label222:
    label247:
    label275:
    label363:
    label377:
    label421:
    label457:
    label470:
    label483:
    label489:
    label496:
    label592:
    label597:
    label698:
    label713:
    label761:
    label766:
    label769:
    for (int k = 0;; k = i)
    {
      String str1;
      float f5;
      float f8;
      float f2;
      float f3;
      int n;
      String str2;
      float f9;
      float f4;
      Paint localPaint;
      if (bool)
      {
        str1 = " ,";
        f1 = a.getTextSize() - a.descent();
        float f7 = a.measureText(" and 99 others");
        f5 = a.measureText(str1);
        f8 = a.getFontSpacing();
        f2 = 0.0F;
        if (k == 0) {
          break label470;
        }
        f1 = (m - f1 - f8) / 2.0F + f1;
        m = 1;
        f3 = f1;
        i = 0;
        f1 = f2;
        if (i >= c.length) {
          break label698;
        }
        if (i != c.length - 1) {
          break label483;
        }
        n = 1;
        str2 = c[i];
        f9 = a.measureText(str2);
        if (n == 0) {
          break label489;
        }
        f4 = 0.0F;
        float f6 = i2;
        f2 = f6;
        if (n == 0) {
          if (k != 0)
          {
            f2 = f6;
            if (m != 0) {}
          }
          else
          {
            f2 = f6 - f7;
          }
        }
        if (f1 + f9 + f4 <= f2) {
          break label713;
        }
        if (f1 != 0.0F) {
          break label597;
        }
        f4 = f2;
        if (i < c.length) {
          f4 = f2 - f5;
        }
        localPaint = a;
        if (localPaint.measureText(str2) > f4) {
          break label496;
        }
        if (!bool) {
          break label592;
        }
        f2 = i2 - (f9 + f1);
        paramCanvas.drawText(str2, f2, f3, a);
        f1 = a.measureText(str2) + f1;
        if (n != 0) {
          break label766;
        }
        if (!bool) {
          break label761;
        }
        f2 = i2 - (f1 + f5);
        paramCanvas.drawText(str1, f2, f3, a);
        f1 += f5;
      }
      for (;;)
      {
        i += 1;
        break label222;
        f1 = d;
        break;
        j = 0;
        break label91;
        str1 = ", ";
        break label144;
        f1 = m / 2 + f1 / 2.0F;
        break label211;
        n = 0;
        break label247;
        f4 = f5;
        break label275;
        f2 = (int)localPaint.measureText("…");
        j = str2.length();
        int i1;
        do
        {
          i1 = j;
          if (j <= 0) {
            break;
          }
          i1 = j - Character.charCount(Character.codePointBefore(str2, j));
          j = i1;
        } while (localPaint.measureText(str2, 0, i1) > f4 - f2);
        str2 = String.format(Locale.getDefault(), "%s%s", new Object[] { str2.substring(0, i1), "…" });
        break label363;
        f2 = f1;
        break label377;
        if ((m != 0) && (k != 0))
        {
          m = 0;
          f1 = 0.0F;
          f3 += f8;
          i -= 1;
        }
        else
        {
          i = c.length - i;
          str1 = getResources().getQuantityString(aal.hl, i, new Object[] { Integer.valueOf(i) });
          if (bool)
          {
            f2 = a.measureText(str1);
            paramCanvas.drawText(str1, i2 - (f2 + f1), f3, a);
            return;
          }
          paramCanvas.drawText(str1, f1, f3, a);
          return;
          a.getColor();
          if (bool) {}
          for (f2 = i2 - (f1 + f9);; f2 = f1)
          {
            paramCanvas.drawText(str2, f2, f3, a);
            f1 += f9;
            break;
          }
          f2 = f1;
          break label421;
        }
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    paramInt2 = getMeasuredWidth();
    if (View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)
    {
      paramInt1 = a(a, c, View.MeasureSpec.getSize(paramInt1));
      if (paramInt1 <= 0) {}
    }
    for (;;)
    {
      if (!f) {
        setMeasuredDimension(paramInt1, (int)Math.ceil(a.getFontSpacing()));
      }
      return;
      paramInt1 = paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.ConversationNameView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */