import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import java.util.SortedSet;

final class hzb
  implements hys
{
  private static final hyu a = new hzc();
  
  public hyt a(int paramInt1, int paramInt2)
  {
    return new hyt(paramInt1, paramInt2, a);
  }
  
  public hyt a(Bitmap paramBitmap)
  {
    return new hyt(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getAllocationByteCount(), a);
  }
  
  public hyt a(hyt paramhyt, SortedSet<hyt> paramSortedSet, hyv paramhyv)
  {
    if (!paramSortedSet.isEmpty()) {
      return (hyt)paramSortedSet.first();
    }
    return null;
  }
  
  public void a(hyt paramhyt, Bitmap paramBitmap)
  {
    paramBitmap.reconfigure(b, a, Bitmap.Config.ARGB_8888);
  }
}

/* Location:
 * Qualified Name:     hzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */