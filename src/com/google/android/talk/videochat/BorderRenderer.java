package com.google.android.talk.videochat;

import android.graphics.Rect;
import android.opengl.GLES20;
import com.google.android.videochat.util.RendererUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class BorderRenderer
{
  private final EdgeCoordinates[] mAllEdges = { mTopEdge, mLeftEdge, mBottomEdge, mRightEdge };
  private final EdgeCoordinates mBottomEdge = new EdgeCoordinates();
  private final float[] mBoxVertices = new float[8];
  private final FloatRect mDestFloatRect = new FloatRect();
  private float mFractPixelX;
  private float mFractPixelY;
  private int mGLProgram;
  private int mHeight;
  private int mInnerAlphaHandle;
  private int mInnerColorHandle;
  private int mInnerColorPixelCountHandle;
  private int mLastInnerBorderPixels;
  private int mLastOuterBorderPixels;
  private final Rect mLastRect = new Rect();
  private boolean mLastRectIsInset;
  private final EdgeCoordinates mLeftEdge = new EdgeCoordinates();
  private final String mName;
  private float mOnePixelX;
  private float mOnePixelY;
  private int mOuterAlphaHandle;
  private int mOuterColorHandle;
  private int mOuterColorPixelCountHandle;
  private final EdgeCoordinates mRightEdge = new EdgeCoordinates();
  private boolean mSurfaceDimensionsChanged;
  private int mTexCoordHandle;
  private final float[] mTexVertices = new float[8];
  private final EdgeCoordinates mTopEdge = new EdgeCoordinates();
  private int mTriangleVerticesHandle;
  private int mWidth;
  
  public BorderRenderer(String paramString)
  {
    mName = paramString;
  }
  
  private void clearVertices(float[] paramArrayOfFloat)
  {
    paramArrayOfFloat[7] = 0.0F;
    paramArrayOfFloat[6] = 0.0F;
    paramArrayOfFloat[5] = 0.0F;
    paramArrayOfFloat[4] = 0.0F;
    paramArrayOfFloat[3] = 0.0F;
    paramArrayOfFloat[2] = 0.0F;
    paramArrayOfFloat[1] = 0.0F;
    paramArrayOfFloat[0] = 0.0F;
  }
  
  private void pointsToVertices(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float[] paramArrayOfFloat)
  {
    paramArrayOfFloat[0] = paramFloat3;
    paramArrayOfFloat[1] = paramFloat4;
    paramArrayOfFloat[2] = paramFloat1;
    paramArrayOfFloat[3] = paramFloat4;
    paramArrayOfFloat[4] = paramFloat1;
    paramArrayOfFloat[5] = paramFloat2;
    paramArrayOfFloat[6] = paramFloat3;
    paramArrayOfFloat[7] = paramFloat2;
  }
  
  public void drawFrame(Rect paramRect, boolean paramBoolean, float paramFloat1, float paramFloat2, int paramInt1, float paramFloat3, float paramFloat4, int paramInt2, float paramFloat5)
  {
    GLES20.glUseProgram(mGLProgram);
    GLES20.glViewport(0, 0, mWidth, mHeight);
    RendererUtil.checkGlError("glViewport");
    if (mSurfaceDimensionsChanged)
    {
      mOnePixelX = (2.0F / mWidth);
      mOnePixelY = (2.0F / mHeight);
      mFractPixelX = (0.375F * mOnePixelX);
      mFractPixelY = (0.375F * mOnePixelY);
    }
    int i;
    if ((mLastInnerBorderPixels != paramInt1) || (mLastOuterBorderPixels != paramInt2) || (!mLastRect.equals(paramRect)) || (mLastRectIsInset != paramBoolean) || (mSurfaceDimensionsChanged))
    {
      mLastInnerBorderPixels = paramInt1;
      mLastOuterBorderPixels = paramInt2;
      mLastRect.set(paramRect);
      mLastRectIsInset = paramBoolean;
      mSurfaceDimensionsChanged = false;
      i = paramInt1 + paramInt2;
      if (!paramBoolean) {
        break label1333;
      }
      mDestFloatRect.left = (-1.0F + left * mOnePixelX + mOnePixelX * i);
      mDestFloatRect.top = (1.0F - top * mOnePixelY - mOnePixelY * i);
      mDestFloatRect.right = (-1.0F + right * mOnePixelX - mOnePixelX * i);
    }
    for (mDestFloatRect.bottom = (1.0F - bottom * mOnePixelY + mOnePixelY * i);; mDestFloatRect.bottom = (1.0F - bottom * mOnePixelY))
    {
      float f1 = mDestFloatRect.left;
      float f2 = i;
      float f3 = mOnePixelX;
      float f4 = mFractPixelX;
      float f5 = mDestFloatRect.top;
      float f6 = i;
      float f7 = mOnePixelY;
      float f8 = mFractPixelY;
      float f9 = mDestFloatRect.right;
      float f10 = mFractPixelX;
      float f11 = mDestFloatRect.top;
      pointsToVertices(f1 - (f2 * f3 + f4), f6 * f7 + f8 + f5, f10 + f9, mFractPixelY + f11, mBoxVertices);
      clearVertices(mTexVertices);
      paramRect = mTexVertices;
      float[] arrayOfFloat = mTexVertices;
      f1 = i;
      arrayOfFloat[6] = f1;
      paramRect[4] = f1;
      paramRect = mTexVertices;
      arrayOfFloat = mTexVertices;
      f1 = (mDestFloatRect.right - mDestFloatRect.left) / mOnePixelX;
      arrayOfFloat[7] = f1;
      paramRect[1] = f1;
      mTopEdge.mTexVerticesBuffer.put(mTexVertices).position(0);
      mTopEdge.mBoxVerticesBuffer.put(mBoxVertices).position(0);
      pointsToVertices(mDestFloatRect.left - (i * mOnePixelX + mFractPixelX), mDestFloatRect.top - mFractPixelY, mDestFloatRect.left - mFractPixelX, mDestFloatRect.bottom - (i * mOnePixelY + mFractPixelY), mBoxVertices);
      clearVertices(mTexVertices);
      paramRect = mTexVertices;
      arrayOfFloat = mTexVertices;
      f1 = i;
      arrayOfFloat[4] = f1;
      paramRect[2] = f1;
      paramRect = mTexVertices;
      arrayOfFloat = mTexVertices;
      f1 = (mDestFloatRect.top - mDestFloatRect.bottom) / mOnePixelY;
      arrayOfFloat[7] = f1;
      paramRect[5] = f1;
      mLeftEdge.mTexVerticesBuffer.put(mTexVertices).position(0);
      mLeftEdge.mBoxVerticesBuffer.put(mBoxVertices).position(0);
      f1 = mDestFloatRect.left;
      f2 = mFractPixelX;
      f3 = mDestFloatRect.bottom;
      f4 = mFractPixelY;
      f5 = mDestFloatRect.right;
      pointsToVertices(f2 + f1, f3 - f4, i * mOnePixelX + mFractPixelX + f5, mDestFloatRect.bottom - (i * mOnePixelY + mFractPixelY), mBoxVertices);
      clearVertices(mTexVertices);
      paramRect = mTexVertices;
      arrayOfFloat = mTexVertices;
      f1 = i;
      arrayOfFloat[2] = f1;
      paramRect[0] = f1;
      paramRect = mTexVertices;
      arrayOfFloat = mTexVertices;
      f1 = (mDestFloatRect.right - mDestFloatRect.left) / mOnePixelX;
      arrayOfFloat[5] = f1;
      paramRect[3] = f1;
      mBottomEdge.mTexVerticesBuffer.put(mTexVertices).position(0);
      mBottomEdge.mBoxVerticesBuffer.put(mBoxVertices).position(0);
      f1 = mDestFloatRect.right;
      f2 = mFractPixelX;
      f3 = mDestFloatRect.top;
      f4 = i;
      f5 = mOnePixelY;
      f6 = mFractPixelY;
      f7 = mDestFloatRect.right;
      f8 = i;
      f9 = mOnePixelX;
      f10 = mFractPixelX;
      f11 = mDestFloatRect.bottom;
      pointsToVertices(f2 + f1, f4 * f5 + f6 + f3, f8 * f9 + f10 + f7, mFractPixelY + f11, mBoxVertices);
      clearVertices(mTexVertices);
      paramRect = mTexVertices;
      arrayOfFloat = mTexVertices;
      f1 = i;
      arrayOfFloat[6] = f1;
      paramRect[0] = f1;
      paramRect = mTexVertices;
      arrayOfFloat = mTexVertices;
      f1 = (mDestFloatRect.top - mDestFloatRect.bottom) / mOnePixelY;
      arrayOfFloat[3] = f1;
      paramRect[1] = f1;
      mRightEdge.mTexVerticesBuffer.put(mTexVertices).position(0);
      mRightEdge.mBoxVerticesBuffer.put(mBoxVertices).position(0);
      GLES20.glUniform1f(mInnerAlphaHandle, paramFloat1 * paramFloat3);
      GLES20.glUniform1f(mOuterAlphaHandle, paramFloat1 * paramFloat5);
      GLES20.glUniform1f(mInnerColorPixelCountHandle, paramInt1 - 0.5F);
      GLES20.glUniform1f(mOuterColorPixelCountHandle, paramInt2 + 0.5F);
      GLES20.glEnable(3042);
      GLES20.glBlendFunc(770, 771);
      GLES20.glUniform1f(mInnerColorHandle, paramFloat2);
      GLES20.glUniform1f(mOuterColorHandle, paramFloat4);
      GLES20.glEnableVertexAttribArray(mTriangleVerticesHandle);
      GLES20.glEnableVertexAttribArray(mTexCoordHandle);
      RendererUtil.checkGlError("setup");
      paramRect = mAllEdges;
      paramInt2 = paramRect.length;
      paramInt1 = 0;
      while (paramInt1 < paramInt2)
      {
        arrayOfFloat = paramRect[paramInt1];
        GLES20.glVertexAttribPointer(mTriangleVerticesHandle, 2, 5126, false, 0, mBoxVerticesBuffer);
        GLES20.glVertexAttribPointer(mTexCoordHandle, 2, 5126, false, 0, mTexVerticesBuffer);
        GLES20.glDrawArrays(6, 0, 4);
        RendererUtil.checkGlError("glDrawArrays");
        paramInt1 += 1;
      }
      label1333:
      mDestFloatRect.left = (-1.0F + left * mOnePixelX);
      mDestFloatRect.top = (1.0F - top * mOnePixelY);
      mDestFloatRect.right = (-1.0F + right * mOnePixelX);
    }
  }
  
  public void initGLContext()
  {
    mGLProgram = RendererUtil.createProgram("attribute vec4 vPosition;\nattribute vec2 a_texCoord;\nvarying vec2 v_texCoord;\nvoid main() {\n  gl_Position = vPosition;\n  v_texCoord = a_texCoord;\n}\n", "precision mediump float;\nuniform float u_outerAlpha;\nuniform float u_innerAlpha;\nuniform float u_innerColor;\nuniform float u_outerColor;\nuniform float u_innerColorPixelCount;\nuniform float u_outerColorPixelCount;\nvarying vec2 v_texCoord;\nvoid main() {\n  float selector = step(v_texCoord.x, u_innerColorPixelCount) *\n                   step(u_outerColorPixelCount, v_texCoord.y);\n  float color = mix(u_outerColor, u_innerColor, selector);\n  float alpha = mix(u_outerAlpha, u_innerAlpha, selector);\n  gl_FragColor = vec4(color, color, color, alpha);\n}\n");
    GLES20.glUseProgram(mGLProgram);
    mTriangleVerticesHandle = GLES20.glGetAttribLocation(mGLProgram, "vPosition");
    mTexCoordHandle = GLES20.glGetAttribLocation(mGLProgram, "a_texCoord");
    mInnerColorHandle = GLES20.glGetUniformLocation(mGLProgram, "u_innerColor");
    mOuterColorHandle = GLES20.glGetUniformLocation(mGLProgram, "u_outerColor");
    mInnerAlphaHandle = GLES20.glGetUniformLocation(mGLProgram, "u_innerAlpha");
    mOuterAlphaHandle = GLES20.glGetUniformLocation(mGLProgram, "u_outerAlpha");
    mInnerColorPixelCountHandle = GLES20.glGetUniformLocation(mGLProgram, "u_innerColorPixelCount");
    mOuterColorPixelCountHandle = GLES20.glGetUniformLocation(mGLProgram, "u_outerColorPixelCount");
    RendererUtil.checkGlError("get..Location");
    mSurfaceDimensionsChanged = true;
  }
  
  public void setViewSize(int paramInt1, int paramInt2)
  {
    mWidth = paramInt1;
    mHeight = paramInt2;
    mSurfaceDimensionsChanged = true;
  }
  
  private class EdgeCoordinates
  {
    final FloatBuffer mBoxVerticesBuffer = ByteBuffer.allocateDirect(mBoxVertices.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    final FloatBuffer mTexVerticesBuffer = ByteBuffer.allocateDirect(mTexVertices.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    
    EdgeCoordinates() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.BorderRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */