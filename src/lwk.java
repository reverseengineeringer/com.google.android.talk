import java.io.IOException;

public final class lwk
  extends IOException
{
  private static final long serialVersionUID = -1616151763072450476L;
  private lwp a = null;
  
  public lwk(String paramString)
  {
    super(paramString);
  }
  
  static lwk b()
  {
    return new lwk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
  }
  
  static lwk c()
  {
    return new lwk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }
  
  static lwk d()
  {
    return new lwk("Protocol message tag had invalid wire type.");
  }
  
  static lwk e()
  {
    return new lwk("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }
  
  static lwk f()
  {
    return new lwk("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
  }
  
  public lwk a(lwp paramlwp)
  {
    a = paramlwp;
    return this;
  }
  
  public lwp a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     lwk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */