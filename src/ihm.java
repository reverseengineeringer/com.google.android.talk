import java.nio.ByteBuffer;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

final class ihm
  extends UploadDataProvider
{
  private final byte[] a;
  private int b;
  
  ihm(byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
  }
  
  public long a()
  {
    return a.length;
  }
  
  public void a(UploadDataSink paramUploadDataSink)
  {
    b = 0;
    paramUploadDataSink.b();
  }
  
  public void a(UploadDataSink paramUploadDataSink, ByteBuffer paramByteBuffer)
  {
    int i = paramByteBuffer.position();
    paramByteBuffer.put(a, b, Math.min(paramByteBuffer.remaining(), a.length - b));
    int j = b;
    b = (paramByteBuffer.position() - i + j);
    paramUploadDataSink.a();
  }
}

/* Location:
 * Qualified Name:     ihm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */