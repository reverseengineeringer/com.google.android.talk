final class akq<ResourceType>
{
  final air a;
  
  public akq(akh paramakh, air paramair)
  {
    a = paramair;
  }
  
  public alr<Z> a(alr<Z> paramalr)
  {
    Class localClass = paramalr.c().getClass();
    Object localObject2;
    Object localObject1;
    if (a != air.d)
    {
      localObject2 = b.a.c(localClass);
      localObject1 = ((ajd)localObject2).a(paramalr, b.d, b.e);
    }
    for (;;)
    {
      if (!paramalr.equals(localObject1)) {
        paramalr.e();
      }
      ait localait;
      if (b.a.a((alr)localObject1))
      {
        paramalr = b.a.b((alr)localObject1);
        localait = paramalr.a(b.g);
        if (b.a.a(b.h)) {
          break label189;
        }
      }
      Object localObject3;
      label189:
      for (boolean bool = true;; bool = false)
      {
        localObject3 = localObject1;
        if (!b.f.a(bool, a, localait)) {
          break label246;
        }
        if (paramalr != null) {
          break label194;
        }
        throw new ax(((alr)localObject1).c().getClass());
        localait = ait.c;
        paramalr = null;
        break;
      }
      label194:
      if (localait == ait.a) {}
      for (localObject2 = new akd(b.h, b.c);; localObject2 = new alt(b.h, b.c, b.d, b.e, (ajd)localObject2, localClass, b.g))
      {
        localObject3 = alp.a((alr)localObject1);
        b.b.a((aiw)localObject2, paramalr, (alp)localObject3);
        label246:
        return (alr<Z>)localObject3;
        if (localait != ait.b) {
          break;
        }
      }
      paramalr = String.valueOf(localait);
      throw new IllegalArgumentException(String.valueOf(paramalr).length() + 18 + "Unknown strategy: " + paramalr);
      localObject1 = paramalr;
      localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     akq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */