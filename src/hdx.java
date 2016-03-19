import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;

final class hdx
  implements SurfaceHolder
{
  private final Surface a;
  
  hdx(Surface paramSurface)
  {
    a = paramSurface;
  }
  
  public void addCallback(SurfaceHolder.Callback paramCallback) {}
  
  public Surface getSurface()
  {
    return a;
  }
  
  public Rect getSurfaceFrame()
  {
    return null;
  }
  
  public boolean isCreating()
  {
    return false;
  }
  
  public Canvas lockCanvas()
  {
    return null;
  }
  
  public Canvas lockCanvas(Rect paramRect)
  {
    return null;
  }
  
  public void removeCallback(SurfaceHolder.Callback paramCallback) {}
  
  public void setFixedSize(int paramInt1, int paramInt2) {}
  
  public void setFormat(int paramInt) {}
  
  public void setKeepScreenOn(boolean paramBoolean) {}
  
  public void setSizeFromLayout() {}
  
  public void setType(int paramInt) {}
  
  public void unlockCanvasAndPost(Canvas paramCanvas) {}
}

/* Location:
 * Qualified Name:     hdx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */