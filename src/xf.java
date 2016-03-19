import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.RatingBar;

public final class xf
  extends RatingBar
{
  private xd a;
  private vv b;
  
  public xf(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aen.ab);
  }
  
  private xf(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b = vv.a(paramContext);
    a = new xd(this, b);
    a.a(paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    try
    {
      super.onMeasure(paramInt1, paramInt2);
      Bitmap localBitmap = a.a();
      if (localBitmap != null) {
        setMeasuredDimension(ks.a(localBitmap.getWidth() * getNumStars(), paramInt1, 0), getMeasuredHeight());
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     xf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */