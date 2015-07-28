package com.google.android.talk.videochat;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

class BorderRenderer$EdgeCoordinates
{
  final FloatBuffer mBoxVerticesBuffer;
  final FloatBuffer mTexVerticesBuffer;
  
  BorderRenderer$EdgeCoordinates(BorderRenderer paramBorderRenderer)
  {
    mBoxVerticesBuffer = ByteBuffer.allocateDirect(BorderRenderer.access$000(paramBorderRenderer).length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    mTexVerticesBuffer = ByteBuffer.allocateDirect(BorderRenderer.access$100(paramBorderRenderer).length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.BorderRenderer.EdgeCoordinates
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */