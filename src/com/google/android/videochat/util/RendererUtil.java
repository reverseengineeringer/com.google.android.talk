package com.google.android.videochat.util;

import android.opengl.GLES20;
import android.util.Log;

public class RendererUtil
{
  public static void checkGlError(String paramString)
  {
    int i = GLES20.glGetError();
    if (i != 0)
    {
      Log.e("vclib:RendererUtil", paramString + ": glError " + i);
      throw new RuntimeException(paramString + ": glError " + i);
    }
  }
  
  public static int createProgram(String paramString1, String paramString2)
  {
    int k = loadShader(35633, paramString1);
    int i;
    if (k == 0) {
      i = 0;
    }
    int j;
    do
    {
      int m;
      do
      {
        return i;
        m = loadShader(35632, paramString2);
        if (m == 0) {
          return 0;
        }
        j = GLES20.glCreateProgram();
        i = j;
      } while (j == 0);
      GLES20.glAttachShader(j, k);
      checkGlError("glAttachShader");
      GLES20.glAttachShader(j, m);
      checkGlError("glAttachShader");
      GLES20.glLinkProgram(j);
      paramString1 = new int[1];
      GLES20.glGetProgramiv(j, 35714, paramString1, 0);
      i = j;
    } while (paramString1[0] == 1);
    Log.e("vclib:RendererUtil", "Could not link program: ");
    Log.e("vclib:RendererUtil", GLES20.glGetProgramInfoLog(j));
    GLES20.glDeleteProgram(j);
    return 0;
  }
  
  public static int loadShader(int paramInt, String paramString)
  {
    int j = GLES20.glCreateShader(paramInt);
    int i = j;
    if (j != 0)
    {
      GLES20.glShaderSource(j, paramString);
      GLES20.glCompileShader(j);
      paramString = new int[1];
      GLES20.glGetShaderiv(j, 35713, paramString, 0);
      i = j;
      if (paramString[0] == 0)
      {
        Log.e("vclib:RendererUtil", "Could not compile shader " + paramInt + ":");
        Log.e("vclib:RendererUtil", GLES20.glGetShaderInfoLog(j));
        GLES20.glDeleteShader(j);
        i = 0;
      }
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.util.RendererUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */