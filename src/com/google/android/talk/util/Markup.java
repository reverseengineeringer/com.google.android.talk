package com.google.android.talk.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.LeadingMarginSpan.LeadingMarginSpan2;

public class Markup
{
  private Context mContext;
  private LeadingMarginSpan mLeadingMarginSpan;
  private int[] mSmileyResources = { Smileys.getSmileyResource(Smileys.HAPPY), Smileys.getSmileyResource(Smileys.HAPPY), Smileys.getSmileyResource(Smileys.SAD), Smileys.getSmileyResource(Smileys.WINKING), Smileys.getSmileyResource(Smileys.WINKING), Smileys.getSmileyResource(Smileys.TONGUE_STICKING_OUT), Smileys.getSmileyResource(Smileys.SURPRISED), Smileys.getSmileyResource(Smileys.SURPRISED), Smileys.getSmileyResource(Smileys.KISSING), Smileys.getSmileyResource(Smileys.YELLING), Smileys.getSmileyResource(Smileys.YELLING), Smileys.getSmileyResource(Smileys.COOL), Smileys.getSmileyResource(Smileys.COOL), Smileys.getSmileyResource(Smileys.MONEY_MOUTH), Smileys.getSmileyResource(Smileys.FOOT_IN_MOUTH), Smileys.getSmileyResource(Smileys.EMBARRASSED), Smileys.getSmileyResource(Smileys.ANGEL), Smileys.getSmileyResource(Smileys.UNDECIDED), Smileys.getSmileyResource(Smileys.CRYING), Smileys.getSmileyResource(Smileys.LIPS_ARE_SEALED), Smileys.getSmileyResource(Smileys.LAUGHING), Smileys.getSmileyResource(Smileys.WTF), Smileys.getSmileyResource(Smileys.WTF), Smileys.getSmileyResource(Smileys.WTF), Smileys.getSmileyResource(Smileys.WTF), 2130837555, 2130837551, 2130837553, 2130837547 };
  private String[] mSmileyText = { ":-)", ":)", ":-(", ";-)", ";)", ":-P", "=-O", ":-O", ":-*", ">:o", ":O", "8-)", "B-)", ":-$", ":-!", ":-[", "O:-)", ":-\\", ":'(", ":-X", ":-D", "o_O", "O_o", "O.o", "o.O", ":-/", "x-(", ":-|", "<3" };
  private IntTrie mSmileys;
  
  public Markup(Context paramContext)
  {
    this(paramContext, 0, 0);
  }
  
  public Markup(Context paramContext, final int paramInt1, final int paramInt2)
  {
    mContext = paramContext;
    mSmileys = new IntTrie(mSmileyText, mSmileyResources);
    mLeadingMarginSpan = new LeadingMarginSpan.LeadingMarginSpan2()
    {
      public void drawLeadingMargin(Canvas paramAnonymousCanvas, Paint paramAnonymousPaint, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, CharSequence paramAnonymousCharSequence, int paramAnonymousInt6, int paramAnonymousInt7, boolean paramAnonymousBoolean, Layout paramAnonymousLayout) {}
      
      public int getLeadingMargin(boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          return paramInt1;
        }
        return 0;
      }
      
      public int getLeadingMarginLineCount()
      {
        return paramInt2;
      }
    };
  }
  
  public final CharSequence applyEmoticons(CharSequence paramCharSequence)
  {
    int i = 0;
    int i2 = paramCharSequence.length();
    CharSequence localCharSequence = null;
    Object localObject1 = paramCharSequence;
    while (i < i2)
    {
      paramCharSequence = mSmileys;
      int j = i + 1;
      paramCharSequence = paramCharSequence.getNode(((CharSequence)localObject1).charAt(i));
      int m = 0;
      int k = -1;
      label50:
      int i1 = m;
      int n = k;
      if (paramCharSequence != null)
      {
        if (mValue != 0)
        {
          m = mValue;
          k = j;
        }
        if (j >= i2)
        {
          n = k;
          i1 = m;
        }
      }
      else
      {
        paramCharSequence = localCharSequence;
        localObject2 = localObject1;
        if (i1 != 0)
        {
          paramCharSequence = localCharSequence;
          localObject2 = localObject1;
          if (localCharSequence == null)
          {
            if (!(localObject1 instanceof SpannableString)) {
              break label196;
            }
            paramCharSequence = (SpannableString)localObject1;
          }
        }
      }
      for (Object localObject2 = localObject1;; localObject2 = paramCharSequence)
      {
        paramCharSequence.setSpan(new ImageSpan(mContext, i1, 0), i, n, 33);
        if (n == -1) {
          break label212;
        }
        i = n;
        localCharSequence = paramCharSequence;
        localObject1 = localObject2;
        break;
        paramCharSequence = paramCharSequence.getNode(((CharSequence)localObject1).charAt(j));
        j += 1;
        break label50;
        label196:
        paramCharSequence = new SpannableString((CharSequence)localObject1);
      }
      label212:
      i += 1;
      localCharSequence = paramCharSequence;
      localObject1 = localObject2;
    }
    if (localCharSequence == null) {
      return (CharSequence)localObject1;
    }
    return localCharSequence;
  }
  
  public final SpannableString markup(CharSequence paramCharSequence)
  {
    if ((paramCharSequence instanceof SpannableString)) {}
    for (paramCharSequence = (SpannableString)paramCharSequence;; paramCharSequence = new SpannableString(paramCharSequence))
    {
      applyEmoticons(paramCharSequence);
      return paramCharSequence;
    }
  }
  
  public static class Smileys
  {
    public static int ANGEL;
    public static int COOL;
    public static int CRYING;
    public static int EMBARRASSED;
    public static int FOOT_IN_MOUTH;
    public static int HAPPY;
    public static int KISSING;
    public static int LAUGHING = 15;
    public static int LIPS_ARE_SEALED;
    public static int MONEY_MOUTH;
    public static int SAD;
    public static int SURPRISED;
    public static int TONGUE_STICKING_OUT;
    public static int UNDECIDED;
    public static int WINKING;
    public static int WTF = 16;
    public static int YELLING;
    private static final int[] sIconIds = { 2130837546, 2130837554, 2130837559, 2130837557, 2130837556, 2130837548, 2130837561, 2130837542, 2130837552, 2130837545, 2130837544, 2130837541, 2130837558, 2130837543, 2130837550, 2130837549, 2130837560 };
    
    static
    {
      HAPPY = 0;
      SAD = 1;
      WINKING = 2;
      TONGUE_STICKING_OUT = 3;
      SURPRISED = 4;
      KISSING = 5;
      YELLING = 6;
      COOL = 7;
      MONEY_MOUTH = 8;
      FOOT_IN_MOUTH = 9;
      EMBARRASSED = 10;
      ANGEL = 11;
      UNDECIDED = 12;
      CRYING = 13;
      LIPS_ARE_SEALED = 14;
    }
    
    public static int getSmileyResource(int paramInt)
    {
      return sIconIds[paramInt];
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.Markup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */