import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

public class ez
  extends et<Cursor>
{
  final ff f = new ff(this);
  Uri g;
  String[] h;
  String i;
  String[] j;
  String k;
  Cursor l;
  gr m;
  
  public ez(Context paramContext)
  {
    super(paramContext);
  }
  
  public ez(Context paramContext, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    super(paramContext);
    g = paramUri;
    h = paramArrayOfString1;
    i = paramString1;
    j = paramArrayOfString2;
    k = paramString2;
  }
  
  public void a(Cursor paramCursor)
  {
    if (r()) {
      if (paramCursor != null) {
        paramCursor.close();
      }
    }
    Cursor localCursor;
    do
    {
      return;
      localCursor = l;
      l = paramCursor;
      if (p()) {
        super.b(paramCursor);
      }
    } while ((localCursor == null) || (localCursor == paramCursor) || (localCursor.isClosed()));
    localCursor.close();
  }
  
  public void a(Uri paramUri)
  {
    g = paramUri;
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mUri=");
    paramPrintWriter.println(g);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mProjection=");
    paramPrintWriter.println(Arrays.toString(h));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelection=");
    paramPrintWriter.println(i);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelectionArgs=");
    paramPrintWriter.println(Arrays.toString(j));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSortOrder=");
    paramPrintWriter.println(k);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCursor=");
    paramPrintWriter.println(l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mContentChanged=");
    paramPrintWriter.println(u);
  }
  
  public void a(String[] paramArrayOfString)
  {
    h = paramArrayOfString;
  }
  
  public void b(Cursor paramCursor)
  {
    if ((paramCursor != null) && (!paramCursor.isClosed())) {
      paramCursor.close();
    }
  }
  
  public void f()
  {
    super.f();
    try
    {
      if (m != null) {
        m.b();
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  public Cursor h()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 130	ez:g	()Z
    //   6: ifeq +16 -> 22
    //   9: new 132	gs
    //   12: dup
    //   13: invokespecial 134	gs:<init>	()V
    //   16: athrow
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: athrow
    //   22: aload_0
    //   23: new 124	gr
    //   26: dup
    //   27: invokespecial 135	gr:<init>	()V
    //   30: putfield 122	ez:m	Lgr;
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_0
    //   36: invokevirtual 139	ez:n	()Landroid/content/Context;
    //   39: invokevirtual 145	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   42: astore_1
    //   43: aload_0
    //   44: getfield 34	ez:g	Landroid/net/Uri;
    //   47: astore_2
    //   48: aload_0
    //   49: getfield 36	ez:h	[Ljava/lang/String;
    //   52: astore_3
    //   53: aload_0
    //   54: getfield 38	ez:i	Ljava/lang/String;
    //   57: astore 4
    //   59: aload_0
    //   60: getfield 40	ez:j	[Ljava/lang/String;
    //   63: astore 5
    //   65: aload_0
    //   66: getfield 42	ez:k	Ljava/lang/String;
    //   69: astore 6
    //   71: aload_0
    //   72: getfield 122	ez:m	Lgr;
    //   75: astore 7
    //   77: getstatic 150	ev:a	Lew;
    //   80: aload_1
    //   81: aload_2
    //   82: aload_3
    //   83: aload 4
    //   85: aload 5
    //   87: aload 6
    //   89: aload 7
    //   91: invokevirtual 155	ew:a	(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lgr;)Landroid/database/Cursor;
    //   94: astore_1
    //   95: aload_1
    //   96: ifnull +20 -> 116
    //   99: aload_1
    //   100: invokeinterface 159 1 0
    //   105: pop
    //   106: aload_1
    //   107: aload_0
    //   108: getfield 30	ez:f	Lff;
    //   111: invokeinterface 163 2 0
    //   116: aload_0
    //   117: monitorenter
    //   118: aload_0
    //   119: aconst_null
    //   120: putfield 122	ez:m	Lgr;
    //   123: aload_0
    //   124: monitorexit
    //   125: aload_1
    //   126: areturn
    //   127: astore_2
    //   128: aload_1
    //   129: invokeinterface 54 1 0
    //   134: aload_2
    //   135: athrow
    //   136: astore_1
    //   137: aload_0
    //   138: monitorenter
    //   139: aload_0
    //   140: aconst_null
    //   141: putfield 122	ez:m	Lgr;
    //   144: aload_0
    //   145: monitorexit
    //   146: aload_1
    //   147: athrow
    //   148: astore_1
    //   149: aload_0
    //   150: monitorexit
    //   151: aload_1
    //   152: athrow
    //   153: astore_1
    //   154: aload_0
    //   155: monitorexit
    //   156: aload_1
    //   157: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	158	0	this	ez
    //   17	4	1	localObject1	Object
    //   42	87	1	localObject2	Object
    //   136	11	1	localObject3	Object
    //   148	4	1	localObject4	Object
    //   153	4	1	localObject5	Object
    //   47	35	2	localUri	Uri
    //   127	8	2	localRuntimeException	RuntimeException
    //   52	31	3	arrayOfString1	String[]
    //   57	27	4	str1	String
    //   63	23	5	arrayOfString2	String[]
    //   69	19	6	str2	String
    //   75	15	7	localgr	gr
    // Exception table:
    //   from	to	target	type
    //   2	17	17	finally
    //   18	20	17	finally
    //   22	35	17	finally
    //   99	116	127	java/lang/RuntimeException
    //   35	95	136	finally
    //   99	116	136	finally
    //   128	136	136	finally
    //   118	125	148	finally
    //   149	151	148	finally
    //   139	146	153	finally
    //   154	156	153	finally
  }
  
  protected void i()
  {
    if (l != null) {
      a(l);
    }
    if ((z()) || (l == null)) {
      u();
    }
  }
  
  protected void j()
  {
    t();
  }
  
  protected void k()
  {
    super.k();
    j();
    if ((l != null) && (!l.isClosed())) {
      l.close();
    }
    l = null;
  }
  
  public Uri l()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */