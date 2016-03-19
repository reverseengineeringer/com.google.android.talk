class hmf<M extends lyi>
{
  final hni a;
  final hmj<M> b;
  final boolean c;
  final hnj d;
  final hlv<M> e;
  
  hmf(hmd paramhmd, int paramInt)
  {
    a = new hni(paramhmd.b());
    if (hmk.a == paramInt) {}
    for (b = new hmi(this);; b = new hmg(this))
    {
      c = paramhmd.a();
      return;
    }
  }
  
  hmf(hnj paramhnj, hlv<M> paramhlv, hmd paramhmd, Integer paramInteger)
  {
    this(paramhmd, paramInteger);
    d = paramhnj;
    e = paramhlv;
  }
  
  public void a(String paramString, M paramM)
  {
    b.a(paramString, paramM);
    a.b();
  }
  
  public boolean a()
  {
    return (c) && (!a.a());
  }
  
  protected void b(String paramString, M paramM)
  {
    if (paramM == null)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0)
      {
        "metric is null, skipping recorded metric for event: ".concat(paramString);
        return;
      }
      new String("metric is null, skipping recorded metric for event: ");
      return;
    }
    paramM = hml.a(e.a(paramM));
    if (paramString != null) {
      c = paramString;
    }
    d.a(paramM);
  }
}

/* Location:
 * Qualified Name:     hmf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */