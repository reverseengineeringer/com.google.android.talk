import android.content.res.Resources.Theme;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

public final class gh
  extends gg
{
  public gh(Drawable paramDrawable)
  {
    super(paramDrawable);
  }
  
  public void applyTheme(Resources.Theme paramTheme)
  {
    b.applyTheme(paramTheme);
  }
  
  public boolean canApplyTheme()
  {
    return b.canApplyTheme();
  }
  
  public Rect getDirtyBounds()
  {
    return b.getDirtyBounds();
  }
  
  public void getOutline(Outline paramOutline)
  {
    b.getOutline(paramOutline);
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    b.setHotspot(paramFloat1, paramFloat2);
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:
 * Qualified Name:     gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */