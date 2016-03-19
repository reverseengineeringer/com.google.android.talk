public abstract class auu<Z>
  extends auw
{
  private final int a = Integer.MIN_VALUE;
  private final int b = Integer.MIN_VALUE;
  
  public auu()
  {
    this((byte)0);
  }
  
  private auu(byte paramByte) {}
  
  public final void a(auv paramauv)
  {
    if (!avq.a(a, b))
    {
      paramauv = String.valueOf("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: ");
      int i = a;
      int j = b;
      throw new IllegalArgumentException(String.valueOf(paramauv).length() + 100 + paramauv + i + " and height: " + j + ", either provide dimensions in the constructor or call override()");
    }
    paramauv.a(a, b);
  }
}

/* Location:
 * Qualified Name:     auu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */