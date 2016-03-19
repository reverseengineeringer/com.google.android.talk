import android.opengl.GLES20;

public final class hdu
  extends hgc
{
  private int i = 0;
  private int j = 0;
  private float[] k = new float[16];
  
  public hdu(int paramInt)
  {
    super("FrameTransformer");
    a(paramInt, 0, 0, false, true);
  }
  
  public void a()
  {
    super.a();
    if (j != 0)
    {
      aal.s(j);
      j = 0;
    }
    if (i != 0)
    {
      aal.t(i);
      i = 0;
    }
  }
  
  public void a(hlp paramhlp)
  {
    a(a, a, b, d, true);
    a(a, b, false);
    if (j == 0) {
      j = aal.q();
    }
    if (i != 0) {
      aal.t(i);
    }
    if ((e != 0) && (f != 0))
    {
      int m = j;
      int n = e;
      int i1 = f;
      hlk.a(3, "vclib", 64 + "generateFrameBuffer tex=" + m + " size=" + n + "x" + i1);
      hbs.c();
      paramhlp = new int[1];
      GLES20.glGenFramebuffers(1, paramhlp, 0);
      GLES20.glBindFramebuffer(36160, paramhlp[0]);
      GLES20.glBindTexture(3553, m);
      GLES20.glTexImage2D(3553, 0, 6408, n, i1, 0, 6408, 5121, null);
      GLES20.glTexParameteri(3553, 10241, 9729);
      GLES20.glTexParameteri(3553, 10240, 9729);
      GLES20.glTexParameteri(3553, 10242, 33071);
      GLES20.glTexParameteri(3553, 10243, 33071);
      GLES20.glFramebufferTexture2D(36160, 36064, 3553, m, 0);
      aal.B("generateFrameBuffer");
      GLES20.glBindFramebuffer(36160, 0);
      i = paramhlp[0];
      a(k);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a(a, b, c, paramBoolean, true);
  }
  
  public boolean a(float[] paramArrayOfFloat)
  {
    if ((i == 0) || (e == 0) || (f == 0) || (b == 0) || (c == 0) || (a == 0)) {
      return false;
    }
    b(paramArrayOfFloat);
    System.arraycopy(paramArrayOfFloat, 0, k, 0, paramArrayOfFloat.length);
    GLES20.glBindFramebuffer(36160, i);
    super.d();
    GLES20.glBindFramebuffer(36160, 0);
    return true;
  }
  
  public int b()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     hdu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */