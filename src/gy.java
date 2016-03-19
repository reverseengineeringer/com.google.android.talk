final class gy
{
  private static final byte[] a = new byte['܀'];
  private final String b;
  private final boolean c;
  private final int d;
  private int e;
  private char f;
  
  static
  {
    int i = 0;
    while (i < 1792)
    {
      a[i] = Character.getDirectionality(i);
      i += 1;
    }
  }
  
  gy(String paramString)
  {
    b = paramString;
    c = false;
    d = paramString.length();
  }
  
  private static byte a(char paramChar)
  {
    if (paramChar < '܀') {
      return a[paramChar];
    }
    return Character.getDirectionality(paramChar);
  }
  
  private byte c()
  {
    byte b2 = 12;
    f = b.charAt(e - 1);
    int j;
    if (Character.isLowSurrogate(f))
    {
      j = Character.codePointBefore(b, e);
      e -= Character.charCount(j);
      b1 = Character.getDirectionality(j);
      return b1;
    }
    e -= 1;
    byte b1 = a(f);
    if (c)
    {
      label104:
      String str;
      int k;
      if (f == '>')
      {
        j = e;
        for (;;)
        {
          if (e <= 0) {
            break label236;
          }
          str = b;
          k = e - 1;
          e = k;
          f = str.charAt(k);
          b1 = b2;
          if (f == '<') {
            break;
          }
          if (f == '>') {
            break label236;
          }
          if ((f == '"') || (f == '\''))
          {
            k = f;
            if (e > 0)
            {
              str = b;
              int m = e - 1;
              e = m;
              int i = str.charAt(m);
              f = i;
              if (i != k) {
                break label104;
              }
            }
          }
        }
        label236:
        e = j;
        f = '>';
        return 13;
      }
      if (f == ';')
      {
        j = e;
        do
        {
          if (e <= 0) {
            break label324;
          }
          str = b;
          k = e - 1;
          e = k;
          f = str.charAt(k);
          b1 = b2;
          if (f == '&') {
            break;
          }
        } while (f != ';');
        label324:
        e = j;
        f = ';';
        return 13;
      }
    }
    return b1;
  }
  
  int a()
  {
    e = 0;
    int m = 0;
    int n = 0;
    int j = 0;
    label13:
    while ((e < d) && (m == 0))
    {
      f = b.charAt(e);
      int k;
      if (Character.isHighSurrogate(f))
      {
        k = Character.codePointAt(b, e);
        e += Character.charCount(k);
        k = Character.getDirectionality(k);
      }
      for (;;)
      {
        switch (k)
        {
        case 9: 
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
        case 10: 
        case 11: 
        case 12: 
        case 13: 
        default: 
          m = j;
          break label13;
          e += 1;
          int i1 = a(f);
          k = i1;
          if (c)
          {
            String str;
            int i;
            if (f == '<')
            {
              k = e;
              for (;;)
              {
                if (e >= d) {
                  break label359;
                }
                str = b;
                i1 = e;
                e = (i1 + 1);
                f = str.charAt(i1);
                if (f == '>')
                {
                  k = 12;
                  break;
                }
                if ((f == '"') || (f == '\''))
                {
                  i1 = f;
                  do
                  {
                    if (e >= d) {
                      break;
                    }
                    str = b;
                    int i2 = e;
                    e = (i2 + 1);
                    i = str.charAt(i2);
                    f = i;
                  } while (i != i1);
                }
              }
              label359:
              e = k;
              f = '<';
              k = 13;
            }
            else
            {
              k = i1;
              if (f == '&')
              {
                do
                {
                  if (e >= d) {
                    break;
                  }
                  str = b;
                  k = e;
                  e = (k + 1);
                  i = str.charAt(k);
                  f = i;
                } while (i != 59);
                k = 12;
              }
            }
          }
          break;
        }
      }
      j += 1;
      n = -1;
      continue;
      j += 1;
      n = 1;
      continue;
      j -= 1;
      n = 0;
      continue;
      if (j == 0) {
        return -1;
      }
      m = j;
      continue;
      if (j == 0) {
        return 1;
      }
      m = j;
    }
    if (m == 0) {
      return 0;
    }
    if (n != 0) {
      return n;
    }
    for (;;)
    {
      if (e <= 0) {
        break label594;
      }
      switch (c())
      {
      default: 
        break;
      case 14: 
      case 15: 
        if (m == j) {
          break;
        }
        j -= 1;
        break;
      case 16: 
      case 17: 
        if (m == j) {
          return 1;
        }
        j -= 1;
        break;
      case 18: 
        j += 1;
      }
    }
    label594:
    return 0;
  }
  
  int b()
  {
    int m = 0;
    e = d;
    int j = 0;
    int i = 0;
    for (;;)
    {
      int k = m;
      if (e > 0) {}
      switch (c())
      {
      case 9: 
      case 3: 
      case 4: 
      case 5: 
      case 6: 
      case 7: 
      case 8: 
      case 10: 
      case 11: 
      case 12: 
      case 13: 
      default: 
        if (j == 0) {
          j = i;
        }
        break;
      case 0: 
        if (i == 0)
        {
          k = -1;
          return k;
        }
        if (j == 0) {
          j = i;
        }
        break;
      case 14: 
      case 15: 
        if (j == i) {
          return -1;
        }
        i -= 1;
        break;
      case 1: 
      case 2: 
        if (i == 0) {
          return 1;
        }
        if (j == 0) {
          j = i;
        }
        break;
      case 16: 
      case 17: 
        if (j == i) {
          return 1;
        }
        i -= 1;
        break;
      case 18: 
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     gy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */