import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.MessageQueue.IdleHandler;
import java.util.ArrayList;
import java.util.List;

final class hyq
  implements MessageQueue.IdleHandler
{
  private final hyw a;
  private final List<hyr> b = new ArrayList(3);
  private volatile boolean c = true;
  private int d = 0;
  
  public hyq(hzj paramhzj, hyw paramhyw, int paramInt1, int paramInt2)
  {
    a = paramhyw;
    paramhyw = a(paramhzj, paramInt1, (int)(paramInt1 * 1.3F));
    if (paramhyw != null) {
      b.add(paramhyw);
    }
    paramhzj = a(paramhzj, (int)(paramInt1 * 1.3F), paramInt1);
    if (paramhzj != null) {
      b.add(paramhzj);
    }
    b.add(new hyr(paramInt2, paramInt2, 12));
  }
  
  private static hyr a(hzj paramhzj, int paramInt1, int paramInt2)
  {
    int i = c / ((paramInt1 * paramInt2 << 2) * 3);
    paramhzj = null;
    if (i > 0) {
      paramhzj = new hyr(paramInt1, paramInt2, i);
    }
    return paramhzj;
  }
  
  void a()
  {
    if ((c) && (a.b() > 0.85F)) {
      c = false;
    }
  }
  
  public boolean queueIdle()
  {
    Object localObject;
    if ((c) && (a.b() < 0.85F))
    {
      if (d < b.size()) {
        break label55;
      }
      localObject = null;
    }
    for (;;)
    {
      if (localObject != null) {
        a.a((Bitmap)localObject);
      }
      return c;
      label55:
      localObject = (hyr)b.get(d);
      if (localObject == null)
      {
        localObject = null;
      }
      else
      {
        int i = c - 1;
        c = i;
        if (i == 0) {
          d += 1;
        }
        localObject = Bitmap.createBitmap(a, b, Bitmap.Config.ARGB_8888);
      }
    }
  }
}

/* Location:
 * Qualified Name:     hyq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */