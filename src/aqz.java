import android.content.Context;
import android.graphics.Bitmap;

public abstract class aqz
  implements ajd<Bitmap>
{
  private final amd b;
  
  private aqz(amd paramamd)
  {
    b = paramamd;
  }
  
  public aqz(Context paramContext)
  {
    this(ahk.a(paramContext).a());
  }
  
  public final alr<Bitmap> a(alr<Bitmap> paramalr, int paramInt1, int paramInt2)
  {
    if (!avq.a(paramInt1, paramInt2)) {
      throw new IllegalArgumentException(128 + "Cannot apply transformation on width: " + paramInt1 + " or height: " + paramInt2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
    Bitmap localBitmap1 = (Bitmap)paramalr.c();
    int i = paramInt1;
    if (paramInt1 == Integer.MIN_VALUE) {
      i = localBitmap1.getWidth();
    }
    paramInt1 = paramInt2;
    if (paramInt2 == Integer.MIN_VALUE) {
      paramInt1 = localBitmap1.getHeight();
    }
    Bitmap localBitmap2 = a(b, localBitmap1, i, paramInt1);
    if (localBitmap1.equals(localBitmap2)) {
      return paramalr;
    }
    return aqy.a(localBitmap2, b);
  }
  
  protected abstract Bitmap a(amd paramamd, Bitmap paramBitmap, int paramInt1, int paramInt2);
}

/* Location:
 * Qualified Name:     aqz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */