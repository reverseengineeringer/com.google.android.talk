package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;
import hbs;
import hcd;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@UsedByNative
public final class RendererManager
{
  private static final Object b = new Object();
  private static Map<Integer, Renderer> c;
  private final DecoderManager a;
  @UsedByNative
  private long mNativeContext;
  
  static {}
  
  public RendererManager(hcd arg1)
  {
    nativeInit();
    a = ???.h();
    synchronized (b)
    {
      c = new HashMap();
      return;
    }
  }
  
  public static void a(Renderer paramRenderer)
  {
    synchronized (b)
    {
      if (c != null) {
        c.put(Integer.valueOf(mRendererID), paramRenderer);
      }
      return;
    }
  }
  
  public static void b(Renderer paramRenderer)
  {
    synchronized (b)
    {
      if (c != null) {
        c.remove(Integer.valueOf(mRendererID));
      }
      return;
    }
  }
  
  public static void c()
  {
    synchronized (b)
    {
      if (c != null)
      {
        Iterator localIterator = c.values().iterator();
        if (localIterator.hasNext()) {
          localIterator.next();
        }
      }
    }
  }
  
  private final native void nativeInit();
  
  private final native void nativeRelease();
  
  @UsedByNative
  static void notifyFrameReceived(int paramInt)
  {
    synchronized (b)
    {
      if (c == null) {
        return;
      }
      Renderer localRenderer = (Renderer)c.get(Integer.valueOf(paramInt));
      if (localRenderer != null)
      {
        localRenderer.f();
        return;
      }
    }
  }
  
  public int a(int paramInt)
  {
    hbs.a(paramInt, 0, 3);
    return nativeInstantiateRenderer(paramInt);
  }
  
  public void a()
  {
    nativeRelease();
    a.a();
    synchronized (b)
    {
      c = null;
      return;
    }
  }
  
  public long b()
  {
    return mNativeContext;
  }
  
  final native int getIntParam(int paramInt, String paramString);
  
  final native boolean initializeGLContext(int paramInt);
  
  final native int nativeInstantiateRenderer(int paramInt);
  
  public final native void notifyFrameRendered(int paramInt);
  
  public final native void releaseRenderer(int paramInt);
  
  final native void renderFrame(int paramInt, Object paramObject1, Object paramObject2);
  
  final native void setIntParam(int paramInt1, String paramString, int paramInt2);
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.RendererManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */