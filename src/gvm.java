import android.os.Build.VERSION;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;

public final class gvm
  extends LinearLayout
  implements gvn
{
  private static final gvp a;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17) {}
    for (a = new gvq();; a = new gvp())
    {
      a.a();
      return;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    switch (i)
    {
    default: 
      i = View.MeasureSpec.getMode(paramInt2);
      switch (i)
      {
      }
      break;
    }
    for (;;)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
      paramInt1 = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(a.a(this)), View.MeasureSpec.getSize(paramInt1)), i);
      break;
      paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(a.b(this)), View.MeasureSpec.getSize(paramInt2)), i);
    }
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void setPaddingRelative(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
}

/* Location:
 * Qualified Name:     gvm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */