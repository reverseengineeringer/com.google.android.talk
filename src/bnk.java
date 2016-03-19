import java.util.Iterator;

final class bnk
  implements bra
{
  bnk(bng parambng) {}
  
  public void a()
  {
    int j = 1;
    bng localbng = a;
    ksf localksf;
    int i;
    if (be.a(localbng.getChildFragmentManager()))
    {
      bng.b.b("sendMessageUiLatency");
      if ((aN.j()) && (i.h().size() > 0)) {
        aal.a(at, 2324);
      }
      aN.k();
      localksf = i.h();
      if (i.a() == null) {
        break label192;
      }
      i = 1;
      kyp localkyp = localksf.a();
      while (localkyp.hasNext())
      {
        bkq localbkq = (bkq)localkyp.next();
        if ((i != 0) || (aen.c(a)))
        {
          new brl(context, localksf, localbng).execute(new Void[0]);
          i = j;
        }
      }
    }
    for (;;)
    {
      if ((i != 0) || (localbng.b(localksf))) {
        localbng.ak();
      }
      i.i();
      return;
      label192:
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     bnk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */