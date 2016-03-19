import com.google.android.libraries.hangouts.video.internal.LibjingleSoftwareEncoder;
import com.google.android.libraries.hangouts.video.internal.MediaCodecSimulcastEncoder;
import java.util.Arrays;

public final class hdi
  implements hdr
{
  final hcd a;
  final hdm b;
  hds c;
  hee d;
  int e;
  boolean f;
  hlp g;
  private final hdu h;
  private MediaCodecSimulcastEncoder i;
  private LibjingleSoftwareEncoder j;
  private int k;
  private float[] l = new float[16];
  
  public hdi(int paramInt1, hcd paramhcd, boolean paramBoolean, hds paramhds, int paramInt2, int paramInt3)
  {
    a = paramhcd;
    c = paramhds;
    d = paramhcd.e();
    k = 0;
    if (paramBoolean) {
      i = new MediaCodecSimulcastEncoder(paramhcd.g(), d, paramInt2, paramInt3);
    }
    j = new LibjingleSoftwareEncoder(paramhcd.f());
    b = new hdm(this);
    aal.a(new hdj(this, paramhcd));
    h = new hdu(paramInt1);
  }
  
  private void a(int paramInt)
  {
    if ((k == paramInt) || (paramInt == -1)) {}
    do
    {
      return;
      k = paramInt;
    } while (c == null);
    d.a(new hdk(this, paramInt));
  }
  
  public void a()
  {
    if (i != null) {
      i.a();
    }
    if (j != null) {
      j.a();
    }
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    f = paramBoolean;
    g = new hlp(paramInt1, paramInt2);
    h.a(g);
    hlp localhlp;
    if (paramBoolean)
    {
      localhlp = g;
      if (j != null)
      {
        j.a(a, b, paramBoolean);
        if (i != null) {
          j.a(1L);
        }
      }
      if (i != null) {
        i.a(a, b, paramBoolean);
      }
      return;
    }
    if (b() != -1) {}
    for (paramInt1 = b();; paramInt1 = 0)
    {
      paramInt2 = hgu.b(paramInt1).c();
      paramInt1 = paramInt2;
      if (e != 0) {
        paramInt1 = Math.min(e, paramInt2);
      }
      localhlp = hlp.a(g, paramInt1);
      break;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    h.a(paramBoolean);
  }
  
  public boolean a(int paramInt, long paramLong, boolean paramBoolean, float[] paramArrayOfFloat)
  {
    int m;
    if (i != null) {
      if (!i.a(paramInt, paramLong, paramBoolean, paramArrayOfFloat))
      {
        m = 1;
        n = m;
        if (m == 0)
        {
          a(i.b());
          j.a(paramLong);
        }
      }
    }
    for (int n = m;; n = 1)
    {
      if (n != 0)
      {
        if (Arrays.equals(paramArrayOfFloat, hll.a)) {
          break label143;
        }
        hll.a(paramArrayOfFloat, hll.a(180), l);
        h.a(l);
        paramInt = h.b();
      }
      label143:
      for (;;)
      {
        j.a(paramInt, paramLong, false, l);
        a(j.b());
        return true;
        m = 0;
        break;
      }
    }
  }
  
  public int b()
  {
    return k;
  }
  
  public void c()
  {
    aal.a(new hdl(this));
    if (i != null)
    {
      i.c();
      i = null;
    }
    if (j != null)
    {
      j.c();
      j = null;
    }
    h.a();
  }
}

/* Location:
 * Qualified Name:     hdi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */