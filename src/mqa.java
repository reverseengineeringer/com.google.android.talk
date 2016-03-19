import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

final class mqa
  implements UploadDataSink
{
  final AtomicReference<mqg> a = new AtomicReference(mqg.d);
  final Executor b;
  final Executor c;
  final HttpURLConnection d;
  WritableByteChannel e;
  final UploadDataProvider f;
  ByteBuffer g;
  long h;
  long i = 0L;
  
  mqa(mpe parammpe, Executor paramExecutor1, Executor paramExecutor2, HttpURLConnection paramHttpURLConnection, UploadDataProvider paramUploadDataProvider)
  {
    b = new mqb(this, parammpe, paramExecutor1);
    c = paramExecutor2;
    d = paramHttpURLConnection;
    f = paramUploadDataProvider;
  }
  
  public void a()
  {
    if (!a.compareAndSet(mqg.a, mqg.c)) {
      throw new IllegalStateException("Not expecting a read result, expecting: " + a.get());
    }
    c.execute(j.a(mqh.b, new mqc(this, false)));
  }
  
  void a(boolean paramBoolean)
  {
    b.execute(new mph(j, new mqf(this, paramBoolean)));
  }
  
  public void b()
  {
    if (!a.compareAndSet(mqg.b, mqg.c)) {
      throw new IllegalStateException("Not expecting a read result");
    }
    c();
  }
  
  void c()
  {
    b.execute(new mph(j, new mqe(this)));
  }
  
  void d()
  {
    if (e != null) {
      e.close();
    }
    mpe localmpe = j;
    k = 13;
    b.execute(localmpe.a(mqh.b, new mpn(localmpe)));
  }
}

/* Location:
 * Qualified Name:     mqa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */