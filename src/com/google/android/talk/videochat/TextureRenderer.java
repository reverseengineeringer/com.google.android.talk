package com.google.android.talk.videochat;

import android.graphics.Rect;
import android.opengl.GLES20;
import com.google.android.videochat.util.LogUtil;
import com.google.android.videochat.util.RendererUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class TextureRenderer
{
  private final String TAG = "Talk/TextureRenderer";
  private int mAlphaHandle;
  private final FloatRect mDestinationFloatRect = new FloatRect();
  private final float[] mDestinationVertices = new float[8];
  private boolean mFlipSourceTexture;
  private int mGLProgram;
  private int mHeight;
  private int mInputTextureName;
  private Rect mLastDestinationRect;
  private final String mName;
  private final FloatBuffer mQuadVertices;
  private boolean mResetSourceTextureCoordinates;
  private int mTexCoordHandle;
  private int mTexHandle;
  private final FloatBuffer mTextureVertices;
  private int mTriangleVerticesHandle;
  private int mWidth;
  private float mXClip;
  private float mYClip;
  
  public TextureRenderer(String paramString)
  {
    mName = paramString;
    mTextureVertices = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
    mQuadVertices = ByteBuffer.allocateDirect(mDestinationVertices.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
  }
  
  private void setSourceTextureCoordinates()
  {
    float f1;
    if (mFlipSourceTexture) {
      f1 = 1.0F - mXClip;
    }
    for (float f2 = mXClip;; f2 = 1.0F - mXClip)
    {
      float f3 = mYClip;
      float f4 = mYClip;
      float f5 = mYClip;
      float f6 = mYClip;
      mTextureVertices.put(new float[] { f1, 1.0F - f3, f2, 1.0F - f4, f2, f5, f1, f6 }).position(0);
      return;
      f1 = mXClip;
    }
  }
  
  void PointsToVertices(FloatRect paramFloatRect, float[] paramArrayOfFloat)
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
  
  public void drawFrame(Rect paramRect, float paramFloat)
  {
    if ((paramRect.isEmpty()) || (paramFloat == 0.0F)) {
      return;
    }
    if (mResetSourceTextureCoordinates)
    {
      setSourceTextureCoordinates();
      mResetSourceTextureCoordinates = false;
    }
    if (!paramRect.equals(mLastDestinationRect))
    {
      mLastDestinationRect = new Rect(paramRect);
      LogUtil.LOGV("Talk/TextureRenderer", mName + " new dest (pixels) " + mLastDestinationRect.left + "," + mLastDestinationRect.top + " - " + mLastDestinationRect.right + "," + mLastDestinationRect.bottom + " / " + mWidth + "x" + mHeight);
      mDestinationFloatRect.left = (mLastDestinationRect.left / mWidth * 2.0F - 1.0F);
      mDestinationFloatRect.top = (1.0F - mLastDestinationRect.top / mHeight * 2.0F);
      mDestinationFloatRect.right = (mLastDestinationRect.right / mWidth * 2.0F - 1.0F);
      mDestinationFloatRect.bottom = (1.0F - mLastDestinationRect.bottom / mHeight * 2.0F);
      PointsToVertices(mDestinationFloatRect, mDestinationVertices);
      LogUtil.LOGV("Talk/TextureRenderer", mName + " new dest " + mDestinationFloatRect.left + "," + mDestinationFloatRect.top + " - " + mDestinationFloatRect.right + "," + mDestinationFloatRect.bottom);
      mQuadVertices.put(mDestinationVertices).position(0);
    }
    GLES20.glUseProgram(mGLProgram);
    GLES20.glViewport(0, 0, mWidth, mHeight);
    RendererUtil.checkGlError("glViewport");
    if (paramFloat == 1.0D) {
      GLES20.glDisable(3042);
    }
    for (;;)
    {
      GLES20.glUniform1f(mAlphaHandle, paramFloat);
      GLES20.glActiveTexture(33984);
      GLES20.glBindTexture(3553, mInputTextureName);
      GLES20.glUniform1i(mTexHandle, 0);
      GLES20.glVertexAttribPointer(mTexCoordHandle, 2, 5126, false, 0, mTextureVertices);
      GLES20.glEnableVertexAttribArray(mTexCoordHandle);
      GLES20.glVertexAttribPointer(mTriangleVerticesHandle, 2, 5126, false, 0, mQuadVertices);
      GLES20.glEnableVertexAttribArray(mTriangleVerticesHandle);
      RendererUtil.checkGlError("setup");
      GLES20.glDrawArrays(6, 0, 4);
      RendererUtil.checkGlError("glDrawArrays");
      return;
      GLES20.glEnable(3042);
      GLES20.glBlendFunc(770, 771);
    }
  }
  
  public void initGLContext()
  {
    mGLProgram = RendererUtil.createProgram("attribute vec4 vPosition;\nattribute vec2 a_texCoord;\nvarying vec2 v_texCoord;\nvoid main() {\n  gl_Position = vPosition;\n  v_texCoord = a_texCoord;\n}\n", "precision mediump float;\nuniform sampler2D s_texture;\nvarying vec2 v_texCoord;\nuniform float i_alpha;\nvoid main() {\n  gl_FragColor = texture2D(s_texture, v_texCoord);\n  gl_FragColor.a = i_alpha;\n}\n");
    mTexHandle = GLES20.glGetUniformLocation(mGLProgram, "s_texture");
    mTexCoordHandle = GLES20.glGetAttribLocation(mGLProgram, "a_texCoord");
    mTriangleVerticesHandle = GLES20.glGetAttribLocation(mGLProgram, "vPosition");
    mAlphaHandle = GLES20.glGetUniformLocation(mGLProgram, "i_alpha");
    RendererUtil.checkGlError("get..Location");
    mInputTextureName = -1;
    mResetSourceTextureCoordinates = true;
  }
  
  public void setFlipSourceTexture(boolean paramBoolean)
  {
    mFlipSourceTexture = paramBoolean;
    mResetSourceTextureCoordinates = true;
  }
  
  public void setInputTextureName(int paramInt)
  {
    LogUtil.LOGV("Talk/TextureRenderer", mName + " setInputTextureName " + paramInt);
    mInputTextureName = paramInt;
  }
  
  public void setSourceTextureClip(float paramFloat1, float paramFloat2)
  {
    if ((mXClip != paramFloat1) || (mYClip != paramFloat2))
    {
      mXClip = paramFloat1;
      mYClip = paramFloat2;
      mResetSourceTextureCoordinates = true;
    }
  }
  
  public void setViewSize(int paramInt1, int paramInt2)
  {
    mWidth = paramInt1;
    mHeight = paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.TextureRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */