import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

final class aoh
  implements ajf<ByteBuffer>
{
  private final File a;
  
  public aoh(File paramFile)
  {
    a = paramFile;
  }
  
  public void a() {}
  
  public void a(ahs paramahs, ajg<? super ByteBuffer> paramajg)
  {
    try
    {
      paramahs = avh.a(a);
      paramajg.a(paramahs);
      return;
    }
    catch (IOException paramahs)
    {
      paramajg.a(paramahs);
    }
  }
  
  public void b() {}
  
  public air c()
  {
    return air.a;
  }
  
  public Class<ByteBuffer> d()
  {
    return ByteBuffer.class;
  }
}

/* Location:
 * Qualified Name:     aoh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */