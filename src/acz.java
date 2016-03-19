import com.android.ex.photo.views.PhotoView;

public final class acz
  implements Runnable
{
  public boolean a;
  private final PhotoView b;
  private float c;
  private float d;
  private float e;
  private float f;
  private long g = -1L;
  private boolean h;
  
  public acz(PhotoView paramPhotoView)
  {
    b = paramPhotoView;
  }
  
  public void a()
  {
    a = false;
    h = true;
  }
  
  public boolean a(float paramFloat1, float paramFloat2)
  {
    if (a) {
      return false;
    }
    g = -1L;
    c = paramFloat1;
    d = paramFloat2;
    paramFloat1 = (float)Math.atan2(d, c);
    e = ((float)(Math.cos(paramFloat1) * 1000.0D));
    f = ((float)(Math.sin(paramFloat1) * 1000.0D));
    h = false;
    a = true;
    b.post(this);
    return true;
  }
  
  public void run()
  {
    float f2 = 1000.0F;
    if (h) {
      return;
    }
    long l = System.currentTimeMillis();
    int i;
    if (g != -1L)
    {
      f1 = (float)(l - g) / 1000.0F;
      i = b.a(c * f1, d * f1);
      g = l;
      float f3 = e * f1;
      if (Math.abs(c) <= Math.abs(f3)) {
        break label186;
      }
      c -= f3;
      label98:
      f1 *= f;
      if (Math.abs(d) <= Math.abs(f1)) {
        break label194;
      }
      d -= f1;
      label130:
      if (((c != 0.0F) || (d != 0.0F)) && (i != 0)) {
        break label202;
      }
      a();
      b.h();
    }
    for (;;)
    {
      label164:
      if (!h)
      {
        b.post(this);
        return;
        f1 = 0.0F;
        break;
        label186:
        c = 0.0F;
        break label98;
        label194:
        d = 0.0F;
        break label130;
        label202:
        if (i == 1)
        {
          if (c > 0.0F) {}
          for (f1 = 1000.0F;; f1 = -1000.0F)
          {
            e = f1;
            f = 0.0F;
            d = 0.0F;
            break;
          }
        }
        if (i == 2)
        {
          e = 0.0F;
          if (d <= 0.0F) {
            break label279;
          }
        }
      }
    }
    label279:
    for (float f1 = f2;; f1 = -1000.0F)
    {
      f = f1;
      c = 0.0F;
      break label164;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     acz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */