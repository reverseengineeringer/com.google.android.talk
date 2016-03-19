public final class hbo
{
  public final hho a;
  public final hhs b;
  public final hhv c;
  public final hhy d;
  public final hib e;
  
  public hbo(hhr paramhhr, hbl paramhbl)
  {
    c = new hhv(paramhhr, paramhbl);
    d = new hhy(paramhhr, paramhbl);
    e = new hib(paramhhr, paramhbl);
    a = new hho(paramhhr, paramhbl);
    b = new hhs(paramhhr, paramhbl);
  }
  
  public <T extends hbm> T a(Class<T> paramClass)
  {
    if (paramClass == hbf.class) {
      return c;
    }
    if (paramClass == hbh.class) {
      return d;
    }
    if (paramClass == hbj.class) {
      return e;
    }
    if (paramClass == hbb.class) {
      return a;
    }
    if (paramClass == hbd.class) {
      return b;
    }
    paramClass = String.valueOf(paramClass.getSimpleName());
    if (paramClass.length() != 0) {}
    for (paramClass = "Unrecognized collection type ".concat(paramClass);; paramClass = new String("Unrecognized collection type ")) {
      throw new IllegalArgumentException(paramClass);
    }
  }
  
  public void a(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    hhv localhhv = null;
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject1 = null;
    switch (paramInt1)
    {
    default: 
    case 0: 
      try
      {
        hlk.a("vclib", 35 + "Unknown collection type " + paramInt1);
        return;
      }
      catch (lyg paramArrayOfByte)
      {
        hlk.b("vclib", "Unable to parse proto from bytes", paramArrayOfByte);
        return;
      }
      localhhv = c;
      if (paramArrayOfByte == null) {}
      for (paramArrayOfByte = (byte[])localObject1;; paramArrayOfByte = (khf)lyi.b(new khf(), paramArrayOfByte, paramArrayOfByte.length))
      {
        localhhv.a(paramInt2, paramArrayOfByte);
        return;
      }
    case 1: 
      localObject1 = d;
      if (paramArrayOfByte == null) {}
      for (paramArrayOfByte = localhhv;; paramArrayOfByte = (khk)lyi.b(new khk(), paramArrayOfByte, paramArrayOfByte.length))
      {
        ((hhy)localObject1).a(paramInt2, paramArrayOfByte);
        return;
      }
    case 2: 
      localObject1 = e;
      if (paramArrayOfByte == null) {}
      for (paramArrayOfByte = (byte[])localObject2;; paramArrayOfByte = (kja)lyi.b(new kja(), paramArrayOfByte, paramArrayOfByte.length))
      {
        ((hib)localObject1).a(paramInt2, paramArrayOfByte);
        return;
      }
    case 3: 
      localObject1 = a;
      if (paramArrayOfByte == null) {}
      for (paramArrayOfByte = (byte[])localObject3;; paramArrayOfByte = (kgd)lyi.b(new kgd(), paramArrayOfByte, paramArrayOfByte.length))
      {
        ((hho)localObject1).a(paramInt2, paramArrayOfByte);
        return;
      }
    }
    localObject1 = b;
    if (paramArrayOfByte == null) {}
    for (paramArrayOfByte = (byte[])localObject4;; paramArrayOfByte = (kgy)lyi.b(new kgy(), paramArrayOfByte, paramArrayOfByte.length))
    {
      ((hhs)localObject1).a(paramInt2, paramArrayOfByte);
      return;
    }
  }
  
  public void a(String paramString)
  {
    d.a(paramString);
  }
}

/* Location:
 * Qualified Name:     hbo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */