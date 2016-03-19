import android.support.rastermill.FrameSequence;

public final class hxx
{
  public final FrameSequence a;
  
  public hxx(FrameSequence paramFrameSequence)
  {
    a = paramFrameSequence;
  }
  
  /* Error */
  public static boolean a(java.nio.ByteBuffer paramByteBuffer)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: invokevirtual 21	java/nio/ByteBuffer:remaining	()I
    //   6: bipush 21
    //   8: if_icmpge +5 -> 13
    //   11: iconst_0
    //   12: ireturn
    //   13: aload_0
    //   14: iconst_0
    //   15: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   18: bipush 82
    //   20: if_icmpne +137 -> 157
    //   23: aload_0
    //   24: iconst_1
    //   25: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   28: bipush 73
    //   30: if_icmpne +127 -> 157
    //   33: aload_0
    //   34: iconst_2
    //   35: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   38: bipush 70
    //   40: if_icmpne +117 -> 157
    //   43: aload_0
    //   44: iconst_3
    //   45: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   48: bipush 70
    //   50: if_icmpne +107 -> 157
    //   53: aload_0
    //   54: bipush 8
    //   56: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   59: bipush 87
    //   61: if_icmpne +96 -> 157
    //   64: aload_0
    //   65: bipush 9
    //   67: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   70: bipush 69
    //   72: if_icmpne +85 -> 157
    //   75: aload_0
    //   76: bipush 10
    //   78: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   81: bipush 66
    //   83: if_icmpne +74 -> 157
    //   86: aload_0
    //   87: bipush 11
    //   89: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   92: bipush 80
    //   94: if_icmpne +63 -> 157
    //   97: aload_0
    //   98: bipush 12
    //   100: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   103: bipush 86
    //   105: if_icmpne +52 -> 157
    //   108: aload_0
    //   109: bipush 13
    //   111: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   114: bipush 80
    //   116: if_icmpne +41 -> 157
    //   119: aload_0
    //   120: bipush 14
    //   122: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   125: bipush 56
    //   127: if_icmpne +30 -> 157
    //   130: aload_0
    //   131: bipush 15
    //   133: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   136: istore_1
    //   137: iload_1
    //   138: bipush 88
    //   140: if_icmpne +17 -> 157
    //   143: iconst_1
    //   144: istore_1
    //   145: iload_1
    //   146: ifne +16 -> 162
    //   149: aload_0
    //   150: iconst_0
    //   151: invokevirtual 29	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   154: pop
    //   155: iconst_0
    //   156: ireturn
    //   157: iconst_0
    //   158: istore_1
    //   159: goto -14 -> 145
    //   162: aload_0
    //   163: bipush 20
    //   165: invokevirtual 25	java/nio/ByteBuffer:get	(I)B
    //   168: istore_1
    //   169: iload_1
    //   170: iconst_2
    //   171: iand
    //   172: ifeq +11 -> 183
    //   175: aload_0
    //   176: iconst_0
    //   177: invokevirtual 29	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   180: pop
    //   181: iload_2
    //   182: ireturn
    //   183: iconst_0
    //   184: istore_2
    //   185: goto -10 -> 175
    //   188: astore_3
    //   189: aload_0
    //   190: iconst_0
    //   191: invokevirtual 29	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   194: pop
    //   195: aload_3
    //   196: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	197	0	paramByteBuffer	java.nio.ByteBuffer
    //   136	36	1	i	int
    //   1	184	2	bool	boolean
    //   188	8	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   13	137	188	finally
    //   162	169	188	finally
  }
}

/* Location:
 * Qualified Name:     hxx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */