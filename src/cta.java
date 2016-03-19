public final class cta
  implements ial<ctb>
{
  static boolean a(hqb paramhqb)
  {
    return (dvd.u()) || (paramhqb.d("allowed_for_domain"));
  }
  
  static boolean b(hqb paramhqb)
  {
    return (paramhqb.d("chat_archive_enabled")) || (!paramhqb.d("allowed_for_domain"));
  }
  
  static boolean c(hqb paramhqb)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramhqb.a("account_age_group", 0) == 3)
    {
      bool1 = bool2;
      if (paramhqb.d("blocked_for_child")) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static boolean d(hqb paramhqb)
  {
    if (!paramhqb.a("gaia_id")) {}
    while ((a(paramhqb)) && (b(paramhqb)) && (!c(paramhqb))) {
      return false;
    }
    return true;
  }
  
  public boolean e(hqb paramhqb)
  {
    if (paramhqb.d("sms_only"))
    {
      paramhqb = dvd.d;
      return dvi.a();
    }
    return (paramhqb.a("gaia_id")) && (!d(paramhqb));
  }
}

/* Location:
 * Qualified Name:     cta
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */