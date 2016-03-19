import java.io.File;

public final class aig
{
  private final String b;
  private final long c;
  private final long[] d;
  private final File[] e;
  
  aig(aib paramaib, String paramString, long paramLong, File[] paramArrayOfFile, long[] paramArrayOfLong)
  {
    b = paramString;
    c = paramLong;
    e = paramArrayOfFile;
    d = paramArrayOfLong;
  }
  
  public File a()
  {
    return e[0];
  }
}

/* Location:
 * Qualified Name:     aig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */