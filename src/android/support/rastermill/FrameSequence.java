package android.support.rastermill;

import android.graphics.Bitmap;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class FrameSequence
{
  private final int mDefaultLoopCount;
  private final int mFrameCount;
  private final int mHeight;
  private final long mNativeFrameSequence;
  private final boolean mOpaque;
  private final int mWidth;
  
  static
  {
    System.loadLibrary("framesequence");
  }
  
  private FrameSequence(long paramLong, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, int paramInt4)
  {
    mNativeFrameSequence = paramLong;
    mWidth = paramInt1;
    mHeight = paramInt2;
    mOpaque = paramBoolean;
    mFrameCount = paramInt3;
    mDefaultLoopCount = paramInt4;
  }
  
  public static FrameSequence decodeByteArray(byte[] paramArrayOfByte)
  {
    return decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static FrameSequence decodeByteArray(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException();
    }
    if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfByte.length)) {
      throw new IllegalArgumentException("invalid offset/length parameters");
    }
    return nativeDecodeByteArray(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public static FrameSequence decodeByteBuffer(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer == null) {
      throw new IllegalArgumentException();
    }
    if (!paramByteBuffer.isDirect())
    {
      if (paramByteBuffer.hasArray()) {
        return decodeByteArray(paramByteBuffer.array(), paramByteBuffer.position(), paramByteBuffer.remaining());
      }
      throw new IllegalArgumentException("Cannot have non-direct ByteBuffer with no byte array");
    }
    return nativeDecodeByteBuffer(paramByteBuffer, paramByteBuffer.position(), paramByteBuffer.remaining());
  }
  
  public static FrameSequence decodeStream(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException();
    }
    return nativeDecodeStream(paramInputStream, new byte['䀀']);
  }
  
  private static native long nativeCreateState(long paramLong);
  
  private static native FrameSequence nativeDecodeByteArray(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  private static native FrameSequence nativeDecodeByteBuffer(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2);
  
  private static native FrameSequence nativeDecodeStream(InputStream paramInputStream, byte[] paramArrayOfByte);
  
  private static native void nativeDestroyFrameSequence(long paramLong);
  
  private static native void nativeDestroyState(long paramLong);
  
  private static native long nativeGetFrame(long paramLong, int paramInt1, Bitmap paramBitmap, int paramInt2);
  
  FrameSequence.State createState()
  {
    if (mNativeFrameSequence == 0L) {
      throw new IllegalStateException("attempted to use incorrectly built FrameSequence");
    }
    long l = nativeCreateState(mNativeFrameSequence);
    if (l == 0L) {
      return null;
    }
    return new FrameSequence.State(l);
  }
  
  protected void finalize()
  {
    try
    {
      if (mNativeFrameSequence != 0L) {
        nativeDestroyFrameSequence(mNativeFrameSequence);
      }
      return;
    }
    finally
    {
      super.finalize();
    }
  }
  
  public int getDefaultLoopCount()
  {
    return mDefaultLoopCount;
  }
  
  public int getFrameCount()
  {
    return mFrameCount;
  }
  
  public int getHeight()
  {
    return mHeight;
  }
  
  public int getWidth()
  {
    return mWidth;
  }
  
  public boolean isOpaque()
  {
    return mOpaque;
  }
}

/* Location:
 * Qualified Name:     android.support.rastermill.FrameSequence
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */