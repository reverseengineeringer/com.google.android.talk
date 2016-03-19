public final class abg
{
  final hq<aao, abh> a = new hq();
  final hu<aao> b = new hu();
  
  public aao a(long paramLong)
  {
    return (aao)b.a(paramLong);
  }
  
  public zz a(aao paramaao)
  {
    int i = a.a(paramaao);
    if (i < 0) {
      return null;
    }
    paramaao = (abh)a.c(i);
    if ((paramaao != null) && ((a & 0x4) != 0))
    {
      a &= 0xFFFFFFFB;
      zz localzz = b;
      if (a == 0)
      {
        a.d(i);
        abh.a(paramaao);
      }
      return localzz;
    }
    return null;
  }
  
  public void a()
  {
    a.clear();
    b.b();
  }
  
  public void a(long paramLong, aao paramaao)
  {
    b.a(paramLong, paramaao);
  }
  
  public void a(aao paramaao, zz paramzz)
  {
    abh localabh2 = (abh)a.get(paramaao);
    abh localabh1 = localabh2;
    if (localabh2 == null)
    {
      localabh1 = abh.a();
      a.put(paramaao, localabh1);
    }
    b = paramzz;
    a |= 0x4;
  }
  
  public void a(abi paramabi)
  {
    int i = a.size() - 1;
    if (i >= 0)
    {
      aao localaao = (aao)a.b(i);
      abh localabh = (abh)a.d(i);
      if ((a & 0x3) == 3) {
        paramabi.a(localaao);
      }
      for (;;)
      {
        abh.a(localabh);
        i -= 1;
        break;
        if ((a & 0x1) != 0) {
          paramabi.a(localaao, b, c);
        } else if ((a & 0xE) == 14) {
          paramabi.b(localaao, b, c);
        } else if ((a & 0xC) == 12) {
          paramabi.c(localaao, b, c);
        } else if ((a & 0x4) != 0) {
          paramabi.a(localaao, b, null);
        } else if ((a & 0x8) != 0) {
          paramabi.b(localaao, b, c);
        } else {
          int j = a;
        }
      }
    }
  }
  
  public void b(aao paramaao, zz paramzz)
  {
    abh localabh2 = (abh)a.get(paramaao);
    abh localabh1 = localabh2;
    if (localabh2 == null)
    {
      localabh1 = abh.a();
      a.put(paramaao, localabh1);
    }
    a |= 0x2;
    b = paramzz;
  }
  
  public boolean b(aao paramaao)
  {
    paramaao = (abh)a.get(paramaao);
    return (paramaao != null) && ((a & 0x4) != 0);
  }
  
  void c(aao paramaao)
  {
    abh localabh2 = (abh)a.get(paramaao);
    abh localabh1 = localabh2;
    if (localabh2 == null)
    {
      localabh1 = abh.a();
      a.put(paramaao, localabh1);
    }
    a |= 0x1;
  }
  
  public void c(aao paramaao, zz paramzz)
  {
    abh localabh2 = (abh)a.get(paramaao);
    abh localabh1 = localabh2;
    if (localabh2 == null)
    {
      localabh1 = abh.a();
      a.put(paramaao, localabh1);
    }
    c = paramzz;
    a |= 0x8;
  }
  
  void d(aao paramaao)
  {
    paramaao = (abh)a.get(paramaao);
    if (paramaao == null) {
      return;
    }
    a &= 0xFFFFFFFE;
  }
  
  void e(aao paramaao)
  {
    int i = b.a() - 1;
    for (;;)
    {
      if (i >= 0)
      {
        if (paramaao == b.b(i)) {
          b.a(i);
        }
      }
      else
      {
        paramaao = (abh)a.remove(paramaao);
        if (paramaao != null) {
          abh.a(paramaao);
        }
        return;
      }
      i -= 1;
    }
  }
}

/* Location:
 * Qualified Name:     abg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */