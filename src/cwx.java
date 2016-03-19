import android.content.Context;
import java.util.Iterator;
import java.util.List;

final class cwx
{
  int a;
  List<cwz> b;
  
  cwx(int paramInt, List<cwz> paramList)
  {
    a = paramInt;
    b = paramList;
    if (cxt.b)
    {
      paramInt = a;
      int i = b.size();
      ezi.d("Babel", 80 + "Notification list with : messageCount=" + paramInt + " conversation count=" + i, new Object[0]);
    }
  }
  
  static cwx a(Context paramContext, int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    paramContext = cxq.a(paramContext, paramInt, paramBoolean1, paramBoolean2, paramBoolean3);
    cwz localcwz = cxo.b(paramInt);
    if (localcwz != null)
    {
      paramInt = 0;
      while ((paramInt < b.size()) && (g < b.get(paramInt)).g)) {
        paramInt += 1;
      }
      if (paramInt >= b.size()) {
        break label109;
      }
      b.add(paramInt, localcwz);
    }
    for (;;)
    {
      a += i;
      return paramContext;
      label109:
      b.add(localcwz);
    }
  }
  
  exn a()
  {
    exn localexn = new exn();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (cwz)localIterator.next();
      if (j)
      {
        localObject = h.iterator();
        while (((Iterator)localObject).hasNext()) {
          localexn.add(nexto.a);
        }
      }
      else
      {
        localexn.add(a);
      }
    }
    return localexn;
  }
}

/* Location:
 * Qualified Name:     cwx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */