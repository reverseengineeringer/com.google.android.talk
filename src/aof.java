import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class aof
  implements aiu<ByteBuffer>
{
  private static boolean a(ByteBuffer paramByteBuffer, File paramFile)
  {
    try
    {
      avh.a(paramByteBuffer, paramFile);
      return true;
    }
    catch (IOException paramByteBuffer) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     aof
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */