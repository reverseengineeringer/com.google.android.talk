public final class aia<CHILD extends aia<CHILD, TranscodeType>, TranscodeType>
  implements Cloneable
{
  avc<? super TranscodeType> a = ava.b;
  
  public aia() {}
  
  public aia(byte paramByte)
  {
    this();
  }
  
  public aia(char paramChar)
  {
    this();
  }
  
  public aia(short paramShort)
  {
    this();
  }
  
  protected final CHILD a()
  {
    try
    {
      aia localaia = (aia)super.clone();
      return localaia;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
}

/* Location:
 * Qualified Name:     aia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */