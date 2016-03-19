import android.util.SparseArray;
import java.util.Iterator;
import java.util.List;

final class hsd
  implements hsw
{
  hsd(hsc paramhsc) {}
  
  public void a(int paramInt1, int paramInt2)
  {
    Object localObject = a.b.a(paramInt2);
    if (!((List)localObject).isEmpty())
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        hrz localhrz = (hrz)((Iterator)localObject).next();
        hsb localhsb = (hsb)a.a.get(paramInt1);
        if (localhsb != null) {
          localhsb.onActivityResult(b, c);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     hsd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */