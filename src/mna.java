import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.util.ByteArrayBuffer;

public final class mna
{
  private static final ByteArrayBuffer a = a(mnd.a, ": ");
  private static final ByteArrayBuffer b = a(mnd.a, "\r\n");
  private static final ByteArrayBuffer c = a(mnd.a, "--");
  private final String d;
  private final Charset e;
  private final String f;
  private final List<mmy> g;
  private final int h;
  
  public mna(String paramString1, Charset paramCharset, String paramString2, int paramInt)
  {
    if (paramString2 == null) {
      throw new IllegalArgumentException("Multipart boundary may not be null");
    }
    d = paramString1;
    e = mnd.a;
    f = paramString2;
    g = new ArrayList();
    h = paramInt;
  }
  
  private static ByteArrayBuffer a(Charset paramCharset, String paramString)
  {
    paramCharset = paramCharset.encode(CharBuffer.wrap(paramString));
    paramString = new ByteArrayBuffer(paramCharset.remaining());
    paramString.append(paramCharset.array(), paramCharset.position(), paramCharset.remaining());
    return paramString;
  }
  
  private void a(int paramInt, OutputStream paramOutputStream, boolean paramBoolean)
  {
    ByteArrayBuffer localByteArrayBuffer = a(e, f);
    Iterator localIterator = g.iterator();
    if (localIterator.hasNext())
    {
      mmy localmmy = (mmy)localIterator.next();
      a(c, paramOutputStream);
      a(localByteArrayBuffer, paramOutputStream);
      a(b, paramOutputStream);
      Object localObject = localmmy.b();
      switch (mnb.a[(paramInt - 1)])
      {
      }
      for (;;)
      {
        a(b, paramOutputStream);
        if (paramBoolean) {
          localmmy.a().a(paramOutputStream);
        }
        a(b, paramOutputStream);
        break;
        localObject = ((mmz)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          mne localmne = (mne)((Iterator)localObject).next();
          a(localmne.a(), paramOutputStream);
          a(a, paramOutputStream);
          a(localmne.b(), paramOutputStream);
          a(b, paramOutputStream);
        }
        a(localmmy.b().a("Content-Disposition"), e, paramOutputStream);
        if (localmmy.a().e() != null) {
          a(localmmy.b().a("Content-Type"), e, paramOutputStream);
        }
      }
    }
    a(c, paramOutputStream);
    a(localByteArrayBuffer, paramOutputStream);
    a(c, paramOutputStream);
    a(b, paramOutputStream);
  }
  
  private static void a(String paramString, OutputStream paramOutputStream)
  {
    a(a(mnd.a, paramString), paramOutputStream);
  }
  
  private static void a(String paramString, Charset paramCharset, OutputStream paramOutputStream)
  {
    a(a(paramCharset, paramString), paramOutputStream);
  }
  
  private static void a(mne parammne, Charset paramCharset, OutputStream paramOutputStream)
  {
    a(parammne.a(), paramCharset, paramOutputStream);
    a(a, paramOutputStream);
    a(parammne.b(), paramCharset, paramOutputStream);
    a(b, paramOutputStream);
  }
  
  private static void a(ByteArrayBuffer paramByteArrayBuffer, OutputStream paramOutputStream)
  {
    paramOutputStream.write(paramByteArrayBuffer.buffer(), 0, paramByteArrayBuffer.length());
  }
  
  public List<mmy> a()
  {
    return g;
  }
  
  public void a(OutputStream paramOutputStream)
  {
    a(h, paramOutputStream, true);
  }
  
  public void a(mmy parammmy)
  {
    if (parammmy == null) {
      return;
    }
    g.add(parammmy);
  }
  
  public long b()
  {
    Object localObject = g.iterator();
    long l1 = 0L;
    while (((Iterator)localObject).hasNext())
    {
      long l2 = ((mmy)((Iterator)localObject).next()).a().d();
      if (l2 >= 0L) {
        l1 = l2 + l1;
      } else {
        return -1L;
      }
    }
    localObject = new ByteArrayOutputStream();
    try
    {
      a(h, (OutputStream)localObject, false);
      int i = ((ByteArrayOutputStream)localObject).toByteArray().length;
      return i + l1;
    }
    catch (IOException localIOException) {}
    return -1L;
  }
}

/* Location:
 * Qualified Name:     mna
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */