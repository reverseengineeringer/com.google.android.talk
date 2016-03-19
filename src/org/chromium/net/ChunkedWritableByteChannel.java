package org.chromium.net;

import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;

@Deprecated
public class ChunkedWritableByteChannel
  implements WritableByteChannel
{
  private final ArrayList<ByteBuffer> a = new ArrayList();
  private ByteBuffer b;
  private ByteBuffer c;
  private int d;
  private boolean e;
  
  public ByteBuffer a()
  {
    if (b != null)
    {
      b.flip();
      c = b;
      b = null;
    }
    for (;;)
    {
      return c;
      if ((c == null) || (d != c.capacity())) {
        if ((c == null) && (a.size() == 1))
        {
          c = ((ByteBuffer)a.get(0));
        }
        else
        {
          c = ByteBuffer.allocateDirect(d);
          int j = a.size();
          int i = 0;
          while (i < j)
          {
            c.put((ByteBuffer)a.get(i));
            i += 1;
          }
          c.rewind();
        }
      }
    }
  }
  
  public void a(int paramInt)
  {
    if ((!a.isEmpty()) || (b != null)) {
      throw new IllegalStateException();
    }
    b = ByteBuffer.allocateDirect(paramInt);
  }
  
  public byte[] b()
  {
    byte[] arrayOfByte = new byte[d];
    if (b != null)
    {
      b.flip();
      b.get(arrayOfByte);
    }
    for (;;)
    {
      return arrayOfByte;
      int k = a.size();
      int i = 0;
      int j = 0;
      while (i < k)
      {
        ByteBuffer localByteBuffer = (ByteBuffer)a.get(i);
        int m = localByteBuffer.remaining();
        localByteBuffer.get(arrayOfByte, j, m);
        localByteBuffer.rewind();
        j += m;
        i += 1;
      }
    }
  }
  
  public void close()
  {
    e = true;
  }
  
  public boolean isOpen()
  {
    return !e;
  }
  
  public int write(ByteBuffer paramByteBuffer)
  {
    if (e) {
      throw new ClosedChannelException();
    }
    int i = paramByteBuffer.remaining();
    d += i;
    if (b != null)
    {
      if (i <= b.remaining())
      {
        b.put(paramByteBuffer);
        return i;
      }
      b.flip();
      a.add(b);
      b = null;
    }
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(i);
    localByteBuffer.put(paramByteBuffer).rewind();
    a.add(localByteBuffer);
    return i;
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.ChunkedWritableByteChannel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */