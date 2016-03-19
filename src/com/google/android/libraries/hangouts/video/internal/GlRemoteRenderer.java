package com.google.android.libraries.hangouts.video.internal;

import aal;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.media.MediaFormat;
import android.view.Surface;
import hbs;
import hed;
import hee;
import hfu;
import hlc;
import java.util.concurrent.atomic.AtomicBoolean;

public final class GlRemoteRenderer
  extends Renderer
  implements SurfaceTexture.OnFrameAvailableListener
{
  public int a;
  public SurfaceTexture b;
  public Surface c;
  private int d;
  private final MediaCodecDecoder e;
  private final hfu f;
  private final hee g;
  private int h;
  private boolean i;
  private final AtomicBoolean j = new AtomicBoolean(false);
  private final hlc k = new hlc();
  
  public GlRemoteRenderer(RendererManager paramRendererManager, MediaCodecDecoder paramMediaCodecDecoder, hee paramhee, hfu paramhfu)
  {
    mRendererManager = paramRendererManager;
    mRendererID = mRendererManager.a(3);
    f = paramhfu;
    e = paramMediaCodecDecoder;
    g = paramhee;
    RendererManager.a(this);
  }
  
  public void a()
  {
    mRendererManager.initializeGLContext(mRendererID);
    d = mRendererManager.getIntParam(mRendererID, "sub_outtex");
    if (e != null)
    {
      hbs.a("Created intermediate texture twice", b);
      a = aal.q();
      b = new SurfaceTexture(a);
      b.setOnFrameAvailableListener(this);
      c = new Surface(b);
      e.a(c, null);
    }
  }
  
  public boolean a(GlRemoteRenderer.RendererFrameOutputData paramRendererFrameOutputData)
  {
    boolean bool1 = j.getAndSet(false);
    if ((bool1) && (b != null)) {
      b.updateTexImage();
    }
    boolean bool2 = i;
    Object localObject;
    if ((e != null) && (e.f()))
    {
      h = a;
      i = true;
      updatedTexture = bool1;
      if (updatedTexture)
      {
        localObject = e.h();
        if (localObject != null)
        {
          hfu.a((MediaFormat)localObject, k);
          frameWidth = k.b();
          frameHeight = k.c();
          localObject = k.g();
          if (localObject != null) {
            break label188;
          }
          cropLeft = 0;
          cropTop = 0;
          cropRight = 0;
          cropBottom = 0;
        }
      }
      if (bool1) {
        mRendererManager.notifyFrameRendered(mRendererID);
      }
    }
    for (;;)
    {
      if (bool2 != i) {
        f.i();
      }
      return updatedTexture;
      label188:
      cropLeft = ((int)(left * k.b()));
      cropTop = ((int)(top * k.c()));
      cropRight = ((int)(right * k.b()));
      cropBottom = ((int)(bottom * k.c()));
      break;
      h = d;
      i = false;
      mRendererManager.renderFrame(mRendererID, null, paramRendererFrameOutputData);
      cropLeft = 0;
      cropTop = 0;
      cropRight = (frameWidth - 1);
      cropBottom = (frameHeight - 1);
    }
  }
  
  public Surface b()
  {
    return c;
  }
  
  public int c()
  {
    return h;
  }
  
  public boolean d()
  {
    return i;
  }
  
  public void e()
  {
    int m = mRendererID;
    new StringBuilder(19).append("release ").append(m);
    m = mRendererID;
    RendererManager.b(this);
    mRendererID = -1;
    mRendererManager.releaseRenderer(m);
    if (e != null) {
      e.a(null, null);
    }
    g.a(new hed(this));
  }
  
  public void f()
  {
    f.g();
  }
  
  public void onFrameAvailable(SurfaceTexture paramSurfaceTexture)
  {
    j.set(true);
    f.g();
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.GlRemoteRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */