import com.google.api.client.http.AbstractHttpContent;
import java.io.OutputStream;

final class hgy
  extends AbstractHttpContent
{
  private final byte[] a;
  
  protected hgy(byte[] paramArrayOfByte)
  {
    super("application/x-protobuf");
    a = paramArrayOfByte;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream.write(a);
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     hgy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */