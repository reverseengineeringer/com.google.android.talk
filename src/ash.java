public final class ash
  implements alr<byte[]>
{
  private final byte[] a;
  
  public ash(byte[] paramArrayOfByte)
  {
    a = ((byte[])aal.a(paramArrayOfByte, "Argument must not be null"));
  }
  
  public Class<byte[]> b()
  {
    return byte[].class;
  }
  
  public int d()
  {
    return a.length;
  }
  
  public void e() {}
}

/* Location:
 * Qualified Name:     ash
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */