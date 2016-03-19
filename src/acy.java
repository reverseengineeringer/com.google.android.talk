import com.android.ex.photo.views.PhotoView;

public final class acy
  implements Runnable
{
  private final PhotoView a;
  private float b;
  private float c;
  private long d = -1L;
  private boolean e;
  private boolean f;
  
  public acy(PhotoView paramPhotoView)
  {
    a = paramPhotoView;
  }
  
  public void a()
  {
    e = false;
    f = true;
  }
  
  public boolean a(float paramFloat1, float paramFloat2)
  {
    if (e) {
      return false;
    }
    d = -1L;
    b = paramFloat1;
    c = paramFloat2;
    f = false;
    e = true;
    a.postDelayed(this, 250L);
    return true;
  }
  
  public void run()
  {
    if (f) {
      return;
    }
    long l = System.currentTimeMillis();
    if (d != -1L) {}
    for (float f1 = (float)(l - d);; f1 = 0.0F)
    {
      if (d == -1L) {
        d = l;
      }
      if (f1 < 100.0F) {
        break label145;
      }
      f2 = b;
      f1 = c;
      f3 = f2;
      f2 = f1;
      label71:
      a.a(f3, f2);
      b -= f3;
      c -= f2;
      if ((b == 0.0F) && (c == 0.0F)) {
        a();
      }
      if (f) {
        break;
      }
      a.post(this);
      return;
    }
    label145:
    float f2 = b / (100.0F - f1) * 10.0F;
    float f3 = c / (100.0F - f1) * 10.0F;
    if ((Math.abs(f2) > Math.abs(b)) || (Float.isNaN(f2))) {}
    for (f1 = b;; f1 = f2)
    {
      f2 = f1;
      if (Math.abs(f3) > Math.abs(c)) {
        break;
      }
      f2 = f1;
      if (Float.isNaN(f3)) {
        break;
      }
      f2 = f3;
      f3 = f1;
      break label71;
    }
  }
}

/* Location:
 * Qualified Name:     acy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */