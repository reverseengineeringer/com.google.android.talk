import java.util.ArrayList;
import java.util.List;

public final class zn
{
  ic<wr> a = new id(30);
  final ArrayList<wr> b = new ArrayList();
  final ArrayList<wr> c = new ArrayList();
  final wq d;
  Runnable e;
  final boolean f;
  final zm g;
  int h = 0;
  
  public zn(wq paramwq)
  {
    this(paramwq, (byte)0);
  }
  
  private zn(wq paramwq, byte paramByte)
  {
    d = paramwq;
    f = false;
    g = new zm(this);
  }
  
  private void a(List<wr> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      a((wr)paramList.get(i));
      i += 1;
    }
    paramList.clear();
  }
  
  private void a(wr paramwr, int paramInt)
  {
    d.a(paramwr);
    switch (a)
    {
    case 3: 
    default: 
      throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
    case 2: 
      d.a(paramInt, d);
      return;
    }
    d.a(paramInt, d, c);
  }
  
  private void b(wr paramwr)
  {
    g(paramwr);
  }
  
  private int c(int paramInt1, int paramInt2)
  {
    int i = c.size() - 1;
    wr localwr;
    if (i >= 0)
    {
      localwr = (wr)c.get(i);
      int k;
      int j;
      if (a == 8) {
        if (b < d)
        {
          k = b;
          j = d;
          label64:
          if ((paramInt1 < k) || (paramInt1 > j)) {
            break label195;
          }
          if (k != b) {
            break label151;
          }
          if (paramInt2 != 1) {
            break label131;
          }
          d += 1;
          label103:
          paramInt1 += 1;
        }
      }
      for (;;)
      {
        i -= 1;
        break;
        k = d;
        j = b;
        break label64;
        label131:
        if (paramInt2 != 2) {
          break label103;
        }
        d -= 1;
        break label103;
        label151:
        if (paramInt2 == 1) {
          b += 1;
        }
        for (;;)
        {
          paramInt1 -= 1;
          break;
          if (paramInt2 == 2) {
            b -= 1;
          }
        }
        label195:
        if (paramInt1 < b)
        {
          if (paramInt2 == 1)
          {
            b += 1;
            d += 1;
            continue;
          }
          if (paramInt2 == 2)
          {
            b -= 1;
            d -= 1;
          }
        }
        continue;
        if (b <= paramInt1)
        {
          if (a == 1) {
            paramInt1 -= d;
          } else if (a == 2) {
            paramInt1 = d + paramInt1;
          }
        }
        else if (paramInt2 == 1) {
          b += 1;
        } else if (paramInt2 == 2) {
          b -= 1;
        }
      }
    }
    paramInt2 = c.size() - 1;
    if (paramInt2 >= 0)
    {
      localwr = (wr)c.get(paramInt2);
      if (a == 8) {
        if ((d == b) || (d < 0))
        {
          c.remove(paramInt2);
          a(localwr);
        }
      }
      for (;;)
      {
        paramInt2 -= 1;
        break;
        if (d <= 0)
        {
          c.remove(paramInt2);
          a(localwr);
        }
      }
    }
    return paramInt1;
  }
  
  private void c(wr paramwr)
  {
    int i2 = b;
    int k = b + d;
    int j = -1;
    int i = b;
    int n = 0;
    if (i < k) {
      if ((d.a(i) != null) || (d(i)))
      {
        if (j != 0) {
          break label214;
        }
        e(a(2, i2, n, null));
      }
    }
    label95:
    label209:
    label214:
    for (int m = 1;; m = 0)
    {
      j = 1;
      if (m != 0)
      {
        m = i - n;
        i = k - n;
        k = 1;
        n = k;
        k = i;
        i = m + 1;
        break;
        if (j != 1) {
          break label209;
        }
        g(a(2, i2, n, null));
      }
      for (j = 1;; j = 0)
      {
        int i1 = 0;
        m = j;
        j = i1;
        break;
        n += 1;
        m = i;
        i = k;
        k = n;
        break label95;
        wr localwr = paramwr;
        if (n != d)
        {
          a(paramwr);
          localwr = a(2, i2, n, null);
        }
        if (j == 0)
        {
          e(localwr);
          return;
        }
        g(localwr);
        return;
      }
    }
  }
  
  private int d(int paramInt1, int paramInt2)
  {
    int k = c.size();
    int j = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt2;
    wr localwr;
    if (j < k)
    {
      localwr = (wr)c.get(j);
      if (a == 8) {
        if (b == paramInt2) {
          paramInt1 = d;
        }
      }
    }
    for (;;)
    {
      j += 1;
      paramInt2 = paramInt1;
      break;
      int i = paramInt2;
      if (b < paramInt2) {
        i = paramInt2 - 1;
      }
      paramInt1 = i;
      if (d <= i)
      {
        paramInt1 = i + 1;
        continue;
        paramInt1 = paramInt2;
        if (b <= paramInt2) {
          if (a == 2)
          {
            if (paramInt2 < b + d)
            {
              paramInt1 = -1;
              return paramInt1;
            }
            paramInt1 = paramInt2 - d;
          }
          else
          {
            paramInt1 = paramInt2;
            if (a == 1) {
              paramInt1 = paramInt2 + d;
            }
          }
        }
      }
    }
  }
  
  private void d(wr paramwr)
  {
    int k = b;
    int i2 = b;
    int i3 = d;
    int i = b;
    int i1 = -1;
    int j = 0;
    if (i < i2 + i3)
    {
      int m;
      int n;
      if ((d.a(i) != null) || (d(i)))
      {
        m = j;
        n = k;
        if (i1 == 0)
        {
          e(a(4, k, j, c));
          m = 0;
          n = i;
        }
        k = n;
      }
      for (j = 1;; j = 0)
      {
        i += 1;
        m += 1;
        i1 = j;
        j = m;
        break;
        m = j;
        n = k;
        if (i1 == 1)
        {
          g(a(4, k, j, c));
          m = 0;
          n = i;
        }
        k = n;
      }
    }
    Object localObject = paramwr;
    if (j != d)
    {
      localObject = c;
      a(paramwr);
      localObject = a(4, k, j, localObject);
    }
    if (i1 == 0)
    {
      e((wr)localObject);
      return;
    }
    g((wr)localObject);
  }
  
  private boolean d(int paramInt)
  {
    int k = c.size();
    int i = 0;
    while (i < k)
    {
      wr localwr = (wr)c.get(i);
      if (a == 8)
      {
        if (d(d, i + 1) == paramInt) {
          return true;
        }
      }
      else if (a == 1)
      {
        int m = b;
        int n = d;
        int j = b;
        while (j < m + n)
        {
          if (d(j, i + 1) == paramInt) {
            return true;
          }
          j += 1;
        }
      }
      i += 1;
    }
    return false;
  }
  
  private void e(wr paramwr)
  {
    if ((a == 1) || (a == 8)) {
      throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }
    int i1 = c(b, a);
    int j = b;
    int k;
    int n;
    int m;
    label109:
    int i2;
    switch (a)
    {
    case 3: 
    default: 
      throw new IllegalArgumentException("op should be remove or update." + paramwr);
    case 4: 
      k = 1;
      n = 1;
      m = 1;
      if (m >= d) {
        break label294;
      }
      i2 = c(b + k * m, a);
      switch (a)
      {
      case 3: 
      default: 
        i = 0;
        label170:
        if (i == 0) {}
        break;
      }
      break;
    }
    for (int i = n + 1;; i = n)
    {
      m += 1;
      n = i;
      break label109;
      k = 0;
      break;
      if (i2 == i1 + 1)
      {
        i = 1;
        break label170;
      }
      i = 0;
      break label170;
      if (i2 == i1)
      {
        i = 1;
        break label170;
      }
      i = 0;
      break label170;
      localObject = a(a, i1, n, c);
      a((wr)localObject, j);
      a((wr)localObject);
      i = j;
      if (a == 4) {
        i = j + n;
      }
      n = 1;
      i1 = i2;
      j = i;
    }
    label294:
    Object localObject = c;
    a(paramwr);
    if (n > 0)
    {
      paramwr = a(a, i1, n, localObject);
      a(paramwr, j);
      a(paramwr);
    }
  }
  
  private void f(wr paramwr)
  {
    g(paramwr);
  }
  
  private void g(wr paramwr)
  {
    c.add(paramwr);
    switch (a)
    {
    case 3: 
    case 5: 
    case 6: 
    case 7: 
    default: 
      throw new IllegalArgumentException("Unknown update op type for " + paramwr);
    case 1: 
      d.c(b, d);
      return;
    case 8: 
      d.d(b, d);
      return;
    case 2: 
      d.b(b, d);
      return;
    }
    d.a(b, d, c);
  }
  
  public wr a(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    wr localwr = (wr)a.a();
    if (localwr == null) {
      return new wr(paramInt1, paramInt2, paramInt3, paramObject);
    }
    a = paramInt1;
    b = paramInt2;
    d = paramInt3;
    c = paramObject;
    return localwr;
  }
  
  public void a()
  {
    a(b);
    a(c);
    h = 0;
  }
  
  public void a(wr paramwr)
  {
    if (!f)
    {
      c = null;
      a.a(paramwr);
    }
  }
  
  public boolean a(int paramInt)
  {
    return (h & paramInt) != 0;
  }
  
  boolean a(int paramInt1, int paramInt2)
  {
    b.add(a(1, paramInt1, paramInt2, null));
    h |= 0x1;
    return b.size() == 1;
  }
  
  boolean a(int paramInt1, int paramInt2, Object paramObject)
  {
    b.add(a(4, paramInt1, paramInt2, paramObject));
    h |= 0x4;
    return b.size() == 1;
  }
  
  int b(int paramInt)
  {
    return d(paramInt, 0);
  }
  
  public void b()
  {
    g.a(b);
    int j = b.size();
    int i = 0;
    if (i < j)
    {
      wr localwr = (wr)b.get(i);
      switch (a)
      {
      }
      for (;;)
      {
        if (e != null) {
          e.run();
        }
        i += 1;
        break;
        f(localwr);
        continue;
        c(localwr);
        continue;
        d(localwr);
        continue;
        b(localwr);
      }
    }
    b.clear();
  }
  
  boolean b(int paramInt1, int paramInt2)
  {
    b.add(a(2, paramInt1, paramInt2, null));
    h |= 0x2;
    return b.size() == 1;
  }
  
  public int c(int paramInt)
  {
    int m = b.size();
    int k = 0;
    int i = paramInt;
    paramInt = i;
    wr localwr;
    if (k < m)
    {
      localwr = (wr)b.get(k);
      switch (a)
      {
      default: 
        paramInt = i;
      }
    }
    for (;;)
    {
      k += 1;
      i = paramInt;
      break;
      paramInt = i;
      if (b <= i)
      {
        paramInt = i + d;
        continue;
        paramInt = i;
        if (b <= i)
        {
          if (b + d > i)
          {
            paramInt = -1;
            return paramInt;
          }
          paramInt = i - d;
          continue;
          if (b == i)
          {
            paramInt = d;
          }
          else
          {
            int j = i;
            if (b < i) {
              j = i - 1;
            }
            paramInt = j;
            if (d <= j) {
              paramInt = j + 1;
            }
          }
        }
      }
    }
  }
  
  public void c()
  {
    int j = c.size();
    int i = 0;
    while (i < j)
    {
      d.b((wr)c.get(i));
      i += 1;
    }
    a(c);
    h = 0;
  }
  
  public boolean d()
  {
    return b.size() > 0;
  }
  
  public void e()
  {
    c();
    int j = b.size();
    int i = 0;
    if (i < j)
    {
      wr localwr = (wr)b.get(i);
      switch (a)
      {
      }
      for (;;)
      {
        if (e != null) {
          e.run();
        }
        i += 1;
        break;
        d.b(localwr);
        d.c(b, d);
        continue;
        d.b(localwr);
        d.a(b, d);
        continue;
        d.b(localwr);
        d.a(b, d, c);
        continue;
        d.b(localwr);
        d.d(b, d);
      }
    }
    a(b);
    h = 0;
  }
}

/* Location:
 * Qualified Name:     zn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */