import java.io.IOException;

public final class lyg
  extends IOException
{
  private static final long serialVersionUID = -1616151763072450476L;
  
  public lyg(String paramString)
  {
    super(paramString);
  }
  
  static lyg a()
  {
    return new lyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }
  
  static lyg b()
  {
    return new lyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }
  
  static lyg c()
  {
    return new lyg("CodedInputStream encountered a malformed varint.");
  }
  
  static lyg d()
  {
    return new lyg("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }
}

/* Location:
 * Qualified Name:     lyg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */