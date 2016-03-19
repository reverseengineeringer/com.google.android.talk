import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ihl
{
  final List<ByteBuffer> a = new ArrayList();
  
  ByteBuffer a()
  {
    int i = 0;
    if (a.isEmpty()) {
      return ByteBuffer.allocateDirect(0);
    }
    if (a.size() == 1)
    {
      localObject1 = (ByteBuffer)a.get(0);
      if (((ByteBuffer)localObject1).hasRemaining()) {
        ((ByteBuffer)localObject1).flip();
      }
      ((ByteBuffer)localObject1).position(0);
      return (ByteBuffer)localObject1;
    }
    Object localObject1 = a.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (ByteBuffer)((Iterator)localObject1).next();
      ((ByteBuffer)localObject2).flip();
      i = ((ByteBuffer)localObject2).remaining() + i;
    }
    localObject1 = ByteBuffer.allocateDirect(i);
    Object localObject2 = a.iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((ByteBuffer)localObject1).put((ByteBuffer)((Iterator)localObject2).next());
    }
    ((ByteBuffer)localObject1).flip();
    return (ByteBuffer)localObject1;
  }
  
  void a(ByteBuffer paramByteBuffer)
  {
    if ((a.isEmpty()) || (a.get(a.size() - 1) != paramByteBuffer)) {
      a.add(paramByteBuffer);
    }
  }
}

/* Location:
 * Qualified Name:     ihl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */