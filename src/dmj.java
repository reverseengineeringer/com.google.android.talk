import android.content.Context;
import java.util.ArrayList;

public class dmj
{
  private ArrayList<dlz> a = new ArrayList();
  
  public int a(Context paramContext, int paramInt)
  {
    int i;
    do
    {
      i = paramInt + 1;
      if (i >= a.size()) {
        break;
      }
      paramInt = i;
    } while (!((dlz)a.get(i)).a(paramContext));
    return i;
    return -1;
  }
  
  public dlz a(int paramInt)
  {
    return (dlz)a.get(paramInt);
  }
  
  public void a(Context paramContext)
  {
    a.clear();
    int i = 0;
    while (i < 9)
    {
      dlz localdlz = (dlz)ilh.b(paramContext, new Class[] { dhi.class, csi.class, djy.class, cyr.class, bwe.class, aze.class, bbw.class, azn.class, bby.class }[i]);
      if (localdlz != null) {
        a.add(localdlz);
      }
      i += 1;
    }
  }
  
  public int b(Context paramContext)
  {
    int i = 0;
    int k;
    for (int j = 0; i < a.size(); j = k)
    {
      k = j;
      if (((dlz)a.get(i)).a(paramContext)) {
        k = j + 1;
      }
      i += 1;
    }
    return j;
  }
  
  public boolean b(int paramInt)
  {
    a.get(paramInt);
    return false;
  }
}

/* Location:
 * Qualified Name:     dmj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */