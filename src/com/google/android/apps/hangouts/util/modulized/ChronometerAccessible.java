package com.google.android.apps.hangouts.util.modulized;

import aal;
import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.Chronometer;
import java.util.concurrent.TimeUnit;

public class ChronometerAccessible
  extends Chronometer
{
  public ChronometerAccessible(Context paramContext)
  {
    super(paramContext);
  }
  
  public ChronometerAccessible(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ChronometerAccessible(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public ChronometerAccessible(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public CharSequence getContentDescription()
  {
    long l = SystemClock.elapsedRealtime() - getBase();
    int i = (int)TimeUnit.MILLISECONDS.toHours(l);
    int j = (int)(TimeUnit.MILLISECONDS.toMinutes(l) - TimeUnit.HOURS.toMinutes(i));
    int k = (int)(TimeUnit.MILLISECONDS.toSeconds(l) - TimeUnit.MINUTES.toSeconds(j) - TimeUnit.HOURS.toSeconds(i));
    String str1;
    String str2;
    if (i == 0)
    {
      str1 = "";
      if (j != 0) {
        break label148;
      }
      str2 = "";
      label83:
      if (k != 0) {
        break label175;
      }
    }
    label148:
    label175:
    for (String str3 = "";; str3 = getResources().getQuantityString(aal.rx, k, new Object[] { Integer.valueOf(k) }))
    {
      return getResources().getString(aal.rN, new Object[] { str1, str2, str3 });
      str1 = getResources().getQuantityString(aal.rJ, i, new Object[] { Integer.valueOf(i) });
      break;
      str2 = getResources().getQuantityString(aal.rv, j, new Object[] { Integer.valueOf(j) });
      break label83;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.util.modulized.ChronometerAccessible
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */