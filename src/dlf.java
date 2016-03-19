final class dlf
{
  private final hv a = new hv((byte)0);
  
  public dns a(int paramInt, String paramString)
  {
    dns localdns = new dns(paramInt, paramString);
    a.a(paramString, localdns);
    return localdns;
  }
  
  public dns a(int paramInt, String paramString, boolean paramBoolean)
  {
    Object localObject2 = (dns)a.a(paramString);
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (a == paramInt) {}
    }
    else
    {
      localObject1 = null;
    }
    localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject2 = localObject1;
      if (paramBoolean) {
        localObject2 = a(paramInt, paramString);
      }
    }
    return (dns)localObject2;
  }
}

/* Location:
 * Qualified Name:     dlf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */