public final class lyo
{
  public static final int[] a = new int[0];
  public static final long[] b = new long[0];
  public static final float[] c = new float[0];
  public static final double[] d = new double[0];
  public static final boolean[] e = new boolean[0];
  public static final String[] f = new String[0];
  public static final byte[][] g = new byte[0][];
  public static final byte[] h = new byte[0];
  
  public static boolean a(lxy paramlxy, int paramInt)
  {
    return paramlxy.b(paramInt);
  }
  
  public static final int b(lxy paramlxy, int paramInt)
  {
    int i = 1;
    int j = paramlxy.r();
    paramlxy.b(paramInt);
    while (paramlxy.a() == paramInt)
    {
      paramlxy.b(paramInt);
      i += 1;
    }
    paramlxy.e(j);
    return i;
  }
}

/* Location:
 * Qualified Name:     lyo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */