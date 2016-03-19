public final class mgt
{
  private static final double[] e = new double[''];
  public int a;
  private char b;
  private CharSequence c;
  private int d;
  
  static
  {
    int i = 0;
    while (i < e.length)
    {
      e[i] = Math.pow(10.0D, i);
      i += 1;
    }
  }
  
  public mgt(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    a = 0;
    d = paramCharSequence.length();
    b = paramCharSequence.charAt(0);
  }
  
  private static void a(char paramChar)
  {
    throw new RuntimeException(20 + "Unexpected char '" + paramChar + "'.");
  }
  
  private char d()
  {
    if (a < d) {
      a += 1;
    }
    if (a == d) {
      return '\000';
    }
    return c.charAt(a);
  }
  
  public void a()
  {
    while ((a < d) && (Character.isWhitespace(c.charAt(a)))) {
      b();
    }
  }
  
  public void b()
  {
    b = d();
  }
  
  public float c()
  {
    int i7 = 1;
    int i5 = 1;
    int i6 = 1;
    int i3 = 0;
    int i4 = 0;
    a();
    int i2;
    float f;
    switch (b)
    {
    case ',': 
    default: 
      i2 = 1;
      switch (b)
      {
      case '/': 
      default: 
        f = NaN.0F;
        label119:
        if (a < d) {}
        switch (c.charAt(a))
        {
        default: 
          return f;
        }
        break;
      }
      break;
    }
    for (int i = 0;; i = 1)
    {
      b = d();
      i2 = i;
      break;
      i = 0;
      int i1 = 0;
      int k = 0;
      for (int j = 0;; j = 0)
      {
        n = i;
        m = j;
        if (b != '.') {
          break label856;
        }
        b = d();
        switch (b)
        {
        default: 
          n = i;
          m = j;
          if (i1 != 0) {
            break label856;
          }
          a(b);
          f = 0.0F;
          break label119;
          b = d();
          switch (b)
          {
          case '0': 
          default: 
            f = 0.0F;
            break;
          case '.': 
          case 'E': 
          case 'e': 
            i = 0;
            i1 = 1;
            k = 0;
          }
          break;
        }
      }
      int n = 0;
      i1 = 0;
      int m = 0;
      if (i1 < 9)
      {
        j = i1 + 1;
        k = m * 10 + (b - '0');
        i = n;
      }
      for (;;)
      {
        b = d();
        n = i;
        i1 = j;
        m = k;
        switch (b)
        {
        }
        m = k;
        i1 = 1;
        k = j;
        j = m;
        break;
        i = n + 1;
        j = i1;
        k = m;
      }
      if (k == 0)
      {
        m = i;
        b = d();
        i = m - 1;
        m = i;
        switch (b)
        {
        case '0': 
        default: 
          n = i;
          m = j;
          if (i1 == 0) {
            f = 0.0F;
          }
          break;
        }
      }
      for (;;)
      {
        n = i;
        i1 = k;
        m = j;
        if (k < 9)
        {
          i1 = k + 1;
          m = j * 10 + (b - '0');
          n = i - 1;
        }
        b = d();
        i = n;
        k = i1;
        j = m;
        switch (b)
        {
        }
        label856:
        switch (b)
        {
        default: 
          i = i6;
          j = i4;
        }
        for (;;)
        {
          label896:
          k = j;
          if (i == 0) {
            k = -j;
          }
          k += n;
          if (i2 != 0) {
            break label1499;
          }
          i = -m;
          label927:
          if ((k >= -125) && (i != 0)) {
            break label1399;
          }
          f = 0.0F;
          break;
          b = d();
          j = i7;
          i = i5;
          switch (b)
          {
          case ',': 
          case '.': 
          case '/': 
          default: 
            a(b);
            f = 0.0F;
            break;
          case '-': 
            j = 0;
          case '+': 
            b = d();
            i = j;
            switch (b)
            {
            default: 
              a(b);
              f = 0.0F;
            }
            break;
          case '0': 
          case '1': 
          case '2': 
          case '3': 
          case '4': 
          case '5': 
          case '6': 
          case '7': 
          case '8': 
          case '9': 
            switch (b)
            {
            default: 
              j = i4;
              break;
            case '0': 
              b = d();
              switch (b)
              {
              case '0': 
              default: 
                j = i4;
              }
              break;
            }
            break;
          }
        }
        j = 0;
        for (i1 = i3;; i1 = i3)
        {
          i3 = i1;
          k = j;
          if (i1 < 3)
          {
            i3 = i1 + 1;
            k = j * 10 + (b - '0');
          }
          b = d();
          i1 = i3;
          j = k;
          switch (b)
          {
          }
          j = k;
          break label896;
          label1399:
          if (k >= 128)
          {
            if (i > 0)
            {
              f = Float.POSITIVE_INFINITY;
              break;
            }
            f = Float.NEGATIVE_INFINITY;
            break;
          }
          if (k == 0)
          {
            f = i;
            break;
          }
          j = i;
          if (i >= 67108864) {
            j = i + 1;
          }
          if (k > 0) {
            d1 = j;
          }
          for (double d1 = e[k] * d1;; d1 = j / e[(-k)])
          {
            f = (float)d1;
            break;
          }
          b();
          break;
          label1499:
          i = m;
          break label927;
          j = 0;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     mgt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */