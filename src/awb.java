public final class awb
  extends awa
{
  private volatile boolean a;
  
  public void a()
  {
    if (a) {
      throw new IllegalStateException("Already released");
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     awb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */