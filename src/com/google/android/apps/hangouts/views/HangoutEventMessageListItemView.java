package com.google.android.apps.hangouts.views;

import aal;
import aen;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import bfd;
import com.google.android.apps.hangouts.R.drawable;
import cum;
import czb;
import ezc;
import java.util.List;

public class HangoutEventMessageListItemView
  extends RelativeLayout
  implements cum
{
  List<czb> a;
  private ImageView b;
  private TextView c;
  private TextView d;
  private FixedParticipantsGalleryView e;
  private CharSequence f;
  private long g;
  private bfd h;
  
  public HangoutEventMessageListItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public HangoutEventMessageListItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public long a()
  {
    return g;
  }
  
  public void a(long paramLong)
  {
    g = paramLong;
  }
  
  public void a(CharSequence paramCharSequence, long paramLong, bfd parambfd, List<czb> paramList, int paramInt)
  {
    f = paramCharSequence;
    a(paramLong);
    h = parambfd;
    int i;
    if ((a == null) && (paramList == null)) {
      i = 0;
    }
    for (;;)
    {
      if (i != 0) {
        a = paramList;
      }
      c.setText(f);
      d.setText(aal.b(g, System.currentTimeMillis(), false));
      d.setContentDescription(aal.b(g, System.currentTimeMillis(), true));
      paramCharSequence = h.b();
      boolean bool;
      label116:
      int j;
      label144:
      int k;
      if (a != null)
      {
        bool = a.contains(paramCharSequence);
        if ((bool) && ((a == null) || (a.size() != 1))) {
          break label299;
        }
        j = 1;
        k = R.drawable.bT;
        if (j == 0) {
          break label305;
        }
        paramInt = R.drawable.bH;
      }
      for (;;)
      {
        b.setImageResource(paramInt);
        if (i != 0) {
          e.a(h, a, paramCharSequence);
        }
        return;
        if ((a == null) || (paramList == null) || (a.size() != paramList.size()))
        {
          i = 1;
          break;
        }
        i = 0;
        for (;;)
        {
          if (i >= a.size()) {
            break label326;
          }
          if (!((czb)a.get(i)).a((czb)a.get(i)))
          {
            i = 1;
            break;
          }
          i += 1;
        }
        bool = false;
        break label116;
        label299:
        j = 0;
        break label144;
        label305:
        if (paramInt == 1) {
          paramInt = R.drawable.bG;
        } else {
          paramInt = k;
        }
      }
      label326:
      i = 0;
    }
  }
  
  public View b()
  {
    return this;
  }
  
  public void c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    ezc.a(localStringBuilder, c.getText());
    ezc.a(localStringBuilder, d.getContentDescription());
    setContentDescription(localStringBuilder);
  }
  
  public void onFinishInflate()
  {
    b = ((ImageView)findViewById(aen.dn));
    c = ((TextView)findViewById(aen.gC));
    e = ((FixedParticipantsGalleryView)findViewById(aen.cQ));
    d = ((TextView)findViewById(aen.aQ));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.HangoutEventMessageListItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */