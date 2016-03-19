import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.drawable.PictureDrawable;

public final class eqi
  extends PictureDrawable
{
  private final float a;
  
  public eqi(Picture paramPicture, float paramFloat)
  {
    super(paramPicture);
    a = paramFloat;
  }
  
  public void draw(Canvas paramCanvas)
  {
    paramCanvas.save();
    paramCanvas.scale(a, a);
    paramCanvas.drawPicture(getPicture());
    paramCanvas.restore();
  }
  
  public int getIntrinsicHeight()
  {
    return (int)(super.getIntrinsicHeight() * a);
  }
  
  public int getIntrinsicWidth()
  {
    return (int)(super.getIntrinsicWidth() * a);
  }
}

/* Location:
 * Qualified Name:     eqi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */