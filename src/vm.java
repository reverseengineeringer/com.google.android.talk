public final class vm
{
  private int a = 0;
  private int b = 0;
  private int c = Integer.MIN_VALUE;
  private int d = Integer.MIN_VALUE;
  private int e = 0;
  private int f = 0;
  private boolean g = false;
  private boolean h = false;
  
  public int a()
  {
    return a;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    c = paramInt1;
    d = paramInt2;
    h = true;
    if (g)
    {
      if (paramInt2 != Integer.MIN_VALUE) {
        a = paramInt2;
      }
      if (paramInt1 != Integer.MIN_VALUE) {
        b = paramInt1;
      }
    }
    do
    {
      return;
      if (paramInt1 != Integer.MIN_VALUE) {
        a = paramInt1;
      }
    } while (paramInt2 == Integer.MIN_VALUE);
    b = paramInt2;
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean == g) {
      return;
    }
    g = paramBoolean;
    if (h)
    {
      if (paramBoolean)
      {
        if (d != Integer.MIN_VALUE)
        {
          i = d;
          a = i;
          if (c == Integer.MIN_VALUE) {
            break label72;
          }
        }
        label72:
        for (i = c;; i = f)
        {
          b = i;
          return;
          i = e;
          break;
        }
      }
      if (c != Integer.MIN_VALUE)
      {
        i = c;
        a = i;
        if (d == Integer.MIN_VALUE) {
          break label127;
        }
      }
      label127:
      for (int i = d;; i = f)
      {
        b = i;
        return;
        i = e;
        break;
      }
    }
    a = e;
    b = f;
  }
  
  public int b()
  {
    return b;
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    h = false;
    if (paramInt1 != Integer.MIN_VALUE)
    {
      e = paramInt1;
      a = paramInt1;
    }
    if (paramInt2 != Integer.MIN_VALUE)
    {
      f = paramInt2;
      b = paramInt2;
    }
  }
  
  public int c()
  {
    if (g) {
      return b;
    }
    return a;
  }
  
  public int d()
  {
    if (g) {
      return a;
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     vm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */