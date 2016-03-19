public abstract class lwc<MessageType extends lwc<MessageType, BuilderType>, BuilderType extends lwb<MessageType, BuilderType>>
  extends lvy<MessageType, BuilderType>
  implements lwr
{
  public lvv<lvx> d = new lvv();
  
  public <MessageType extends lwp> boolean a(MessageType paramMessageType, lvp paramlvp, lvt paramlvt, int paramInt)
  {
    int j = 0;
    int i = paramInt & 0x7;
    int k = paramInt >>> 3;
    lvs locallvs = paramlvt.a(paramMessageType, k);
    if (locallvs != null) {
      if (i == lvv.a(d.b(), false)) {
        i = 0;
      }
    }
    while (i != 0)
    {
      return a(paramInt, paramlvp);
      if ((d.d) && (d.c.c()) && (i == lvv.a(d.b(), true)))
      {
        i = 0;
        j = 1;
      }
      else
      {
        i = 1;
      }
    }
    if (j != 0)
    {
      paramInt = paramlvp.b(paramlvp.s());
      if (d.b() == lxo.n) {
        while (paramlvp.t() > 0)
        {
          i = paramlvp.n();
          paramMessageType = d.f().a(i);
          if (paramMessageType == null) {
            return true;
          }
          d.b(d, locallvs.a(paramMessageType));
        }
      }
      while (paramlvp.t() > 0)
      {
        paramMessageType = lvv.a(paramlvp, d.b());
        d.b(d, paramMessageType);
      }
      paramlvp.c(paramInt);
    }
    for (;;)
    {
      return true;
      switch (lvz.a[d.c().ordinal()])
      {
      default: 
        paramMessageType = lvv.a(paramlvp, d.b());
        label297:
        if (!d.d()) {
          break label469;
        }
        d.b(d, locallvs.a(paramMessageType));
      }
    }
    if (!d.d())
    {
      paramMessageType = (lwp)d.a(d);
      if (paramMessageType == null) {}
    }
    for (paramMessageType = paramMessageType.h();; paramMessageType = null)
    {
      Object localObject = paramMessageType;
      if (paramMessageType == null) {
        localObject = locallvs.b().i();
      }
      if (d.b() == lxo.j) {
        paramlvp.a(locallvs.a(), (lwq)localObject, paramlvt);
      }
      for (;;)
      {
        paramMessageType = ((lwq)localObject).i();
        break;
        paramlvp.a((lwq)localObject, paramlvt);
      }
      paramInt = paramlvp.n();
      paramlvp = d.f().a(paramInt);
      paramMessageType = paramlvp;
      if (paramlvp != null) {
        break label297;
      }
      a(k, paramInt);
      return true;
      label469:
      d.a(d, locallvs.a(paramMessageType));
      break;
    }
  }
  
  public final void e()
  {
    super.e();
    d.a();
  }
  
  public boolean j()
  {
    return d.e();
  }
  
  public lwd k()
  {
    return new lwd(this, true);
  }
  
  public int l()
  {
    return d.f();
  }
}

/* Location:
 * Qualified Name:     lwc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */