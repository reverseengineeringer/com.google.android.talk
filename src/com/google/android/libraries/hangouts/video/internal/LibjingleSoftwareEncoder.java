package com.google.android.libraries.hangouts.video.internal;

import hbs;
import hdr;
import hlp;

public final class LibjingleSoftwareEncoder
  implements hdr
{
  private final RendererManager a;
  private int b;
  private hlp c;
  private boolean d;
  private int e;
  private boolean f;
  private final LibjingleSoftwareEncoder.EncoderInputData g = new LibjingleSoftwareEncoder.EncoderInputData();
  
  public LibjingleSoftwareEncoder(RendererManager paramRendererManager)
  {
    a = paramRendererManager;
    b = -1;
  }
  
  public void a()
  {
    b = a.a(0);
    a.initializeGLContext(b);
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (b == -1) {
      hbs.a("Asked to setResolution without first calling initializeGLContext.");
    }
    do
    {
      return;
      hlp localhlp = new hlp(paramInt1, paramInt2);
      if (!paramBoolean) {
        break;
      }
      localObject = new hlp(paramInt1 & 0xFFFFFFF8, paramInt2 & 0xFFFFFFFE);
      if ((c == null) || (!c.equals(localhlp)))
      {
        c = localhlp;
        a.setIntParam(b, "sub_indims", localhlp.a());
        a.setIntParam(b, "sub_outdims", ((hlp)localObject).a());
        RendererManager localRendererManager = a;
        paramInt1 = b;
        paramInt2 = a;
        int i = a;
        localRendererManager.setIntParam(paramInt1, "sub_inclip", b - b | paramInt2 - i << 16);
      }
    } while (d == paramBoolean);
    d = paramBoolean;
    Object localObject = a;
    paramInt2 = b;
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      ((RendererManager)localObject).setIntParam(paramInt2, "sub_screencast", paramInt1);
      return;
      if (paramInt1 * paramInt2 >= 518400)
      {
        localObject = new hlp(paramInt1 & 0xFFFFFFC0, paramInt2 & 0xFFFFFFF8);
        break;
      }
      if (paramInt1 * paramInt2 >= 129600)
      {
        localObject = new hlp(paramInt1 & 0xFFFFFFE0, paramInt2 & 0xFFFFFFFC);
        break;
      }
      localObject = new hlp(paramInt1 & 0xFFFFFFF8, paramInt2 & 0xFFFFFFFE);
      break;
    }
  }
  
  public void a(long paramLong)
  {
    g.timestampNanos = paramLong;
    g.isFake = true;
    a.renderFrame(b, g, null);
  }
  
  public void a(boolean paramBoolean) {}
  
  public boolean a(int paramInt, long paramLong, boolean paramBoolean, float[] paramArrayOfFloat)
  {
    if (b == -1)
    {
      hbs.a("Asked to encode a frame without first calling initializeGLContext.");
      return false;
    }
    int j;
    if (f != paramBoolean)
    {
      f = paramBoolean;
      paramArrayOfFloat = a;
      j = b;
      if (!paramBoolean) {
        break label123;
      }
    }
    label123:
    for (int i = 36197;; i = 3553)
    {
      paramArrayOfFloat.setIntParam(j, "sub_intextype", i);
      if (e != paramInt)
      {
        e = paramInt;
        a.setIntParam(b, "sub_intex", paramInt);
      }
      g.timestampNanos = paramLong;
      g.isFake = false;
      a.renderFrame(b, g, null);
      return true;
    }
  }
  
  public int b()
  {
    return 0;
  }
  
  public void c()
  {
    if (b == -1) {
      return;
    }
    a.releaseRenderer(b);
    b = -1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.LibjingleSoftwareEncoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */