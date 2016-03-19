import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;

public abstract class fko<T>
  extends fkg
{
  private boolean b = false;
  private ArrayList<Integer> c;
  
  public fko(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  private void g()
  {
    for (;;)
    {
      int i;
      String str2;
      try
      {
        if (b) {
          break label190;
        }
        int j = a.d();
        c = new ArrayList();
        if (j <= 0) {
          break label185;
        }
        c.add(Integer.valueOf(0));
        String str3 = f();
        i = a.a(0);
        String str1 = a.b(str3, 0, i);
        i = 1;
        if (i >= j) {
          break label185;
        }
        int k = a.a(i);
        str2 = a.b(str3, i, k);
        if (str2 == null) {
          throw new NullPointerException("Missing value for markerColumn: " + str3 + ", at row: " + i + ", for window: " + k);
        }
      }
      finally {}
      if (!str2.equals(localObject1))
      {
        c.add(Integer.valueOf(i));
        Object localObject2 = str2;
        break label193;
        label185:
        b = true;
        label190:
        return;
      }
      label193:
      i += 1;
    }
  }
  
  public int a()
  {
    g();
    return c.size();
  }
  
  public final T a(int paramInt)
  {
    g();
    return (T)a(b(paramInt), c(paramInt));
  }
  
  public abstract T a(int paramInt1, int paramInt2);
  
  int b(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= c.size())) {
      throw new IllegalArgumentException("Position " + paramInt + " is out of bounds for this buffer");
    }
    return ((Integer)c.get(paramInt)).intValue();
  }
  
  protected int c(int paramInt)
  {
    int j;
    if ((paramInt < 0) || (paramInt == c.size()))
    {
      j = 0;
      return j;
    }
    if (paramInt == c.size() - 1) {}
    for (int i = a.d() - ((Integer)c.get(paramInt)).intValue();; i = ((Integer)c.get(paramInt + 1)).intValue() - ((Integer)c.get(paramInt)).intValue())
    {
      j = i;
      if (i != 1) {
        break;
      }
      paramInt = b(paramInt);
      a.a(paramInt);
      return i;
    }
  }
  
  public abstract String f();
}

/* Location:
 * Qualified Name:     fko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */