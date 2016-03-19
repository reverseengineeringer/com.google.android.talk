import android.util.Log;

public final class glg
{
  public fij<glk> a(fic paramfic, glj paramglj)
  {
    if (Log.isLoggable("PeopleClientCall", 3)) {
      aal.a("loadOwners", new Object[] { paramglj });
    }
    if (paramglj != null) {}
    for (;;)
    {
      return paramfic.a(new gcv(this, paramfic, paramglj));
      paramglj = glj.a;
    }
  }
  
  public fij<gli> a(fic paramfic, String paramString1, String paramString2, glh paramglh)
  {
    if (Log.isLoggable("PeopleClientCall", 3)) {
      aal.a("loadAggregatedPeople", new Object[] { paramString1, paramString2, paramglh });
    }
    return paramfic.a(new gcz(this, paramfic, paramString1, paramString2, paramglh));
  }
  
  public fij<glm> a(fic paramfic, String paramString1, String paramString2, gll paramgll)
  {
    if (Log.isLoggable("PeopleClientCall", 3)) {
      aal.a("loadPeople", new Object[] { paramString1, paramString2, paramgll });
    }
    return paramfic.a(new gcx(this, paramfic, paramString1, paramString2, paramgll));
  }
}

/* Location:
 * Qualified Name:     glg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */