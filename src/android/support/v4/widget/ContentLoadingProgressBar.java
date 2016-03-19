package android.support.v4.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import oe;
import of;

public class ContentLoadingProgressBar
  extends ProgressBar
{
  public long a = -1L;
  public boolean b = false;
  public boolean c = false;
  public boolean d = false;
  private final Runnable e = new oe(this);
  private final Runnable f = new of(this);
  
  public ContentLoadingProgressBar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ContentLoadingProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0);
  }
  
  private void b()
  {
    removeCallbacks(e);
    removeCallbacks(f);
  }
  
  public void a()
  {
    a = -1L;
    d = false;
    removeCallbacks(e);
    if (!c)
    {
      postDelayed(f, 500L);
      c = true;
    }
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    b();
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    b();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ContentLoadingProgressBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */