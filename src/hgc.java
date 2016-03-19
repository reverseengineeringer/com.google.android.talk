import android.graphics.RectF;
import android.opengl.GLES20;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class hgc
{
  public int a;
  public int b;
  public int c;
  public boolean d;
  public int e;
  public int f;
  public final FloatBuffer g;
  public final FloatBuffer h;
  private final String i;
  private boolean j;
  private final RectF k = new RectF(0.0F, 0.0F, 0.0F, 0.0F);
  private final RectF l = new RectF(0.0F, 0.0F, 0.0F, 0.0F);
  private boolean m;
  private float[] n = hll.a;
  private boolean o;
  private int p;
  private int q;
  private int r;
  private int s;
  private int t;
  private int u;
  private int v;
  private final RectF w = new RectF(0.0F, 0.0F, 0.0F, 0.0F);
  private final float[] x = new float[8];
  private final RectF y = new RectF(0.0F, 0.0F, 0.0F, 0.0F);
  private final float[] z = new float[8];
  
  public hgc(String paramString)
  {
    i = paramString;
    g = ByteBuffer.allocateDirect(x.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
    h = ByteBuffer.allocateDirect(z.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
  }
  
  private static void a(RectF paramRectF, float[] paramArrayOfFloat)
  {
    paramArrayOfFloat[0] = left;
    paramArrayOfFloat[1] = bottom;
    paramArrayOfFloat[2] = right;
    paramArrayOfFloat[3] = bottom;
    paramArrayOfFloat[4] = right;
    paramArrayOfFloat[5] = top;
    paramArrayOfFloat[6] = left;
    paramArrayOfFloat[7] = top;
  }
  
  public void a()
  {
    GLES20.glDeleteProgram(p);
    GLES20.glDeleteProgram(q);
    p = 0;
    q = 0;
    r = 0;
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramInt1 != a) || (paramInt2 != b) || (paramInt3 != c) || (paramBoolean1 != d) || (paramBoolean2 != j))
    {
      a = paramInt1;
      b = paramInt2;
      c = paramInt3;
      d = paramBoolean1;
      j = paramBoolean2;
      o = true;
    }
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if ((paramInt1 != e) || (paramInt2 != f) || (paramBoolean != m))
    {
      e = paramInt1;
      f = paramInt2;
      m = paramBoolean;
      o = true;
    }
  }
  
  public void a(RectF paramRectF)
  {
    boolean bool2 = false;
    String str;
    if (!k.equals(paramRectF))
    {
      str = String.valueOf(paramRectF);
      str = String.valueOf(str).length() + 15 + "Bad crop rect: " + str;
      if ((left < 0.0F) || (top < 0.0F) || (right < 0.0F) || (bottom < 0.0F)) {
        break label236;
      }
      bool1 = true;
      hbs.a(str, bool1);
      if ((left > 1.0F) || (top > 1.0F) || (right > 1.0F) || (bottom > 1.0F)) {
        break label241;
      }
      bool1 = true;
      label134:
      hbs.a(str, bool1);
      if (left + right >= 1.0F) {
        break label246;
      }
    }
    label236:
    label241:
    label246:
    for (boolean bool1 = true;; bool1 = false)
    {
      hbs.a(str, bool1);
      bool1 = bool2;
      if (top + bottom < 1.0F) {
        bool1 = true;
      }
      hbs.a(str, bool1);
      k.left = left;
      k.top = top;
      k.right = right;
      k.bottom = bottom;
      o = true;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label134;
    }
  }
  
  public void b(RectF paramRectF)
  {
    boolean bool2 = false;
    if ((left >= 0.0F) && (top >= 0.0F) && (right >= 0.0F) && (bottom >= 0.0F)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      hbs.a("Expected condition to be true", bool1);
      bool1 = bool2;
      if (left <= 1.0F)
      {
        bool1 = bool2;
        if (top <= 1.0F)
        {
          bool1 = bool2;
          if (right <= 1.0F)
          {
            bool1 = bool2;
            if (bottom <= 1.0F) {
              bool1 = true;
            }
          }
        }
      }
      hbs.a("Expected condition to be true", bool1);
      if (!l.equals(paramRectF))
      {
        l.left = left;
        l.top = top;
        l.right = right;
        l.bottom = bottom;
        o = true;
      }
      return;
    }
  }
  
  public void b(float[] paramArrayOfFloat)
  {
    n = paramArrayOfFloat;
  }
  
  void c()
  {
    float f9 = 1.0F;
    if (!o) {
      return;
    }
    float f12 = 1.0F - k.left - k.right;
    float f11 = 1.0F - k.top - k.bottom;
    int i1 = (int)(b * f12);
    int i2 = (int)(c * f11);
    float f1 = i1 / i2;
    float f10 = e / f;
    float f2;
    float f3;
    float f4;
    if (m) {
      if (f10 > f1)
      {
        f1 = Math.min((f10 - f1) / f10, 0.5F) / 2.0F;
        f2 = 0.0F;
        f3 = f1;
        f4 = 0.0F;
      }
    }
    for (;;)
    {
      float f7 = f1;
      float f8 = f2;
      float f5 = f3;
      float f6 = f4;
      if (l.right > 0.0F)
      {
        f7 = f1;
        f8 = f2;
        f5 = f3;
        f6 = f4;
        if (l.bottom > 0.0F)
        {
          f6 = l.left;
          f5 = l.top;
          f8 = l.right;
          f7 = l.bottom;
          f6 = Math.min(f4, f6 * f12);
          f5 = Math.min(f3, f5 * f11);
          f8 = Math.min(f2, f12 - f8 * f12);
          f7 = Math.min(f1, f11 - f7 * f11);
        }
      }
      f1 = k.left + f6;
      f2 = k.top;
      f3 = k.right + f8;
      f4 = k.bottom;
      if (d)
      {
        w.left = (1.0F - f1);
        w.right = f3;
        label329:
        w.top = (f2 + f5);
        w.bottom = (1.0F - (f4 + f7));
        a(w, x);
        g.put(x).position(0);
        f3 = i1;
        f1 = i2;
        f4 = i1;
        f2 = i2;
        f3 = i1 - f3 * f6 - f8 * f4;
        f1 = i2 - f5 * f1 - f7 * f2;
        if (f10 <= f3 / f1) {
          break label567;
        }
        f2 = f / f1 * f3 / e;
        f1 = 1.0F;
      }
      for (;;)
      {
        y.left = (-f2);
        y.top = f1;
        y.right = f2;
        y.bottom = (-f1);
        a(y, z);
        h.put(z).position(0);
        o = false;
        return;
        f4 = Math.min((f1 - f10) / f1, 0.5F) / 2.0F;
        f2 = f4;
        f3 = 0.0F;
        f1 = 0.0F;
        break;
        w.left = f1;
        w.right = (1.0F - f3);
        break label329;
        label567:
        f1 = f1 * (e / f3) / f;
        f2 = f9;
      }
      f1 = 0.0F;
      f2 = 0.0F;
      f3 = 0.0F;
      f4 = 0.0F;
    }
  }
  
  public boolean d()
  {
    if (p == 0)
    {
      p = aal.g("attribute vec4 vPosition;attribute vec2 a_texCoord;uniform mat4 a_xform;varying vec2 v_texCoord;void main() {  gl_Position = vPosition;  v_texCoord = vec2(a_xform * vec4(a_texCoord, 1.0, 1.0));}", "uniform sampler2D s_texture;precision mediump float;varying vec2 v_texCoord;void main() {  gl_FragColor = texture2D(s_texture, v_texCoord);}");
      aal.B("failed to compile regular shaders");
      if (p == 0) {
        throw new IllegalStateException("Failed to compile regular shaders; no GL error");
      }
      q = aal.g("attribute vec4 vPosition;attribute vec2 a_texCoord;uniform mat4 a_xform;varying vec2 v_texCoord;void main() {  gl_Position = vPosition;  v_texCoord = vec2(a_xform * vec4(a_texCoord, 1.0, 1.0));}", "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES s_texture;precision mediump float;varying vec2 v_texCoord;void main() {  gl_FragColor = texture2D(s_texture, v_texCoord);}");
      aal.B("failed to compile OES shaders");
      if (q == 0) {
        throw new IllegalStateException("Failed to compile OES shaders; no GL error");
      }
    }
    c();
    if (j) {}
    for (int i1 = q;; i1 = p)
    {
      if (i1 != r)
      {
        r = i1;
        t = GLES20.glGetAttribLocation(r, "a_texCoord");
        u = GLES20.glGetAttribLocation(r, "vPosition");
        s = GLES20.glGetUniformLocation(r, "s_texture");
        v = GLES20.glGetUniformLocation(r, "a_xform");
        aal.B("get..Location");
      }
      GLES20.glUseProgram(r);
      GLES20.glViewport(0, 0, e, f);
      GLES20.glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
      GLES20.glClear(16384);
      GLES20.glDisable(3042);
      GLES20.glDisable(2929);
      GLES20.glActiveTexture(33984);
      i1 = 3553;
      if (j) {
        i1 = 36197;
      }
      GLES20.glBindTexture(i1, a);
      GLES20.glUniformMatrix4fv(v, 1, false, n, 0);
      int i2 = s;
      hbs.a(33984, 33984, 34015);
      GLES20.glUniform1i(i2, 0);
      GLES20.glTexParameteri(i1, 10241, 9729);
      GLES20.glTexParameteri(i1, 10240, 9729);
      GLES20.glTexParameteri(i1, 10242, 33071);
      GLES20.glTexParameteri(i1, 10243, 33071);
      GLES20.glVertexAttribPointer(t, 2, 5126, false, 0, g);
      GLES20.glEnableVertexAttribArray(t);
      GLES20.glVertexAttribPointer(u, 2, 5126, false, 0, h);
      GLES20.glEnableVertexAttribArray(u);
      GLES20.glDrawArrays(6, 0, 4);
      aal.C("drawFrame");
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     hgc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */