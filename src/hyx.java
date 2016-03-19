import android.graphics.Bitmap;
import java.util.Iterator;
import java.util.SortedSet;

final class hyx
  implements hys
{
  private static final hyu a = new hyy();
  
  public hyt a(int paramInt1, int paramInt2)
  {
    return new hyt(paramInt1, paramInt2, a);
  }
  
  public hyt a(Bitmap paramBitmap)
  {
    return a(paramBitmap.getWidth(), paramBitmap.getHeight());
  }
  
  public hyt a(hyt paramhyt, SortedSet<hyt> paramSortedSet, hyv paramhyv)
  {
    paramSortedSet = paramSortedSet.iterator();
    while (paramSortedSet.hasNext())
    {
      hyt localhyt = (hyt)paramSortedSet.next();
      if ((b >= b) && (a >= a) && ((paramhyv == hyv.b) || ((b == b) && (a == a)))) {
        return localhyt;
      }
    }
    return null;
  }
  
  public void a(hyt paramhyt, Bitmap paramBitmap) {}
}

/* Location:
 * Qualified Name:     hyx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */