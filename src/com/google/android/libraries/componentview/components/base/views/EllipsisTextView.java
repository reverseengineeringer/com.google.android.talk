package com.google.android.libraries.componentview.components.base.views;

import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.text.style.RelativeSizeSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import java.text.BreakIterator;
import java.util.HashSet;
import java.util.Set;
import ksf;
import kxi;

public class EllipsisTextView
  extends TextView
{
  private static final Set<Character> a;
  private SpannableStringBuilder b;
  private SpannableStringBuilder c;
  private Spannable d;
  private int e;
  private boolean f;
  
  static
  {
    Object[] arrayOfObject = kxi.b(new Object[] { Character.valueOf('…'), Character.valueOf('.'), Character.valueOf('·'), Character.valueOf('›') }, 4);
    a = new HashSet(ksf.b(arrayOfObject, arrayOfObject.length));
  }
  
  private static SpannableStringBuilder a(CharSequence paramCharSequence)
  {
    paramCharSequence = new SpannableStringBuilder(paramCharSequence);
    int i = paramCharSequence.length();
    paramCharSequence.append("…");
    if (i > 0)
    {
      Object[] arrayOfObject = paramCharSequence.getSpans(i - 1, i, Object.class);
      if ((arrayOfObject != null) && (arrayOfObject.length > 0))
      {
        int j = arrayOfObject.length;
        i = 0;
        while (i < j)
        {
          Object localObject = arrayOfObject[i];
          if ((!(localObject instanceof SuperscriptSpan)) && (!(localObject instanceof SubscriptSpan)) && (!(localObject instanceof RelativeSizeSpan))) {
            paramCharSequence.setSpan(localObject, paramCharSequence.getSpanStart(localObject), paramCharSequence.length(), paramCharSequence.getSpanFlags(localObject));
          }
          i += 1;
        }
      }
    }
    return paramCharSequence;
  }
  
  private void a(float paramFloat)
  {
    float f1 = getLayout().getWidth();
    float f2 = getPaint().measureText("…");
    int i = e - 1;
    int m = Math.min(getLayout().getLineStart(i), b.length());
    int k = Math.min(getLayout().getLineVisibleEnd(i), b.length());
    i = m;
    int j;
    for (;;)
    {
      j = i;
      if (i >= k) {
        break;
      }
      j = (k + i + 1) / 2;
      if (getPaint().measureText(getText(), m, j) <= f1 * 0.95F - paramFloat - f2) {
        i = j;
      } else {
        k = j - 1;
      }
    }
    while ((j > 0) && ((Character.isWhitespace(getText().charAt(j - 1))) || (a.contains(Character.valueOf(getText().charAt(j - 1)))))) {
      j -= 1;
    }
    BreakIterator localBreakIterator = BreakIterator.getCharacterInstance();
    localBreakIterator.setText(getText().toString());
    i = j;
    if (!localBreakIterator.isBoundary(j))
    {
      j = localBreakIterator.preceding(j);
      i = j;
      if (j == -1) {
        i = 0;
      }
    }
    setText(new SpannableStringBuilder(getText().subSequence(0, i)), TextView.BufferType.SPANNABLE);
    setText(a(getText()), TextView.BufferType.SPANNABLE);
  }
  
  private boolean a()
  {
    return !(getText() instanceof Spannable);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Object localObject = null;
    if (a()) {
      if (f)
      {
        super.setEllipsize((TextUtils.TruncateAt)localObject);
        super.onMeasure(paramInt1, paramInt2);
      }
    }
    do
    {
      return;
      localObject = TextUtils.TruncateAt.END;
      break;
      super.setEllipsize(null);
      setText(b);
      if (c.length() > 0) {
        append(c);
      }
      super.onMeasure(paramInt1, paramInt2);
    } while ((getLayout().getLineCount() <= e) || (getLayout().getWidth() == 0));
    if (f)
    {
      paramInt1 = getLayout().getLineVisibleEnd(e - 1);
      setText(new SpannableStringBuilder(getText().subSequence(0, paramInt1)), TextView.BufferType.SPANNABLE);
      return;
    }
    float f2 = getPaint().measureText(c, 0, c.length());
    float f1 = 0.0F;
    if (d != null) {
      f1 = getPaint().measureText(d, 0, d.length());
    }
    a(f1 + f2);
    if (d != null)
    {
      localObject = new SpannableStringBuilder(getText());
      ((SpannableStringBuilder)localObject).append(d);
      setText((CharSequence)localObject, TextView.BufferType.SPANNABLE);
    }
    if (c.length() != 0)
    {
      localObject = new SpannableStringBuilder(getText());
      ((SpannableStringBuilder)localObject).append(c);
      setText((CharSequence)localObject, TextView.BufferType.SPANNABLE);
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setEllipsize(TextUtils.TruncateAt paramTruncateAt) {}
  
  public void setMaxLines(int paramInt)
  {
    e = paramInt;
    if (a())
    {
      super.setMaxLines(paramInt);
      return;
    }
    super.setMaxLines(Integer.MAX_VALUE);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.views.EllipsisTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */