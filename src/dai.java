import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

final class dai
  extends eap
{
  dai(dad paramdad) {}
  
  public void a(int paramInt1, bfd parambfd, dwd paramdwd, eau parameau, int paramInt2)
  {
    super.a(paramInt1, parambfd, paramdwd, parameau, paramInt2);
    if (paramInt1 != a.al) {
      return;
    }
    for (;;)
    {
      try
      {
        parambfd = a.getActivity();
        if (parambfd == null) {
          return;
        }
        if (parameau.b() == 1)
        {
          hbs.b(dhm.e, a.ak);
          hbs.b(dhm.f, a.ak);
          a.b.a(a, b, c, a.c.a());
          return;
        }
        paramInt1 = parameau.b();
        parameau = String.valueOf(paramdwd);
        if (paramdwd != null)
        {
          parambfd = a;
          parambfd = String.valueOf(parambfd);
          ezi.e("Babel", String.valueOf(parameau).length() + 55 + String.valueOf(parambfd).length() + "couldn't create conversation; error code: " + paramInt1 + " " + parameau + " " + parambfd, new Object[0]);
        }
        else
        {
          parambfd = "NULL";
        }
      }
      finally
      {
        RealTimeChatService.b(a.e);
      }
    }
  }
}

/* Location:
 * Qualified Name:     dai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */