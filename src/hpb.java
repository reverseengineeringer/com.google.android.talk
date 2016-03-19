public final class hpb
  extends lyi
{
  public hpa[] a = hpa.d();
  
  public hpb()
  {
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        hpa localhpa = a[i];
        if (localhpa != null) {
          paramlxz.b(1, localhpa);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int k = i;
    if (a != null)
    {
      k = i;
      if (a.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= a.length) {
            break;
          }
          hpa localhpa = a[j];
          k = i;
          if (localhpa != null) {
            k = i + lxz.d(1, localhpa);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
  
  public hpb b(lxy paramlxy)
  {
    for (;;)
    {
      int i = paramlxy.a();
      switch (i)
      {
      default: 
        if (lyo.a(paramlxy, i)) {}
        break;
      case 0: 
        return this;
      case 10: 
        int j = lyo.b(paramlxy, 10);
        if (a == null) {}
        hpa[] arrayOfhpa;
        for (i = 0;; i = a.length)
        {
          arrayOfhpa = new hpa[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(a, 0, arrayOfhpa, 0, i);
            j = i;
          }
          while (j < arrayOfhpa.length - 1)
          {
            arrayOfhpa[j] = new hpa();
            paramlxy.a(arrayOfhpa[j]);
            paramlxy.a();
            j += 1;
          }
        }
        arrayOfhpa[j] = new hpa();
        paramlxy.a(arrayOfhpa[j]);
        a = arrayOfhpa;
      }
    }
  }
}

/* Location:
 * Qualified Name:     hpb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */