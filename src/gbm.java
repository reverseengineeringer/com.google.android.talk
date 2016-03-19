import java.io.IOException;

public final class gbm
  extends IOException
{
  public gbm(String paramString)
  {
    super(paramString);
  }
  
  static gbm a()
  {
    return new gbm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }
  
  static gbm b()
  {
    return new gbm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }
  
  static gbm c()
  {
    return new gbm("CodedInputStream encountered a malformed varint.");
  }
}

/* Location:
 * Qualified Name:     gbm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */