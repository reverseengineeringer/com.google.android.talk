import android.app.Notification;
import android.os.Parcelable;
import java.util.ArrayList;

class dd
  extends dj
{
  public Notification a(cy paramcy)
  {
    dm localdm = new dm(a, B, b, c, h, f, i, d, e, g, o, p, q, k, l, j, n, v, C, x, r, s, t);
    ct.a(localdm, u);
    ct.a(localdm, m);
    return localdm.b();
  }
  
  public ArrayList<Parcelable> a(cu[] paramArrayOfcu)
  {
    Object localObject;
    if (paramArrayOfcu == null)
    {
      localObject = null;
      return (ArrayList<Parcelable>)localObject;
    }
    ArrayList localArrayList = new ArrayList(paramArrayOfcu.length);
    int j = paramArrayOfcu.length;
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localArrayList.add(aal.a(paramArrayOfcu[i]));
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */