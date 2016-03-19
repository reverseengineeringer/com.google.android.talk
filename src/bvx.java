import android.os.Parcel;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public final class bvx
  implements eff
{
  private static final long serialVersionUID = 1L;
  private String a;
  private String b;
  private String c;
  private ksf<efx> d;
  private ksf<bkq> e;
  private ksf<String> f;
  private long g;
  private boolean h;
  private boolean i;
  private int j;
  private String k;
  private int l;
  private int m;
  private String n;
  private String o;
  
  protected bvx(bvy parambvy)
  {
    a = a;
    b = b;
    c = c;
    d = ksf.a(d);
    e = ksf.a(e);
    f = ksf.a(f);
    g = g;
    h = h;
    i = i;
    j = j;
    k = k;
    l = l;
    n = ezi.a(new Throwable());
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    a = ((String)paramObjectInputStream.readObject());
    b = ((String)paramObjectInputStream.readObject());
    c = ((String)paramObjectInputStream.readObject());
    d = ((ksf)paramObjectInputStream.readObject());
    f = ((ksf)paramObjectInputStream.readObject());
    g = paramObjectInputStream.readLong();
    h = paramObjectInputStream.readBoolean();
    i = paramObjectInputStream.readBoolean();
    j = paramObjectInputStream.readInt();
    k = ((String)paramObjectInputStream.readObject());
    l = paramObjectInputStream.readInt();
    m = paramObjectInputStream.readInt();
    n = ((String)paramObjectInputStream.readObject());
    o = ((String)paramObjectInputStream.readObject());
    ksh localksh = new ksh();
    if (paramObjectInputStream.available() > 0)
    {
      int i2 = paramObjectInputStream.readInt();
      int i1 = 0;
      if (i1 < i2)
      {
        int i3 = paramObjectInputStream.readInt();
        Object localObject = bkr.values()[i3];
        i3 = paramObjectInputStream.readInt();
        byte[] arrayOfByte = new byte[i3];
        if (paramObjectInputStream.read(arrayOfByte, 0, i3) != i3) {
          throw new IOException("Unmarshall Attachment: The actual bytes read doesn't match the expected bytes.");
        }
        switch (bku.a[localObject.ordinal()])
        {
        default: 
          paramObjectInputStream = String.valueOf(localObject);
          ezi.d("Babel_AttachmentUtils", String.valueOf(paramObjectInputStream).length() + 25 + "invalid attachment type: " + paramObjectInputStream, new Object[0]);
          paramObjectInputStream = String.valueOf(localObject);
          throw new IllegalArgumentException(String.valueOf(paramObjectInputStream).length() + 25 + "invalid attachment type: " + paramObjectInputStream);
        case 1: 
        case 2: 
          localObject = (bkq)aal.a(arrayOfByte, blb.CREATOR);
        }
        for (;;)
        {
          if (localObject != null) {
            localksh.c(localObject);
          }
          i1 += 1;
          break;
          localObject = (bkq)aal.a(arrayOfByte, bkz.CREATOR);
          continue;
          localObject = (bkq)aal.a(arrayOfByte, blj.CREATOR);
        }
      }
    }
    e = localksh.a();
    paramObjectInputStream.close();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeObject(a);
    paramObjectOutputStream.writeObject(b);
    paramObjectOutputStream.writeObject(c);
    paramObjectOutputStream.writeObject(d);
    paramObjectOutputStream.writeObject(f);
    paramObjectOutputStream.writeLong(g);
    paramObjectOutputStream.writeBoolean(h);
    paramObjectOutputStream.writeBoolean(i);
    paramObjectOutputStream.writeInt(j);
    paramObjectOutputStream.writeObject(k);
    paramObjectOutputStream.writeInt(l);
    paramObjectOutputStream.writeInt(m);
    paramObjectOutputStream.writeObject(n);
    paramObjectOutputStream.writeObject(o);
    if (e != null)
    {
      paramObjectOutputStream.writeInt(e.size());
      int i1 = 0;
      while (i1 < e.size())
      {
        paramObjectOutputStream.writeInt(e.get(i1)).c.ordinal());
        Object localObject = (bkq)e.get(i1);
        Parcel localParcel = Parcel.obtain();
        ((bkq)localObject).writeToParcel(localParcel, 0);
        localObject = localParcel.marshall();
        localParcel.recycle();
        paramObjectOutputStream.writeInt(localObject.length);
        paramObjectOutputStream.write((byte[])localObject);
        i1 += 1;
      }
    }
    paramObjectOutputStream.close();
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    m = paramInt;
  }
  
  public void a_(String paramString)
  {
    o = paramString;
  }
  
  public String b()
  {
    return b;
  }
  
  public int c()
  {
    return m;
  }
  
  public cwi d()
  {
    return new bvv(this);
  }
  
  public String e()
  {
    return c;
  }
  
  public ksf<efx> f()
  {
    return d;
  }
  
  public ksf<bkq> g()
  {
    return e;
  }
  
  public ksf<String> h()
  {
    return f;
  }
  
  public long i()
  {
    return g;
  }
  
  public boolean j()
  {
    return h;
  }
  
  public boolean k()
  {
    return i;
  }
  
  public int l()
  {
    return j;
  }
  
  public String m()
  {
    return k;
  }
  
  public int n()
  {
    return l;
  }
  
  public String o()
  {
    if (d.size() == 1)
    {
      String str = d.get(0)).b;
      if (aal.u(str)) {
        return str;
      }
    }
    return null;
  }
  
  public String toString()
  {
    String str1 = a;
    String str2 = b;
    String str3 = String.valueOf(d.toString());
    String str4 = String.valueOf(e.toString());
    boolean bool1 = h;
    boolean bool2 = i;
    int i1 = j;
    String str5 = k;
    long l1 = g;
    int i2 = m;
    String str6 = n;
    String str7 = o;
    return String.valueOf(str1).length() + 259 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + "SendMultiAttachmentRequest [clientGeneratedId=" + str1 + ", conversationId=" + str2 + ", text=" + str3 + ", attachments=" + str4 + ", isOffRecord=" + bool1 + ", inContingency=" + bool2 + ", transportType=" + i1 + ", transportPhone=" + str5 + ", sequenceNumber=" + l1 + ", requestId=" + i2 + ", creationStack=" + str6 + ", originStack=" + str7 + "]";
  }
}

/* Location:
 * Qualified Name:     bvx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */