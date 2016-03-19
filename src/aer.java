import android.content.Context;
import android.content.Intent;
import java.io.OutputStream;
import org.apache.http.entity.ByteArrayEntity;

public final class aer
  extends ByteArrayEntity
{
  private final Context a;
  private final byte[] b;
  private final long c;
  
  public aer(Context paramContext, long paramLong, byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
    a = paramContext;
    b = paramArrayOfByte;
    c = -1L;
  }
  
  private void a(int paramInt)
  {
    if (c > 0L)
    {
      Intent localIntent = new Intent("com.android.mms.PROGRESS_STATUS");
      localIntent.putExtra("progress", paramInt);
      localIntent.putExtra("token", c);
      a.sendBroadcast(localIntent);
    }
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("Output stream may not be null");
    }
    for (;;)
    {
      int m;
      int j;
      try
      {
        a(-1);
        m = b.length;
        i = 0;
      }
      finally
      {
        a(-2);
      }
      paramOutputStream.write(b, i, j);
      paramOutputStream.flush();
      int i = j + i;
      a(i * 100 / m);
      break label79;
      a(100);
      return;
      label79:
      if (i < m)
      {
        int k = m - i;
        j = k;
        if (k > 4096) {
          j = 4096;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     aer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */