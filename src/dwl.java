public final class dwl
{
  final String a;
  final long b;
  final String[] c;
  
  public dwl(egd paramegd)
  {
    a = paramegd.a();
    b = paramegd.b();
    c = paramegd.c();
  }
  
  public dwl(String paramString, long paramLong, String[] paramArrayOfString)
  {
    a = paramString;
    b = paramLong;
    c = paramArrayOfString;
  }
  
  public void a(bfz parambfz)
  {
    if (c == null)
    {
      parambfz.d(a, b);
      bft.d(parambfz);
    }
    for (;;)
    {
      bft.d(parambfz, a);
      return;
      String[] arrayOfString = c;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = arrayOfString[i];
        localObject = parambfz.h(a, (String)localObject);
        if (localObject != null) {
          bft.a(parambfz, aal.a((Long)localObject, 0L));
        }
        i += 1;
      }
    }
  }
  
  public void a(dyx paramdyx)
  {
    paramdyx.a(new dou(a, b, c));
  }
}

/* Location:
 * Qualified Name:     dwl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */