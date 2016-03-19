import java.nio.ByteBuffer;
import org.chromium.net.UrlRequest;

final class ihk
  extends ihj
{
  private final ihl e;
  
  ihk(ihi paramihi, ihl paramihl)
  {
    super(paramihi);
    e = paramihl;
  }
  
  public void a(UrlRequest paramUrlRequest, ByteBuffer paramByteBuffer)
  {
    e.a(paramByteBuffer);
    if (paramByteBuffer.hasRemaining())
    {
      paramUrlRequest.a(paramByteBuffer);
      return;
    }
    paramUrlRequest.a(ByteBuffer.allocateDirect(8192));
  }
}

/* Location:
 * Qualified Name:     ihk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */