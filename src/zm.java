import java.util.List;

final class zm
{
  final zn a;
  
  public zm(zn paramzn)
  {
    a = paramzn;
  }
  
  void a(List<wr> paramList)
  {
    int i;
    label11:
    label39:
    int i1;
    wr localwr2;
    wr localwr3;
    int k;
    for (;;)
    {
      j = 0;
      i = paramList.size() - 1;
      if (i < 0) {
        break label253;
      }
      if (geta != 8) {
        break;
      }
      if (j == 0) {
        break label1214;
      }
      j = i;
      if (j == -1) {
        break label1213;
      }
      i1 = j + 1;
      localwr2 = (wr)paramList.get(j);
      localwr3 = (wr)paramList.get(i1);
      switch (a)
      {
      case 3: 
      default: 
        break;
      case 1: 
        i = 0;
        if (d < b) {
          i = -1;
        }
        k = i;
        if (b < b) {
          k = i + 1;
        }
        if (b <= b) {
          b += d;
        }
        if (b <= d) {
          d += d;
        }
        b = (k + b);
        paramList.set(j, localwr3);
        paramList.set(i1, localwr2);
      }
    }
    int j = 1;
    label253:
    label332:
    label357:
    label477:
    label549:
    label634:
    label760:
    label935:
    label978:
    label1003:
    label1118:
    label1193:
    label1213:
    label1214:
    for (;;)
    {
      i -= 1;
      break label11;
      j = -1;
      break label39;
      wr localwr1 = null;
      int m = 0;
      int n;
      if (b < d)
      {
        n = 0;
        k = n;
        i = m;
        if (b == b)
        {
          k = n;
          i = m;
          if (d == d - b)
          {
            i = 1;
            k = n;
          }
        }
        if (d >= b) {
          break label477;
        }
        b -= 1;
        if (b > b) {
          break label549;
        }
        b += 1;
      }
      for (;;)
      {
        if (i == 0) {
          break label634;
        }
        paramList.set(j, localwr3);
        paramList.remove(i1);
        a.a(localwr2);
        break;
        n = 1;
        k = n;
        i = m;
        if (b != d + 1) {
          break label332;
        }
        k = n;
        i = m;
        if (d != b - d) {
          break label332;
        }
        i = 1;
        k = n;
        break label332;
        if (d >= b + d) {
          break label357;
        }
        d -= 1;
        a = 2;
        d = 1;
        if (d != 0) {
          break;
        }
        paramList.remove(i1);
        a.a(localwr3);
        break;
        if (b < b + d)
        {
          m = b;
          n = d;
          int i2 = b;
          localwr1 = a.a(2, b + 1, m + n - i2, null);
          d = (b - b);
        }
      }
      if (k != 0)
      {
        if (localwr1 != null)
        {
          if (b > b) {
            b -= d;
          }
          if (d > b) {
            d -= d;
          }
        }
        if (b > b) {
          b -= d;
        }
        if (d > b) {
          d -= d;
        }
        paramList.set(j, localwr3);
        if (b == d) {
          break label935;
        }
        paramList.set(i1, localwr2);
      }
      while (localwr1 != null)
      {
        paramList.add(j, localwr1);
        break;
        if (localwr1 != null)
        {
          if (b >= b) {
            b -= d;
          }
          if (d >= b) {
            d -= d;
          }
        }
        if (b >= b) {
          b -= d;
        }
        if (d < b) {
          break label760;
        }
        d -= d;
        break label760;
        paramList.remove(i1);
      }
      localwr1 = null;
      Object localObject = null;
      if (d < b)
      {
        b -= 1;
        if (b > b) {
          break label1118;
        }
        b += 1;
        paramList.set(i1, localwr2);
        if (d <= 0) {
          break label1193;
        }
        paramList.set(j, localwr3);
      }
      for (;;)
      {
        if (localwr1 != null) {
          paramList.add(j, localwr1);
        }
        if (localObject == null) {
          break;
        }
        paramList.add(j, localObject);
        break;
        if (d >= b + d) {
          break label978;
        }
        d -= 1;
        localwr1 = a.a(4, b, 1, c);
        break label978;
        if (b >= b + d) {
          break label1003;
        }
        i = b + d - b;
        localObject = a.a(4, b + 1, i, c);
        d -= i;
        break label1003;
        paramList.remove(j);
        a.a(localwr3);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     zm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */