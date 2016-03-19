public enum bhw
{
  public final String f;
  
  private bhw(String paramString)
  {
    f = paramString;
  }
  
  public String a(String paramString)
  {
    String str = String.valueOf(f);
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      return str.concat(paramString);
    }
    return new String(str);
  }
  
  public boolean b(String paramString)
  {
    return (paramString != null) && (paramString.startsWith(f));
  }
  
  public String c(String paramString)
  {
    if (!b(paramString)) {
      return null;
    }
    return paramString.substring(f.length());
  }
}

/* Location:
 * Qualified Name:     bhw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */