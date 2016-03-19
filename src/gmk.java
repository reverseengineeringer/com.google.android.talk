import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.widget.ImageView;
import com.google.android.gms.common.api.Status;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

public class gmk
{
  public static volatile Executor a = null;
  private static boolean k;
  public final Context b;
  public final fic c;
  final ConcurrentHashMap<String, Bitmap> d = new ConcurrentHashMap();
  boolean e;
  float f;
  float g;
  private boolean h;
  private gml i;
  private final LinkedList<gml> j = new LinkedList();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11) {
      a = AsyncTask.THREAD_POOL_EXECUTOR;
    }
  }
  
  public gmk(Context paramContext, fic paramfic, boolean paramBoolean)
  {
    b = paramContext;
    c = paramfic;
    e = paramBoolean;
    paramfic = paramContext.getResources();
    g = paramfic.getInteger(aal.th);
    f = paramfic.getInteger(aal.tg);
    paramContext = (ActivityManager)paramContext.getSystemService("activity");
    if (Build.VERSION.SDK_INT >= 19) {}
    for (paramBoolean = paramContext.isLowRamDevice();; paramBoolean = false)
    {
      k = paramBoolean;
      return;
    }
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int m;
    if (k) {
      m = 2;
    }
    int n;
    do
    {
      return m;
      n = 1;
      m = 1;
    } while ((paramInt1 <= paramInt4) && (paramInt2 <= paramInt3));
    int i1 = paramInt1 / 2;
    paramInt2 /= 2;
    paramInt1 = n;
    for (;;)
    {
      m = paramInt1;
      if (i1 / paramInt1 < paramInt4) {
        break;
      }
      m = paramInt1;
      if (paramInt2 / paramInt1 < paramInt3) {
        break;
      }
      paramInt1 <<= 1;
    }
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt, float paramFloat)
  {
    int i1 = (int)(paramInt * paramFloat);
    int m = paramBitmap.getWidth();
    int n = paramBitmap.getHeight();
    if ((paramInt == m) && (i1 == n)) {
      return paramBitmap;
    }
    Matrix localMatrix = new Matrix();
    paramFloat = Math.max(paramInt / m, i1 / n);
    localMatrix.setScale(paramFloat, paramFloat);
    paramInt = Math.round(paramInt / paramFloat);
    i1 = Math.round(i1 / paramFloat);
    int i2 = (int)(m * 0.5F - paramInt / 2);
    int i3 = (int)(n * 0.5F - i1 / 2);
    return Bitmap.createBitmap(paramBitmap, Math.max(Math.min(i2, m - paramInt), 0), Math.max(Math.min(i3, n - i1), 0), paramInt, i1, localMatrix, true);
  }
  
  /* Error */
  public static Bitmap a(ParcelFileDescriptor paramParcelFileDescriptor, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 143	android/graphics/BitmapFactory$Options
    //   9: dup
    //   10: invokespecial 144	android/graphics/BitmapFactory$Options:<init>	()V
    //   13: astore 6
    //   15: aload 6
    //   17: iload_1
    //   18: iload_2
    //   19: iload_3
    //   20: iload 4
    //   22: invokestatic 146	gmk:a	(IIII)I
    //   25: putfield 149	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   28: aload 6
    //   30: iconst_0
    //   31: putfield 152	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   34: aload 6
    //   36: iload_1
    //   37: putfield 155	android/graphics/BitmapFactory$Options:outWidth	I
    //   40: aload 6
    //   42: iload_2
    //   43: putfield 158	android/graphics/BitmapFactory$Options:outHeight	I
    //   46: getstatic 99	gmk:k	Z
    //   49: ifeq +11 -> 60
    //   52: aload 6
    //   54: getstatic 164	android/graphics/Bitmap$Config:RGB_565	Landroid/graphics/Bitmap$Config;
    //   57: putfield 167	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   60: new 169	java/io/FileInputStream
    //   63: dup
    //   64: aload_0
    //   65: invokevirtual 175	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   68: invokespecial 178	java/io/FileInputStream:<init>	(Ljava/io/FileDescriptor;)V
    //   71: astore 5
    //   73: aload 5
    //   75: aconst_null
    //   76: aload 6
    //   78: invokestatic 184	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   81: astore_0
    //   82: aload 5
    //   84: invokevirtual 189	java/io/InputStream:close	()V
    //   87: aload_0
    //   88: areturn
    //   89: astore 5
    //   91: aload_0
    //   92: areturn
    //   93: astore_0
    //   94: aconst_null
    //   95: astore 5
    //   97: aload 5
    //   99: ifnull +8 -> 107
    //   102: aload 5
    //   104: invokevirtual 189	java/io/InputStream:close	()V
    //   107: aload_0
    //   108: athrow
    //   109: astore 5
    //   111: goto -4 -> 107
    //   114: astore_0
    //   115: goto -18 -> 97
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	paramParcelFileDescriptor	ParcelFileDescriptor
    //   0	118	1	paramInt1	int
    //   0	118	2	paramInt2	int
    //   0	118	3	paramInt3	int
    //   0	118	4	paramInt4	int
    //   71	12	5	localFileInputStream	java.io.FileInputStream
    //   89	1	5	localIOException1	java.io.IOException
    //   95	8	5	localObject	Object
    //   109	1	5	localIOException2	java.io.IOException
    //   13	64	6	localOptions	android.graphics.BitmapFactory.Options
    // Exception table:
    //   from	to	target	type
    //   82	87	89	java/io/IOException
    //   60	73	93	finally
    //   102	107	109	java/io/IOException
    //   73	82	114	finally
  }
  
  private void a()
  {
    if (j.isEmpty()) {}
    while ((i != null) && (!i.e)) {
      return;
    }
    i = ((gml)j.remove());
    i.a();
  }
  
  public void a(ImageView paramImageView)
  {
    paramImageView.setTag(null);
    int m = 0;
    while (m < j.size()) {
      if (j.get(m)).f == paramImageView) {
        j.remove(m);
      } else {
        m += 1;
      }
    }
    if ((i != null) && (i.f == paramImageView))
    {
      i.e = true;
      a();
    }
  }
  
  /* Error */
  public void a(Status paramStatus, ParcelFileDescriptor paramParcelFileDescriptor, int paramInt1, int paramInt2, int paramInt3, gml paramgml)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 194	gmk:i	Lgml;
    //   4: astore 8
    //   6: aload 8
    //   8: aload 6
    //   10: if_acmpeq +23 -> 33
    //   13: aload_0
    //   14: getfield 226	gmk:h	Z
    //   17: ifne +7 -> 24
    //   20: aload_0
    //   21: invokespecial 223	gmk:a	()V
    //   24: aload_2
    //   25: ifnull +7 -> 32
    //   28: aload_2
    //   29: invokevirtual 227	android/os/ParcelFileDescriptor:close	()V
    //   32: return
    //   33: aload_0
    //   34: aconst_null
    //   35: putfield 194	gmk:i	Lgml;
    //   38: aload_0
    //   39: getfield 226	gmk:h	Z
    //   42: istore 7
    //   44: iload 7
    //   46: ifeq +25 -> 71
    //   49: aload_0
    //   50: getfield 226	gmk:h	Z
    //   53: ifne +7 -> 60
    //   56: aload_0
    //   57: invokespecial 223	gmk:a	()V
    //   60: aload_2
    //   61: ifnull -29 -> 32
    //   64: aload_2
    //   65: invokevirtual 227	android/os/ParcelFileDescriptor:close	()V
    //   68: return
    //   69: astore_1
    //   70: return
    //   71: aload 6
    //   73: getfield 220	gml:f	Landroid/widget/ImageView;
    //   76: invokevirtual 230	android/widget/ImageView:getTag	()Ljava/lang/Object;
    //   79: aload 6
    //   81: if_acmpne +15 -> 96
    //   84: aload 6
    //   86: getfield 197	gml:e	Z
    //   89: istore 7
    //   91: iload 7
    //   93: ifeq +25 -> 118
    //   96: aload_0
    //   97: getfield 226	gmk:h	Z
    //   100: ifne +7 -> 107
    //   103: aload_0
    //   104: invokespecial 223	gmk:a	()V
    //   107: aload_2
    //   108: ifnull -76 -> 32
    //   111: aload_2
    //   112: invokevirtual 227	android/os/ParcelFileDescriptor:close	()V
    //   115: return
    //   116: astore_1
    //   117: return
    //   118: aload_1
    //   119: invokevirtual 234	com/google/android/gms/common/api/Status:a	()Z
    //   122: ifeq +7 -> 129
    //   125: aload_2
    //   126: ifnonnull +61 -> 187
    //   129: aload_1
    //   130: invokestatic 240	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   133: astore_1
    //   134: aload_2
    //   135: invokestatic 240	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   138: astore 8
    //   140: new 242	java/lang/StringBuilder
    //   143: dup
    //   144: aload_1
    //   145: invokestatic 240	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   148: invokevirtual 245	java/lang/String:length	()I
    //   151: bipush 28
    //   153: iadd
    //   154: aload 8
    //   156: invokestatic 240	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   159: invokevirtual 245	java/lang/String:length	()I
    //   162: iadd
    //   163: invokespecial 248	java/lang/StringBuilder:<init>	(I)V
    //   166: ldc -6
    //   168: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: aload_1
    //   172: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: ldc_w 256
    //   178: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: aload 8
    //   183: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: pop
    //   187: aload_2
    //   188: ifnull +95 -> 283
    //   191: new 258	gmm
    //   194: dup
    //   195: aload_0
    //   196: aload 6
    //   198: aload_2
    //   199: iload_3
    //   200: iload 4
    //   202: iload 5
    //   204: invokespecial 261	gmm:<init>	(Lgmk;Lgml;Landroid/os/ParcelFileDescriptor;III)V
    //   207: astore_1
    //   208: getstatic 35	android/os/Build$VERSION:SDK_INT	I
    //   211: bipush 11
    //   213: if_icmplt +39 -> 252
    //   216: aload_1
    //   217: getstatic 29	gmk:a	Ljava/util/concurrent/Executor;
    //   220: iconst_0
    //   221: anewarray 263	java/lang/Void
    //   224: invokevirtual 267	gmm:executeOnExecutor	(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   227: pop
    //   228: aconst_null
    //   229: astore_2
    //   230: aload_0
    //   231: getfield 226	gmk:h	Z
    //   234: ifne +7 -> 241
    //   237: aload_0
    //   238: invokespecial 223	gmk:a	()V
    //   241: aload_2
    //   242: ifnull -210 -> 32
    //   245: aload_2
    //   246: invokevirtual 227	android/os/ParcelFileDescriptor:close	()V
    //   249: return
    //   250: astore_1
    //   251: return
    //   252: aload_1
    //   253: aconst_null
    //   254: invokevirtual 271	gmm:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   257: pop
    //   258: goto -30 -> 228
    //   261: astore_1
    //   262: aload_0
    //   263: getfield 226	gmk:h	Z
    //   266: ifne +7 -> 273
    //   269: aload_0
    //   270: invokespecial 223	gmk:a	()V
    //   273: aload_2
    //   274: ifnull +7 -> 281
    //   277: aload_2
    //   278: invokevirtual 227	android/os/ParcelFileDescriptor:close	()V
    //   281: aload_1
    //   282: athrow
    //   283: aload_0
    //   284: aload 6
    //   286: aconst_null
    //   287: invokevirtual 274	gmk:a	(Lgml;Landroid/graphics/Bitmap;)V
    //   290: goto -60 -> 230
    //   293: astore_1
    //   294: return
    //   295: astore_2
    //   296: goto -15 -> 281
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	299	0	this	gmk
    //   0	299	1	paramStatus	Status
    //   0	299	2	paramParcelFileDescriptor	ParcelFileDescriptor
    //   0	299	3	paramInt1	int
    //   0	299	4	paramInt2	int
    //   0	299	5	paramInt3	int
    //   0	299	6	paramgml	gml
    //   42	50	7	bool	boolean
    //   4	178	8	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   64	68	69	java/io/IOException
    //   111	115	116	java/io/IOException
    //   245	249	250	java/io/IOException
    //   0	6	261	finally
    //   33	44	261	finally
    //   71	91	261	finally
    //   118	125	261	finally
    //   129	187	261	finally
    //   191	228	261	finally
    //   252	258	261	finally
    //   283	290	261	finally
    //   28	32	293	java/io/IOException
    //   277	281	295	java/io/IOException
  }
  
  public void a(Status paramStatus, ParcelFileDescriptor paramParcelFileDescriptor, gml paramgml, int paramInt)
  {
    a(paramStatus, paramParcelFileDescriptor, -1, -1, 0, paramgml);
  }
  
  public void a(gml paramgml)
  {
    if (d.containsKey(g))
    {
      f.setImageBitmap((Bitmap)d.get(g));
      a(f);
    }
    ImageView localImageView;
    do
    {
      return;
      localImageView = f;
      a(localImageView);
    } while (!c.e());
    localImageView.setTag(paramgml);
    j.add(paramgml);
    a();
  }
  
  protected void a(gml paramgml, Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      f.setImageBitmap(paramBitmap);
    }
  }
}

/* Location:
 * Qualified Name:     gmk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */