import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class drm
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private List<cyx> g;
  private byte[] h;
  private boolean i;
  private List<cyx> j;
  private byte[] k;
  private boolean l;
  private List<cyx> m;
  private transient kav n;
  private byte[] o;
  private boolean p;
  private List<cyx> q;
  private byte[] r;
  private boolean s;
  private List<cyx> t;
  private byte[] u;
  private boolean v;
  
  private drm(kat paramkat)
  {
    super(responseHeader, -1L);
    boolean bool1;
    if ((c == null) || (aal.a(c.a, false)))
    {
      bool1 = true;
      i = bool1;
      if (i) {
        break label367;
      }
      h = c.b;
      g = aal.a(c.c);
      label73:
      if ((d != null) && (!aal.a(d.a, false))) {
        break label380;
      }
      bool1 = true;
      label96:
      l = bool1;
      if (l) {
        break label385;
      }
      k = d.b;
      j = aal.a(d.c);
      label133:
      if ((e != null) && (!aal.a(e.a, false))) {
        break label398;
      }
      bool1 = true;
      label156:
      p = bool1;
      if (p) {
        break label403;
      }
      o = e.b;
      m = aal.a(e.c);
      label193:
      n = e;
      if ((f != null) && (!aal.a(f.a, false))) {
        break label416;
      }
      bool1 = true;
      label224:
      s = bool1;
      if (s) {
        break label421;
      }
      r = f.b;
      q = aal.a(f.c);
      label261:
      if (h != null)
      {
        bool1 = bool2;
        if (!aal.a(h.a, false)) {}
      }
      else
      {
        bool1 = true;
      }
      v = bool1;
      if (v) {
        break label434;
      }
      u = h.b;
    }
    for (t = aal.a(h.c);; t = null)
    {
      if (dqf.a)
      {
        paramkat = String.valueOf(paramkat);
        new StringBuilder(String.valueOf(paramkat).length() + 34).append("GetSuggestedEntitiesResponse from:").append(paramkat);
      }
      return;
      bool1 = false;
      break;
      label367:
      h = null;
      g = null;
      break label73;
      label380:
      bool1 = false;
      break label96;
      label385:
      k = null;
      j = null;
      break label133;
      label398:
      bool1 = false;
      break label156;
      label403:
      o = null;
      m = null;
      break label193;
      label416:
      bool1 = false;
      break label224;
      label421:
      r = null;
      q = null;
      break label261;
      label434:
      u = null;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kat)lyi.b(new kat(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new drm(paramArrayOfByte);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    kav localkav = new kav();
    paramObjectInputStream = (byte[])paramObjectInputStream.readObject();
    n = ((kav)lyi.b(localkav, paramObjectInputStream, paramObjectInputStream.length));
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(lyi.a(n));
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    paramdyy = ((hpz)ilh.a(aal.oJ, hpz.class)).b(parambfz.g().g());
    parambfz.a();
    int i1;
    Object localObject;
    for (;;)
    {
      try
      {
        if (!i)
        {
          parambfz.b(g, 3);
          bff.a(paramdyy, "hash_pinned", h);
          if (dqf.a)
          {
            i1 = g.size();
            new StringBuilder(23).append("Pinned size:").append(i1);
            localObject = String.valueOf(Arrays.toString(h));
            if (((String)localObject).length() == 0) {
              break label466;
            }
            "Set hash for pinned:".concat((String)localObject);
          }
        }
        if (!l)
        {
          parambfz.b(j, 0);
          bff.a(paramdyy, "hash_favorites", k);
          if (dqf.a)
          {
            i1 = j.size();
            new StringBuilder(26).append("Favorites size:").append(i1);
            localObject = String.valueOf(Arrays.toString(k));
            if (((String)localObject).length() == 0) {
              break label479;
            }
            "Set hash for favorites:".concat((String)localObject);
          }
        }
        if (!p)
        {
          parambfz.b(m, 1);
          bff.a(paramdyy, "hash_people_you_hangout_with", o);
          if (dqf.a)
          {
            i1 = m.size();
            new StringBuilder(42).append("Contacts you hangout with size:").append(i1);
            localObject = String.valueOf(Arrays.toString(o));
            if (((String)localObject).length() == 0) {
              break label492;
            }
            "Set hash for people you hangout with:".concat((String)localObject);
          }
        }
        if (!s)
        {
          parambfz.b(q, 2);
          bff.a(paramdyy, "hash_other_people_on_hangout", r);
          if (dqf.a)
          {
            i1 = q.size();
            new StringBuilder(43).append("Other contacts on hangouts size:").append(i1);
            localObject = String.valueOf(Arrays.toString(r));
            if (((String)localObject).length() == 0) {
              break label505;
            }
            "Set hash for other contacts on hangouts:".concat((String)localObject);
          }
        }
        if (v) {
          break label594;
        }
        parambfz.q();
        localObject = t.iterator();
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        cyx localcyx = (cyx)((Iterator)localObject).next();
        parambfz.a(b.a, e, h);
        continue;
        new String("Set hash for pinned:");
      }
      finally
      {
        parambfz.c();
      }
      label466:
      continue;
      label479:
      new String("Set hash for favorites:");
      continue;
      label492:
      new String("Set hash for people you hangout with:");
      continue;
      label505:
      new String("Set hash for other contacts on hangouts:");
    }
    bff.a(paramdyy, "hash_dismissed_contacts", u);
    if (dqf.a)
    {
      i1 = t.size();
      new StringBuilder(35).append("Dismissed contacts size:").append(i1);
      localObject = String.valueOf(Arrays.toString(u));
      if (((String)localObject).length() == 0) {
        break label608;
      }
      "Set hash for dismissed contacts:".concat((String)localObject);
    }
    for (;;)
    {
      label594:
      parambfz.b();
      paramdyy.d();
      parambfz.c();
      return;
      label608:
      new String("Set hash for dismissed contacts:");
    }
  }
  
  public List<cyx> k()
  {
    return j;
  }
  
  public List<cyx> l()
  {
    return m;
  }
}

/* Location:
 * Qualified Name:     drm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */