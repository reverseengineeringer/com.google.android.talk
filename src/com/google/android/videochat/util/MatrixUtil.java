package com.google.android.videochat.util;

public final class MatrixUtil
{
  private static final float[] MATRIX_FLIP_H;
  private static final float[] MATRIX_FLIP_V;
  private static final float[] MATRIX_IDENTITY = { 1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F };
  private static final float[] MATRIX_ROTATE_180 = { -1.0F, 0.0F, 0.0F, 0.0F, 0.0F, -1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 1.0F, 1.0F, 0.0F, 1.0F };
  private static final float[] MATRIX_ROTATE_270 = { 0.0F, -1.0F, 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 1.0F, 0.0F, 1.0F };
  private static final float[] MATRIX_ROTATE_90;
  
  static
  {
    MATRIX_FLIP_H = new float[] { -1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 1.0F, 0.0F, 0.0F, 1.0F };
    MATRIX_FLIP_V = new float[] { 1.0F, 0.0F, 0.0F, 0.0F, 0.0F, -1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 1.0F, 0.0F, 1.0F };
    MATRIX_ROTATE_90 = new float[] { 0.0F, 1.0F, 0.0F, 0.0F, -1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 1.0F, 0.0F, 0.0F, 1.0F };
  }
  
  public static float[] getIdentityMatrix()
  {
    return MATRIX_IDENTITY;
  }
  
  public static float[] getRotate180Matrix()
  {
    return MATRIX_ROTATE_180;
  }
  
  public static float[] getRotate270Matrix()
  {
    return MATRIX_ROTATE_270;
  }
  
  public static float[] getRotate90Matrix()
  {
    return MATRIX_ROTATE_90;
  }
  
  public static void matrixMultiply4x4(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2, float[] paramArrayOfFloat3)
  {
    paramArrayOfFloat3[0] = (paramArrayOfFloat1[0] * paramArrayOfFloat2[0] + paramArrayOfFloat1[4] * paramArrayOfFloat2[1] + paramArrayOfFloat1[8] * paramArrayOfFloat2[2] + paramArrayOfFloat1[12] * paramArrayOfFloat2[3]);
    paramArrayOfFloat3[1] = (paramArrayOfFloat1[1] * paramArrayOfFloat2[0] + paramArrayOfFloat1[5] * paramArrayOfFloat2[1] + paramArrayOfFloat1[9] * paramArrayOfFloat2[2] + paramArrayOfFloat1[13] * paramArrayOfFloat2[3]);
    paramArrayOfFloat3[2] = (paramArrayOfFloat1[2] * paramArrayOfFloat2[0] + paramArrayOfFloat1[6] * paramArrayOfFloat2[1] + paramArrayOfFloat1[10] * paramArrayOfFloat2[2] + paramArrayOfFloat1[14] * paramArrayOfFloat2[3]);
    paramArrayOfFloat3[3] = (paramArrayOfFloat1[3] * paramArrayOfFloat2[0] + paramArrayOfFloat1[7] * paramArrayOfFloat2[1] + paramArrayOfFloat1[11] * paramArrayOfFloat2[2] + paramArrayOfFloat1[15] * paramArrayOfFloat2[3]);
    paramArrayOfFloat3[4] = (paramArrayOfFloat1[0] * paramArrayOfFloat2[4] + paramArrayOfFloat1[4] * paramArrayOfFloat2[5] + paramArrayOfFloat1[8] * paramArrayOfFloat2[6] + paramArrayOfFloat1[12] * paramArrayOfFloat2[7]);
    paramArrayOfFloat3[5] = (paramArrayOfFloat1[1] * paramArrayOfFloat2[4] + paramArrayOfFloat1[5] * paramArrayOfFloat2[5] + paramArrayOfFloat1[9] * paramArrayOfFloat2[6] + paramArrayOfFloat1[13] * paramArrayOfFloat2[7]);
    paramArrayOfFloat3[6] = (paramArrayOfFloat1[2] * paramArrayOfFloat2[4] + paramArrayOfFloat1[6] * paramArrayOfFloat2[5] + paramArrayOfFloat1[10] * paramArrayOfFloat2[6] + paramArrayOfFloat1[14] * paramArrayOfFloat2[7]);
    paramArrayOfFloat3[7] = (paramArrayOfFloat1[3] * paramArrayOfFloat2[4] + paramArrayOfFloat1[7] * paramArrayOfFloat2[5] + paramArrayOfFloat1[11] * paramArrayOfFloat2[6] + paramArrayOfFloat1[15] * paramArrayOfFloat2[7]);
    paramArrayOfFloat3[8] = (paramArrayOfFloat1[0] * paramArrayOfFloat2[8] + paramArrayOfFloat1[4] * paramArrayOfFloat2[9] + paramArrayOfFloat1[8] * paramArrayOfFloat2[10] + paramArrayOfFloat1[12] * paramArrayOfFloat2[11]);
    paramArrayOfFloat3[9] = (paramArrayOfFloat1[1] * paramArrayOfFloat2[8] + paramArrayOfFloat1[5] * paramArrayOfFloat2[9] + paramArrayOfFloat1[9] * paramArrayOfFloat2[10] + paramArrayOfFloat1[13] * paramArrayOfFloat2[11]);
    paramArrayOfFloat3[10] = (paramArrayOfFloat1[2] * paramArrayOfFloat2[8] + paramArrayOfFloat1[6] * paramArrayOfFloat2[9] + paramArrayOfFloat1[10] * paramArrayOfFloat2[10] + paramArrayOfFloat1[14] * paramArrayOfFloat2[11]);
    paramArrayOfFloat3[11] = (paramArrayOfFloat1[3] * paramArrayOfFloat2[8] + paramArrayOfFloat1[7] * paramArrayOfFloat2[9] + paramArrayOfFloat1[11] * paramArrayOfFloat2[10] + paramArrayOfFloat1[15] * paramArrayOfFloat2[11]);
    paramArrayOfFloat3[12] = (paramArrayOfFloat1[0] * paramArrayOfFloat2[12] + paramArrayOfFloat1[4] * paramArrayOfFloat2[13] + paramArrayOfFloat1[8] * paramArrayOfFloat2[14] + paramArrayOfFloat1[12] * paramArrayOfFloat2[15]);
    paramArrayOfFloat3[13] = (paramArrayOfFloat1[1] * paramArrayOfFloat2[12] + paramArrayOfFloat1[5] * paramArrayOfFloat2[13] + paramArrayOfFloat1[9] * paramArrayOfFloat2[14] + paramArrayOfFloat1[13] * paramArrayOfFloat2[15]);
    paramArrayOfFloat3[14] = (paramArrayOfFloat1[2] * paramArrayOfFloat2[12] + paramArrayOfFloat1[6] * paramArrayOfFloat2[13] + paramArrayOfFloat1[10] * paramArrayOfFloat2[14] + paramArrayOfFloat1[14] * paramArrayOfFloat2[15]);
    paramArrayOfFloat3[15] = (paramArrayOfFloat1[3] * paramArrayOfFloat2[12] + paramArrayOfFloat1[7] * paramArrayOfFloat2[13] + paramArrayOfFloat1[11] * paramArrayOfFloat2[14] + paramArrayOfFloat1[15] * paramArrayOfFloat2[15]);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.util.MatrixUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */