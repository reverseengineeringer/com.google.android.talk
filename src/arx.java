import android.graphics.Bitmap;
import java.io.InputStream;

public final class arx
  implements ajb<InputStream, Bitmap>
{
  private final arm a;
  private final amg b;
  
  public arx(arm paramarm, amg paramamg)
  {
    a = paramarm;
    b = paramamg;
  }
  
  private alr<Bitmap> a(InputStream paramInputStream, int paramInt1, int paramInt2, aja paramaja)
  {
    if ((paramInputStream instanceof arv)) {
      paramInputStream = (arv)paramInputStream;
    }
    for (i = 0;; i = 1)
    {
      localavl = avl.a(paramInputStream);
      avo localavo = new avo(localavl);
      ary localary = new ary(paramInputStream, localavl);
      try
      {
        paramaja = a.a(localavo, paramInt1, paramInt2, paramaja, localary);
        return paramaja;
      }
      finally
      {
        localavl.b();
        if (i == 0) {
          break;
        }
        paramInputStream.b();
      }
      paramInputStream = new arv(paramInputStream, b);
    }
  }
}

/* Location:
 * Qualified Name:     arx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */