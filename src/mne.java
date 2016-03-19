public final class mne
{
  private final String a;
  private final String b;
  
  mne(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a);
    localStringBuilder.append(": ");
    localStringBuilder.append(b);
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     mne
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */