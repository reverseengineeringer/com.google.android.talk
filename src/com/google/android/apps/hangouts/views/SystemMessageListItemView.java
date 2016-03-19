package com.google.android.apps.hangouts.views;

import aal;
import aen;
import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cum;

public class SystemMessageListItemView
  extends RelativeLayout
  implements cum
{
  private static boolean a = false;
  private static int b;
  private static int c;
  private ImageView d;
  private TextView e;
  private CharSequence f;
  private long g;
  
  public SystemMessageListItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SystemMessageListItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (!a)
    {
      paramContext = paramContext.getApplicationContext().getResources();
      b = paramContext.getColor(aal.dz);
      c = paramContext.getColor(aal.dy);
      a = true;
    }
  }
  
  private void d()
  {
    e.setText(Html.fromHtml(f.toString()));
  }
  
  public long a()
  {
    return g;
  }
  
  public void a(int paramInt)
  {
    d.setImageResource(paramInt);
  }
  
  public void a(long paramLong)
  {
    b(paramLong);
    d();
  }
  
  public void a(CharSequence paramCharSequence)
  {
    f = paramCharSequence;
    d();
  }
  
  public void a(boolean paramBoolean)
  {
    ImageView localImageView = d;
    if (paramBoolean) {}
    for (int i = c;; i = b)
    {
      localImageView.setColorFilter(i);
      return;
    }
  }
  
  public View b()
  {
    return this;
  }
  
  public void b(long paramLong)
  {
    g = paramLong;
  }
  
  public void c()
  {
    setContentDescription(e.getText());
  }
  
  public void onFinishInflate()
  {
    e = ((TextView)findViewById(aen.gC));
    d = ((ImageView)findViewById(aen.dn));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.SystemMessageListItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */