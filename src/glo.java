import android.util.Log;

public final class glo
{
  private fij<glp> b(fic paramfic, String paramString1, String paramString2)
  {
    if (Log.isLoggable("PeopleClientCall", 3)) {
      aal.a("loadOwnerCoverPhoto", new Object[] { paramString1, paramString2 });
    }
    return paramfic.a(new gdd(this, paramfic, paramString1, paramString2));
  }
  
  public fij<glp> a(fic paramfic, long paramLong)
  {
    if (Log.isLoggable("PeopleClientCall", 3)) {
      aal.a("loadContactThumbnailByContactId", new Object[] { Long.valueOf(paramLong) });
    }
    return paramfic.a(new gdb(this, paramfic, paramLong));
  }
  
  public fij<glp> a()
  {
    fic localfic;
    String str1;
    String str2;
    return b(localfic, str1, str2);
  }
  
  public fij<glp> a()
  {
    String str1;
    String str2;
    int i;
    if (Log.isLoggable("PeopleClientCall", 3)) {
      aal.a("loadOwnerAvatar", new Object[] { str1, str2, Integer.valueOf(i), Integer.valueOf(1) });
    }
    fic localfic;
    return localfic.a(new gdc(this, localfic, str1, str2, i, 1));
  }
}

/* Location:
 * Qualified Name:     glo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */