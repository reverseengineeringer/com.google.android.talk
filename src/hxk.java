import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

final class hxk
  extends FilterOutputStream
{
  private final ByteBuffer a = ByteBuffer.allocate(4);
  
  public hxk(OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public hxk a(int paramInt)
  {
    a.rewind();
    a.putInt(paramInt);
    out.write(a.array());
    return this;
  }
  
  public hxk a(hxl paramhxl)
  {
    a((int)paramhxl.a());
    a((int)paramhxl.b());
    return this;
  }
  
  public hxk a(ByteOrder paramByteOrder)
  {
    a.order(paramByteOrder);
    return this;
  }
  
  public hxk a(short paramShort)
  {
    a.rewind();
    a.putShort(paramShort);
    out.write(a.array(), 0, 2);
    return this;
  }
}

/* Location:
 * Qualified Name:     hxk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */