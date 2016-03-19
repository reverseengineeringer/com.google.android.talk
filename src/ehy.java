import android.app.ActivityManager;
import android.database.AbstractCursor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public final class ehy
  extends AbstractCursor
  implements bzh
{
  private static final String[] c = { "_id", "aggregated_person" };
  private fkg a;
  private ArrayList<ehz> b = new ArrayList();
  
  public ehy(fkg paramfkg)
  {
    if (ActivityManager.isUserAMonkey()) {
      return;
    }
    a = paramfkg;
    g();
  }
  
  private int a(int paramInt)
  {
    return b.get(paramInt)).a;
  }
  
  private void g()
  {
    HashSet localHashSet = new HashSet();
    b.clear();
    if (a != null)
    {
      int i = 0;
      while (i < a.a())
      {
        gpr localgpr = (gpr)a.a(i);
        Iterator localIterator = localgpr.d().iterator();
        int j = 0;
        while (localIterator.hasNext())
        {
          Object localObject = (gpy)localIterator.next();
          String str = String.valueOf(localgpr.a());
          localObject = String.valueOf(((gpy)localObject).b());
          str = String.valueOf(str).length() + 1 + String.valueOf(localObject).length() + str + ":" + (String)localObject;
          if (!localHashSet.contains(str))
          {
            localHashSet.add(str);
            b.add(new ehz(i, j));
          }
          j += 1;
        }
        i += 1;
      }
    }
  }
  
  public gpr a()
  {
    if (a == null) {
      return null;
    }
    return (gpr)a.a(a(getPosition()));
  }
  
  public void a(byu parambyu)
  {
    throw new UnsupportedOperationException();
  }
  
  public bzq b()
  {
    return null;
  }
  
  public bzi c()
  {
    Object localObject = a();
    if (localObject != null)
    {
      int j = b.get(getPosition())).b;
      localObject = ((gpr)localObject).d().iterator();
      int i = 0;
      while (((Iterator)localObject).hasNext())
      {
        gpy localgpy = (gpy)((Iterator)localObject).next();
        if (i == j) {
          return new bzi(null, localgpy.b(), 0L, 0, null, true);
        }
        i += 1;
      }
    }
    return null;
  }
  
  public int d()
  {
    return 1;
  }
  
  public int e()
  {
    return 0;
  }
  
  public boolean f()
  {
    return b.get(getPosition())).b == 0;
  }
  
  public String[] getColumnNames()
  {
    return c;
  }
  
  public int getCount()
  {
    return b.size();
  }
  
  public double getDouble(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public float getFloat(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public int getInt(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public long getLong(int paramInt)
  {
    if (paramInt == 0) {
      return a(getPosition());
    }
    throw new UnsupportedOperationException();
  }
  
  public short getShort(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public String getString(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean isNull(int paramInt)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     ehy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */