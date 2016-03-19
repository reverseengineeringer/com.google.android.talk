import android.view.View;
import java.util.List;

final class yx
{
  boolean a = true;
  int b;
  int c;
  int d;
  int e;
  int f;
  int g;
  int h = 0;
  boolean i = false;
  int j;
  List<aao> k = null;
  
  private void a(View paramView)
  {
    int i2 = k.size();
    Object localObject = null;
    int m = Integer.MAX_VALUE;
    int n = 0;
    if (n < i2)
    {
      View localView = k.get(n)).a;
      aac localaac = (aac)localView.getLayoutParams();
      if ((localView == paramView) || (localaac.c())) {
        break label145;
      }
      int i1 = (localaac.e() - d) * e;
      if ((i1 < 0) || (i1 >= m)) {
        break label145;
      }
      localObject = localView;
      if (i1 != 0)
      {
        localObject = localView;
        m = i1;
      }
    }
    label145:
    for (;;)
    {
      n += 1;
      break;
      if (localObject == null)
      {
        d = -1;
        return;
      }
      d = ((aac)((View)localObject).getLayoutParams()).e();
      return;
    }
  }
  
  View a(aag paramaag)
  {
    if (k != null)
    {
      int n = k.size();
      int m = 0;
      while (m < n)
      {
        paramaag = k.get(m)).a;
        aac localaac = (aac)paramaag.getLayoutParams();
        if ((!localaac.c()) && (d == localaac.e()))
        {
          a(paramaag);
          return paramaag;
        }
        m += 1;
      }
      return null;
    }
    paramaag = paramaag.b(d);
    d += e;
    return paramaag;
  }
  
  public void a()
  {
    a(null);
  }
  
  boolean a(aam paramaam)
  {
    return (d >= 0) && (d < paramaam.d());
  }
}

/* Location:
 * Qualified Name:     yx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */