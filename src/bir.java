import android.content.Context;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class bir<P extends bis, C extends Cursor>
  extends zu
{
  List<P> c;
  int d = 0;
  private final Context e;
  
  public bir(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private bir(Context paramContext, byte paramByte)
  {
    e = paramContext;
    c = new ArrayList(2);
    a(true);
  }
  
  public int a()
  {
    return d;
  }
  
  public int a(int paramInt)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      bis localbis = (bis)localIterator.next();
      int i = localbis.c();
      if (paramInt < i) {
        return localbis.a(paramInt);
      }
      paramInt -= i;
    }
    throw new ArrayIndexOutOfBoundsException(paramInt);
  }
  
  public P a(int paramInt, P paramP)
  {
    P ?;
    if (c.contains(paramP)) {
      ? = null;
    }
    int i;
    do
    {
      return ?;
      c.add(paramInt, paramP);
      i = paramP.c();
      ? = paramP;
    } while (i <= 0);
    paramInt = d(paramInt);
    d += i;
    b(paramInt, i);
    return paramP;
  }
  
  public P a(P paramP)
  {
    return a(c.size(), paramP);
  }
  
  public void a(aao paramaao, int paramInt)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      bis localbis = (bis)localIterator.next();
      int i = localbis.c();
      if (paramInt < i)
      {
        localbis.a(paramaao, paramInt);
        return;
      }
      paramInt -= i;
    }
    throw new ArrayIndexOutOfBoundsException(paramInt);
  }
  
  public long b(int paramInt)
  {
    return paramInt;
  }
  
  public Context b()
  {
    return e;
  }
  
  public int c()
  {
    return c.size();
  }
  
  public P c(int paramInt)
  {
    return (bis)c.get(paramInt);
  }
  
  public int d(int paramInt)
  {
    int i = 0;
    int j = 0;
    while (i < paramInt)
    {
      j += ((bis)c.get(i)).c();
      i += 1;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     bir
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */