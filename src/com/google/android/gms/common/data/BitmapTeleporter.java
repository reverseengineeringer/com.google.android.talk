package com.google.android.gms.common.data;

import aal;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fkl;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public class BitmapTeleporter
  implements SafeParcelable
{
  public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new fkl();
  final int a;
  ParcelFileDescriptor b;
  final int c;
  private Bitmap d;
  private boolean e;
  private File f;
  
  public BitmapTeleporter(int paramInt1, ParcelFileDescriptor paramParcelFileDescriptor, int paramInt2)
  {
    a = paramInt1;
    b = paramParcelFileDescriptor;
    c = paramInt2;
    d = null;
    e = false;
  }
  
  public BitmapTeleporter(Bitmap paramBitmap)
  {
    a = 1;
    b = null;
    c = 0;
    d = paramBitmap;
    e = true;
  }
  
  private static void a(Closeable paramCloseable)
  {
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  /* Error */
  private java.io.FileOutputStream b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 56	com/google/android/gms/common/data/BitmapTeleporter:f	Ljava/io/File;
    //   4: ifnonnull +13 -> 17
    //   7: new 58	java/lang/IllegalStateException
    //   10: dup
    //   11: ldc 60
    //   13: invokespecial 63	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: ldc 65
    //   19: ldc 67
    //   21: aload_0
    //   22: getfield 56	com/google/android/gms/common/data/BitmapTeleporter:f	Ljava/io/File;
    //   25: invokestatic 73	java/io/File:createTempFile	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    //   28: astore_1
    //   29: new 75	java/io/FileOutputStream
    //   32: dup
    //   33: aload_1
    //   34: invokespecial 78	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   37: astore_2
    //   38: aload_0
    //   39: aload_1
    //   40: ldc 79
    //   42: invokestatic 85	android/os/ParcelFileDescriptor:open	(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    //   45: putfield 36	com/google/android/gms/common/data/BitmapTeleporter:b	Landroid/os/ParcelFileDescriptor;
    //   48: aload_1
    //   49: invokevirtual 89	java/io/File:delete	()Z
    //   52: pop
    //   53: aload_2
    //   54: areturn
    //   55: astore_1
    //   56: new 58	java/lang/IllegalStateException
    //   59: dup
    //   60: ldc 91
    //   62: aload_1
    //   63: invokespecial 94	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   66: athrow
    //   67: astore_1
    //   68: new 58	java/lang/IllegalStateException
    //   71: dup
    //   72: ldc 96
    //   74: invokespecial 63	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   77: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	78	0	this	BitmapTeleporter
    //   28	21	1	localFile	File
    //   55	8	1	localIOException	IOException
    //   67	1	1	localFileNotFoundException	java.io.FileNotFoundException
    //   37	17	2	localFileOutputStream	java.io.FileOutputStream
    // Exception table:
    //   from	to	target	type
    //   17	29	55	java/io/IOException
    //   29	48	67	java/io/FileNotFoundException
  }
  
  public Bitmap a()
  {
    Object localObject1;
    if (!e) {
      localObject1 = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(b));
    }
    try
    {
      byte[] arrayOfByte = new byte[((DataInputStream)localObject1).readInt()];
      int i = ((DataInputStream)localObject1).readInt();
      int j = ((DataInputStream)localObject1).readInt();
      Object localObject2 = Bitmap.Config.valueOf(((DataInputStream)localObject1).readUTF());
      ((DataInputStream)localObject1).read(arrayOfByte);
      a((Closeable)localObject1);
      localObject1 = ByteBuffer.wrap(arrayOfByte);
      localObject2 = Bitmap.createBitmap(i, j, (Bitmap.Config)localObject2);
      ((Bitmap)localObject2).copyPixelsFromBuffer((Buffer)localObject1);
      d = ((Bitmap)localObject2);
      e = true;
      return d;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("Could not read from parcel file descriptor", localIOException);
    }
    finally
    {
      a((Closeable)localObject1);
    }
  }
  
  public void a(File paramFile)
  {
    if (paramFile == null) {
      throw new NullPointerException("Cannot set null temp directory");
    }
    f = paramFile;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bitmap localBitmap;
    Object localObject;
    byte[] arrayOfByte;
    if (b == null)
    {
      localBitmap = d;
      localObject = ByteBuffer.allocate(localBitmap.getRowBytes() * localBitmap.getHeight());
      localBitmap.copyPixelsToBuffer((Buffer)localObject);
      arrayOfByte = ((ByteBuffer)localObject).array();
      localObject = new DataOutputStream(b());
    }
    try
    {
      ((DataOutputStream)localObject).writeInt(arrayOfByte.length);
      ((DataOutputStream)localObject).writeInt(localBitmap.getWidth());
      ((DataOutputStream)localObject).writeInt(localBitmap.getHeight());
      ((DataOutputStream)localObject).writeUTF(localBitmap.getConfig().toString());
      ((DataOutputStream)localObject).write(arrayOfByte);
      a((Closeable)localObject);
      int i = aal.p(paramParcel, 20293);
      aal.c(paramParcel, 1, a);
      aal.a(paramParcel, 2, b, paramInt | 0x1);
      aal.c(paramParcel, 3, c);
      aal.q(paramParcel, i);
      b = null;
      return;
    }
    catch (IOException paramParcel)
    {
      throw new IllegalStateException("Could not write into unlinked file", paramParcel);
    }
    finally
    {
      a((Closeable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.BitmapTeleporter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */