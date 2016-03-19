final class ipt
{
  private StringBuilder a = new StringBuilder(256);
  private int b = 0;
  
  public StringBuilder a()
  {
    b += 1;
    if (b == 1) {
      return a;
    }
    return new StringBuilder(256);
  }
  
  public void a(StringBuilder paramStringBuilder)
  {
    if (b <= 0) {
      throw new IllegalStateException("Cannot release more StringBuilders than have been acquired");
    }
    if ((b == 1) && (paramStringBuilder != a)) {
      throw new IllegalArgumentException("Tried to release wrong StringBuilder instance");
    }
    paramStringBuilder.setLength(0);
    b -= 1;
  }
}

/* Location:
 * Qualified Name:     ipt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */