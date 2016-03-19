import android.util.SparseArray;
import java.util.Iterator;
import java.util.List;

final class ifs
  implements hsw
{
  ifs(ifr paramifr) {}
  
  public void a(int paramInt1, int paramInt2)
  {
    Object localObject1 = a.b.a(paramInt2);
    if (!((List)localObject1).isEmpty())
    {
      int i = ((List)localObject1).size();
      new StringBuilder(64).append("handleRequestCodes: ").append(paramInt1).append("/").append(paramInt2).append(", ").append(i).append(" pending");
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        ifw localifw = (ifw)((Iterator)localObject1).next();
        Object localObject2 = a;
        paramInt2 = a;
        new StringBuilder(54).append("handlePermissionRequestResult: ").append(paramInt1).append("/").append(paramInt2);
        localObject2 = (ifz)a.get(paramInt1);
        if (localObject2 != null) {
          ((ifz)localObject2).a(localifw.a());
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     ifs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */