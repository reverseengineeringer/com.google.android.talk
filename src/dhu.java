final class dhu
{
  final boolean a;
  final dhy b;
  
  private dhu(dhy paramdhy)
  {
    this(paramdhy, false);
  }
  
  private dhu(dhy paramdhy, boolean paramBoolean)
  {
    b = paramdhy;
    a = paramBoolean;
  }
  
  public static dhu a(String paramString)
  {
    if (paramString.length() == 0) {
      throw new IllegalArgumentException("separator may not be empty or null");
    }
    return new dhu(new dhy(paramString));
  }
  
  public dhu a()
  {
    return new dhu(b, true);
  }
  
  public Iterable<String> a(CharSequence paramCharSequence)
  {
    return new dhv(this, paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     dhu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */