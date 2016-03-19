package com.google.android.apps.hangouts.hangout;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;
import cit;

public class ParticipantTrayView$HorizontalScrollNotifier
  extends HorizontalScrollView
{
  cit a;
  
  public ParticipantTrayView$HorizontalScrollNotifier(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  void a(cit paramcit)
  {
    a = paramcit;
  }
  
  public void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (a != null) {
      a.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.ParticipantTrayView.HorizontalScrollNotifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */