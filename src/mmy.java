public final class mmy
{
  private final String a;
  private final mmz b;
  private final mng c;
  
  public mmy(String paramString, mng parammng)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Name may not be null");
    }
    if (parammng == null) {
      throw new IllegalArgumentException("Body may not be null");
    }
    a = paramString;
    c = parammng;
    b = new mmz();
    paramString = new StringBuilder();
    paramString.append("form-data; name=\"");
    paramString.append(a);
    paramString.append("\"");
    if (parammng.e() != null)
    {
      paramString.append("; filename=\"");
      paramString.append(parammng.e());
      paramString.append("\"");
    }
    a("Content-Disposition", paramString.toString());
    paramString = new StringBuilder();
    paramString.append(parammng.a());
    if (parammng.b() != null)
    {
      paramString.append("; charset=");
      paramString.append(parammng.b());
    }
    a("Content-Type", paramString.toString());
    a("Content-Transfer-Encoding", parammng.c());
  }
  
  private void a(String paramString1, String paramString2)
  {
    b.a(new mne(paramString1, paramString2));
  }
  
  public mng a()
  {
    return c;
  }
  
  public mmz b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     mmy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */