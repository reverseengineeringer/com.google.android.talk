import android.content.Context;

final class bkd
  implements bjo
{
  bkd(bkb parambkb) {}
  
  public void a()
  {
    ezi.a("Babel_ConvCreator", "Contact detail selection cancelled", new Object[0]);
    a.a(false);
  }
  
  public void a(bjn parambjn)
  {
    boolean bool2 = false;
    Object localObject = String.valueOf(parambjn.toString());
    if (((String)localObject).length() != 0)
    {
      localObject = "Selected ".concat((String)localObject);
      label28:
      ezi.a("Babel_ConvCreator", (String)localObject, new Object[0]);
      if (!aal.a(a.h, a.f)) {
        break label655;
      }
      ezi.a("Babel_ConvCreator", "Contact not added; invite needed", new Object[0]);
      if (b == null) {
        break label421;
      }
      a.g.a();
      localObject = b.b();
      boolean bool3 = ezm.j((String)localObject);
      if (bool3) {
        break label328;
      }
      bool1 = true;
      label113:
      localObject = new dur(bool1, bool3, (String)localObject);
      if (!a) {
        break label392;
      }
      localbkb = a;
      localObject = b.b();
      fii.a(localObject, "Shouldn't attempt to send invite with null invite string");
      parambjn = String.valueOf(ezi.b((String)localObject));
      if (parambjn.length() == 0) {
        break label333;
      }
    }
    cpv localcpv;
    Context localContext;
    bg localbg;
    String str;
    label328:
    label333:
    for (parambjn = "Invite dialog shown or invite sent to ".concat(parambjn);; parambjn = new String("Invite dialog shown or invite sent to "))
    {
      ezi.a("Babel_ConvCreator", parambjn, new Object[0]);
      localcpv = (cpv)d.a(cpv.class);
      localContext = b;
      localbg = a.getFragmentManager();
      str = h.e();
      parambjn = f;
      switch (cpw.a[parambjn.ordinal()])
      {
      default: 
        parambjn = String.valueOf(parambjn);
        throw new IllegalArgumentException(String.valueOf(parambjn).length() + 30 + "Unexpected conversation type: " + parambjn);
        localObject = new String("Selected ");
        break label28;
        bool1 = false;
        break label113;
      }
    }
    parambjn = cpx.f;
    localcpv.a(localContext, localbg, str, (String)localObject, null, parambjn);
    for (boolean bool1 = bool2;; bool1 = bool2)
    {
      a.a(bool1);
      return;
      parambjn = cpx.c;
      break;
      parambjn = cpx.b;
      break;
      label392:
      ezi.a("Babel_ConvCreator", "Invite not sent because contact is unreachable", new Object[0]);
      ((dur)localObject).a(a.b, true);
    }
    label421:
    bkb localbkb = a;
    localObject = c.b();
    fii.a(localObject, "Shouldn't attempt to send invite with null invite string");
    parambjn = String.valueOf(ezi.b((String)localObject));
    if (parambjn.length() != 0) {}
    for (parambjn = "Invite dialog shown or invite sent to ".concat(parambjn);; parambjn = new String("Invite dialog shown or invite sent to "))
    {
      ezi.a("Babel_ConvCreator", parambjn, new Object[0]);
      localcpv = (cpv)d.a(cpv.class);
      localContext = b;
      localbg = a.getFragmentManager();
      str = h.e();
      parambjn = f;
      switch (cpw.a[parambjn.ordinal()])
      {
      default: 
        parambjn = String.valueOf(parambjn);
        throw new IllegalArgumentException(String.valueOf(parambjn).length() + 30 + "Unexpected conversation type: " + parambjn);
      }
    }
    parambjn = cpx.f;
    for (;;)
    {
      localcpv.a(localContext, localbg, str, (String)localObject, null, parambjn);
      bool1 = bool2;
      break;
      parambjn = cpx.c;
      continue;
      parambjn = cpx.b;
    }
    label655:
    if (a.f == bkw.b) {
      hbs.b("Can't add contact for SMS conversation without phone number", b);
    }
    for (;;)
    {
      ezi.a("Babel_ConvCreator", "Contact added successfully", new Object[0]);
      if (!aal.a(dvd.e(a.g.a()), bhh.g)) {
        a.e.f();
      }
      a.e.a(bkb.a(a.h, parambjn));
      bool1 = true;
      break;
      if (a.f == bkw.c)
      {
        if ((a != null) || (b != null)) {}
        for (bool1 = true;; bool1 = false)
        {
          hbs.a("Can't add contact for audio call without Gaia or phone number", bool1);
          break;
        }
      }
      hbs.b("Can't add contact for video call/Hangouts conversation without Gaia", a);
    }
  }
}

/* Location:
 * Qualified Name:     bkd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */