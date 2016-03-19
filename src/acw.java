import android.graphics.Matrix;
import com.android.ex.photo.views.PhotoView;

public final class acw
  implements Runnable
{
  private final PhotoView a;
  private float b;
  private float c;
  private float d;
  private long e;
  private boolean f;
  private boolean g;
  
  public acw(PhotoView paramPhotoView)
  {
    a = paramPhotoView;
  }
  
  public void a()
  {
    f = false;
    g = true;
  }
  
  public void run()
  {
    if (g) {
      return;
    }
    long l2;
    if (c != b)
    {
      l2 = System.currentTimeMillis();
      if (e == -1L) {
        break label218;
      }
    }
    label218:
    for (long l1 = l2 - e;; l1 = 0L)
    {
      float f1 = d;
      float f2 = (float)l1 * f1;
      if ((c >= b) || (c + f2 <= b))
      {
        f1 = f2;
        if (c > b)
        {
          f1 = f2;
          if (c + f2 >= b) {}
        }
      }
      else
      {
        f1 = b - c;
      }
      PhotoView localPhotoView = a;
      c += f1;
      a.postRotate(f1, localPhotoView.getWidth() / 2, localPhotoView.getHeight() / 2);
      localPhotoView.invalidate();
      c = (f1 + c);
      if (c == b) {
        a();
      }
      e = l2;
      if (g) {
        break;
      }
      a.post(this);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     acw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */