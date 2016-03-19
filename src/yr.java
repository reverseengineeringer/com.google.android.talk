import android.util.SparseIntArray;

public class yr
{
  final SparseIntArray a = new SparseIntArray();
  private boolean b = false;
  
  int a(int paramInt)
  {
    int i = 0;
    int j = a.size() - 1;
    while (i <= j)
    {
      int k = i + j >>> 1;
      if (a.keyAt(k) < paramInt) {
        i = k + 1;
      } else {
        j = k - 1;
      }
    }
    paramInt = i - 1;
    if ((paramInt >= 0) && (paramInt < a.size())) {
      return a.keyAt(paramInt);
    }
    return -1;
  }
  
  public int a(int paramInt1, int paramInt2)
  {
    if (1 == paramInt2) {
      return 0;
    }
    int i;
    int j;
    if ((b) && (a.size() > 0))
    {
      i = a(paramInt1);
      if (i >= 0)
      {
        j = a.get(i) + 1;
        i += 1;
      }
    }
    for (;;)
    {
      int k = j;
      j = i;
      i = k;
      if (j < paramInt1)
      {
        k = i + 1;
        if (k == paramInt2) {
          i = 0;
        }
        for (;;)
        {
          j += 1;
          break;
          i = k;
          if (k > paramInt2) {
            i = 1;
          }
        }
      }
      if (i + 1 > paramInt2) {
        break;
      }
      return i;
      i = 0;
      j = 0;
    }
  }
  
  public void a()
  {
    a.clear();
  }
  
  int b(int paramInt1, int paramInt2)
  {
    int i;
    if (!b) {
      i = a(paramInt1, paramInt2);
    }
    int j;
    do
    {
      return i;
      j = a.get(paramInt1, -1);
      i = j;
    } while (j != -1);
    paramInt2 = a(paramInt1, paramInt2);
    a.put(paramInt1, paramInt2);
    return paramInt2;
  }
  
  public int c(int paramInt1, int paramInt2)
  {
    int m = 0;
    int j = 0;
    int i = 0;
    if (m < paramInt1)
    {
      int n = i + 1;
      int k;
      if (n == paramInt2)
      {
        k = j + 1;
        i = 0;
      }
      for (;;)
      {
        m += 1;
        j = k;
        break;
        k = j;
        i = n;
        if (n > paramInt2)
        {
          i = 1;
          k = j + 1;
        }
      }
    }
    paramInt1 = j;
    if (i + 1 > paramInt2) {
      paramInt1 = j + 1;
    }
    return paramInt1;
  }
}

/* Location:
 * Qualified Name:     yr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */