import android.content.Context;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public final class bcv
  implements Parcelable
{
  public static final Parcelable.Creator<bcv> CREATOR = new bcw();
  public long a;
  public long b;
  public long c;
  public long d;
  public long e;
  public int f;
  public bcp[] g;
  
  private bcv(Context paramContext, List<bcp> paramList)
  {
    a = 538317364L;
    b = c(paramContext);
    c = Build.VERSION.SDK_INT;
    d = SystemClock.elapsedRealtime();
    e = System.currentTimeMillis();
    f = paramList.size();
    g = new bcp[f];
    int i = 0;
    while (i < f)
    {
      g[i] = ((bcp)paramList.get(i));
      g[i].a();
      int j = (int)(g[i].d - d);
      i += 1;
    }
  }
  
  protected bcv(Parcel paramParcel)
  {
    a = paramParcel.readLong();
    if (a != 538317364L)
    {
      l1 = a;
      ezi.e("Babel_ConcPersist", 74 + "Error reading persisted state - incorrect magic word: " + l1, new Object[0]);
      return;
    }
    b = paramParcel.readLong();
    c = paramParcel.readLong();
    d = paramParcel.readLong();
    e = paramParcel.readLong();
    f = paramParcel.readInt();
    if ((f < 0) || (f > 100000))
    {
      ezi.e("Babel_ConcPersist", "Error reading persisted state - incorrect bundle data.", new Object[0]);
      return;
    }
    long l1 = a;
    long l2 = b;
    int i = f;
    new StringBuilder(101).append("Reading parcel : magicWord ").append(l1).append("; version ").append(l2).append("; numBundles ").append(i);
    paramParcel = paramParcel.readParcelableArray(bcp.class.getClassLoader());
    g = ((bcp[])Arrays.copyOf(paramParcel, paramParcel.length, bcp[].class));
  }
  
  public static bcv a(Context paramContext)
  {
    
    Object localObject2;
    try
    {
      Object localObject1 = paramContext.getFileStreamPath("service_state.log");
      if (!((File)localObject1).exists()) {
        return null;
      }
      long l1 = ((File)localObject1).length();
      if (l1 >= 4194304L)
      {
        ezi.e("Babel_ConcPersist", "Persisted file is too large to read (%d bytes)", new Object[] { Integer.valueOf((int)l1) });
        return null;
      }
      localObject2 = String.valueOf(paramContext.getFileStreamPath("service_state.log"));
      new StringBuilder(String.valueOf(localObject2).length() + 53).append("Reading persisted state ").append((String)localObject2).append("; ").append(l1).append(" bytes.");
      localObject2 = new byte[(int)l1];
      FileInputStream localFileInputStream = new FileInputStream((File)localObject1);
      long l2 = localFileInputStream.read((byte[])localObject2);
      localFileInputStream.close();
      ((File)localObject1).delete();
      if (l2 != l1) {
        return null;
      }
      localObject1 = Parcel.obtain();
      ((Parcel)localObject1).unmarshall((byte[])localObject2, 0, localObject2.length);
      ((Parcel)localObject1).setDataPosition(0);
      localObject2 = (bcv)CREATOR.createFromParcel((Parcel)localObject1);
      ((Parcel)localObject1).recycle();
      if (!((bcv)localObject2).b(paramContext))
      {
        ezi.d("Babel_ConcPersist", "Persisted state is out of date; client version %d, OS version %d", new Object[] { Integer.valueOf((int)b), Integer.valueOf((int)c) });
        return null;
      }
      i = f;
      if (i == 0) {
        return null;
      }
    }
    catch (OutOfMemoryError paramContext)
    {
      ezi.e("Babel_ConcPersist", "OutOfMemoryError saving state - quitting.", new Object[0]);
      return null;
    }
    catch (FileNotFoundException paramContext)
    {
      return null;
    }
    catch (IOException paramContext)
    {
      ezi.c("Babel_ConcPersist", "Unable to open persisted state.", paramContext);
      return null;
    }
    int i = f;
    return (bcv)localObject2;
  }
  
  public static boolean a(Context paramContext, List<bcp> paramList)
  {
    aal.x();
    File localFile = paramContext.getFileStreamPath("service_state.log");
    if (localFile.exists())
    {
      ezi.d("Babel_ConcPersist", "File already exists: %s ", new Object[] { paramContext.getFileStreamPath("service_state.log") });
      localFile.delete();
    }
    if (paramList.isEmpty()) {}
    do
    {
      for (;;)
      {
        return false;
        paramList.size();
        bcv localbcv = new bcv(paramContext, paramList);
        try
        {
          Parcel localParcel = Parcel.obtain();
          localbcv.writeToParcel(localParcel, 0);
          paramList = localParcel.marshall();
          localParcel.recycle();
          if (paramList.length >= 4194304)
          {
            ezi.e("Babel_ConcPersist", "Not persisting any state as there is too much data (%d bytes).", new Object[] { Integer.valueOf(paramList.length) });
            return false;
          }
        }
        catch (OutOfMemoryError paramContext)
        {
          ezi.e("Babel_ConcPersist", "OutOfMemoryError saving state - quitting.", new Object[0]);
          return false;
          if (localbcv.b(paramContext))
          {
            paramContext = new FileOutputStream(localFile, false);
            paramContext.write(paramList);
            paramContext.close();
            paramContext.flush();
            return true;
          }
        }
        catch (IOException paramContext)
        {
          ezi.d("Babel_ConcPersist", "Error saving state, deleting and quitting.", paramContext);
        }
      }
    } while (!localFile.exists());
    localFile.delete();
    return false;
  }
  
  private boolean b(Context paramContext)
  {
    return (a == 538317364L) && (b == c(paramContext)) && (c == Build.VERSION.SDK_INT) && (System.currentTimeMillis() >= e) && (SystemClock.elapsedRealtime() >= d) && (f >= 0) && (f <= 100000);
  }
  
  private static long c(Context paramContext)
  {
    return ((fak)ilh.a(paramContext, fak.class)).d();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(a);
    paramParcel.writeLong(b);
    paramParcel.writeLong(c);
    paramParcel.writeLong(d);
    paramParcel.writeLong(e);
    paramParcel.writeInt(f);
    paramParcel.writeParcelableArray(g, paramInt);
    long l1 = a;
    long l2 = b;
    new StringBuilder(69).append("Parcel : magicWord ").append(l1).append("; version ").append(l2);
  }
}

/* Location:
 * Qualified Name:     bcv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */