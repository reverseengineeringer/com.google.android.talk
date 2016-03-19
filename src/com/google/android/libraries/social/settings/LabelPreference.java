package com.google.android.libraries.social.settings;

import aal;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.apps.common.proguard.UsedByReflection;
import fkr;
import ijc;
import ikc;

@UsedByReflection
public class LabelPreference
  extends ijc
{
  private CharSequence a;
  private boolean c;
  private boolean d;
  private int e;
  private int f = -1;
  
  @UsedByReflection
  public LabelPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d(aal.uT);
    if (paramAttributeSet != null)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ikc.B);
      f = paramContext.getDimensionPixelSize(ikc.D, -1);
      e = paramContext.getInt(ikc.C, 1);
      paramContext.recycle();
    }
  }
  
  protected View a(ViewGroup paramViewGroup)
  {
    paramViewGroup = super.a(paramViewGroup);
    ((TextView)paramViewGroup.findViewById(fkr.m)).setAutoLinkMask(e);
    return paramViewGroup;
  }
  
  protected void a(View paramView)
  {
    super.a(paramView);
    if (f >= 0) {
      paramView.setMinimumHeight(f);
    }
    TextView localTextView = (TextView)paramView.findViewById(fkr.i);
    View localView = paramView.findViewById(fkr.l);
    if (localTextView != null)
    {
      if ((TextUtils.isEmpty(a)) || (c)) {
        localTextView.setVisibility(8);
      }
    }
    else
    {
      paramView = (TextView)paramView.findViewById(fkr.m);
      if (d) {
        paramView.setMovementMethod(LinkMovementMethod.getInstance());
      }
      if (localView != null) {
        if (!c) {
          break label131;
        }
      }
    }
    label131:
    for (int i = 0;; i = 8)
    {
      localView.setVisibility(i);
      return;
      localTextView.setVisibility(0);
      localTextView.setText(a);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.settings.LabelPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */