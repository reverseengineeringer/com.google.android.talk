import android.os.Build.VERSION;
import java.util.ArrayList;
import java.util.Iterator;

public final class ct
{
  static final dc a = new dc();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new de();
      return;
    }
    if (Build.VERSION.SDK_INT >= 20)
    {
      a = new dd();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new dj();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new di();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new dh();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new dg();
      return;
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      a = new df();
      return;
    }
  }
  
  static void a(cr paramcr, ArrayList<cu> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext()) {
      paramcr.a((cu)paramArrayList.next());
    }
  }
  
  static void a(cs paramcs, dk paramdk)
  {
    if (paramdk != null)
    {
      if (!(paramdk instanceof cx)) {
        break label37;
      }
      paramdk = (cx)paramdk;
      dr.a(paramcs, e, g, f, a);
    }
    label37:
    do
    {
      return;
      if ((paramdk instanceof db))
      {
        paramdk = (db)paramdk;
        dr.a(paramcs, e, g, f, a);
        return;
      }
    } while (!(paramdk instanceof cw));
    paramdk = (cw)paramdk;
    dr.a(paramcs, e, g, f, a, b, c);
  }
}

/* Location:
 * Qualified Name:     ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */