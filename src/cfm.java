import java.util.Iterator;
import java.util.List;

final class cfm
  extends hcv
{
  cfm(cfc paramcfc) {}
  
  public void a(hil paramhil, atn paramatn)
  {
    int j = 0;
    if (a.q == null)
    {
      super.a(paramhil, paramatn);
      return;
    }
    int i;
    if ((paramatn instanceof hin)) {
      if (paramhil.k())
      {
        paramatn = a.a.iterator();
        while (paramatn.hasNext()) {
          ((hku)paramatn.next()).a((hip)paramhil);
        }
        i = 0;
      }
    }
    for (;;)
    {
      int k = a.q.H();
      if ((i != 0) && (k == 1))
      {
        paramhil = a.a.iterator();
        while (paramhil.hasNext()) {
          ((hku)paramhil.next()).c();
        }
        break;
        if (paramhil.i())
        {
          ezi.a("Babel_calls", "Starting outgoing ringtone without media", new Object[0]);
          a.q.I();
          i = 0;
          continue;
        }
        if (paramhil.f()) {
          break label385;
        }
        a.q.a(paramhil);
        i = 1;
        continue;
        if (((paramatn instanceof hik)) && (!paramhil.k()))
        {
          if (paramhil.j())
          {
            a.q.a(paramhil);
            i = 1;
            continue;
          }
          if (paramhil.h())
          {
            a.q.b(paramhil);
            i = 0;
            continue;
          }
          if (!paramhil.i()) {
            break label385;
          }
          ezi.a("Babel_calls", "Starting outgoing ringtone after media established.", new Object[0]);
          a.q.I();
          i = 0;
          continue;
        }
        if (!(paramatn instanceof hio)) {
          break label385;
        }
        paramatn = (hio)paramatn;
        if (!paramhil.f()) {}
        for (i = 1;; i = 0)
        {
          a.q.a(paramhil, paramatn.a());
          k = 0;
          j = i;
          i = k;
          break;
        }
      }
      if ((j == 0) || (k != 0)) {
        break;
      }
      paramhil = a.a.iterator();
      while (paramhil.hasNext()) {
        ((hku)paramhil.next()).h();
      }
      break;
      label385:
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     cfm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */