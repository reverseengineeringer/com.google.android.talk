import android.graphics.Canvas;
import android.graphics.drawable.Drawable;

final class vk
  extends sd
{
  private boolean a = true;
  
  public vk(Drawable paramDrawable)
  {
    super(paramDrawable);
  }
  
  void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (a) {
      super.draw(paramCanvas);
    }
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    if (a) {
      super.setHotspot(paramFloat1, paramFloat2);
    }
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (a) {
      super.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    if (a) {
      return super.setState(paramArrayOfInt);
    }
    return false;
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (a) {
      return super.setVisible(paramBoolean1, paramBoolean2);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     vk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */