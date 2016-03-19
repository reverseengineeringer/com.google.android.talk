public final class evw
{
  public evw(etk parametk) {}
  
  public void a()
  {
    ezi.c("Babel_telephony", "TeleSetupController.onGoogleVoiceAccountInfoUpdateSucceeded", new Object[0]);
    if (a.e != null)
    {
      a.e = null;
      a.m();
    }
  }
  
  public void b()
  {
    ezi.c("Babel_telephony", "TeleSetupController.onGoogleVoiceAccountInfoUpdateFailed", new Object[0]);
    if (a.e != null)
    {
      a.e = null;
      if (a.d())
      {
        a.a(false);
        a.m();
      }
    }
    else
    {
      return;
    }
    a.b(aal.qN);
  }
}

/* Location:
 * Qualified Name:     evw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */