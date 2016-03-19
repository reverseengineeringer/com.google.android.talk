import com.google.api.client.http.AbstractHttpContent;
import java.io.OutputStream;

public final class dnd
  extends AbstractHttpContent
{
  private static final boolean b = false;
  final lyi a;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public dnd(lyi paramlyi)
  {
    super("application/x-protobuf");
    a = paramlyi;
  }
  
  public long getLength()
  {
    int i = a.c();
    if (b)
    {
      String str = String.valueOf(a.toString());
      new StringBuilder(String.valueOf(str).length() + 56).append("NanoProtoHttpContent serialized size: ").append(i).append(" proto=").append(str);
    }
    return i;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = lyi.a(a);
    if (b)
    {
      int i = arrayOfByte.length;
      String str = String.valueOf(toString());
      new StringBuilder(String.valueOf(str).length() + 51).append("NanoProtoHttpContent write size: ").append(i).append(" proto=").append(str);
    }
    paramOutputStream.write(arrayOfByte);
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     dnd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */