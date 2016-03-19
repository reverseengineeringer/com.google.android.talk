import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import org.chromium.net.UrlRequest;

final class ihn
  extends ihj
{
  private final WritableByteChannel e;
  
  ihn(ihi paramihi, WritableByteChannel paramWritableByteChannel)
  {
    super(paramihi);
    e = paramWritableByteChannel;
  }
  
  public void a(UrlRequest paramUrlRequest, ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.flip();
    e.write(paramByteBuffer);
    paramByteBuffer.clear();
    paramUrlRequest.a(paramByteBuffer);
  }
}

/* Location:
 * Qualified Name:     ihn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */