import android.graphics.Rect;
import android.graphics.RectF;

final class gwa
{
  public Rect a;
  public RectF b;
  
  public gwa(gvz paramgvz, Rect paramRect, int paramInt1, int paramInt2)
  {
    a = paramRect;
    b = new RectF(paramInt1, paramInt2, a.width() + paramInt1, a.height() + paramInt2);
  }
}

/* Location:
 * Qualified Name:     gwa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */