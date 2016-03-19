import android.content.ContentUris;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.Telephony.Mms;
import android.util.SparseArray;
import java.util.HashSet;
import java.util.Iterator;

public final class aec
  extends adz<Uri, aed>
{
  private static final UriMatcher a;
  private static final SparseArray<Integer> b;
  private static aec c;
  private final SparseArray<HashSet<Uri>> d = new SparseArray();
  private final if<Long, HashSet<Uri>> e = new if();
  private final HashSet<Uri> f = new HashSet();
  
  static
  {
    Object localObject = new UriMatcher(-1);
    a = (UriMatcher)localObject;
    ((UriMatcher)localObject).addURI("mms", null, 0);
    a.addURI("mms", "#", 1);
    a.addURI("mms", "inbox", 2);
    a.addURI("mms", "inbox/#", 3);
    a.addURI("mms", "sent", 4);
    a.addURI("mms", "sent/#", 5);
    a.addURI("mms", "drafts", 6);
    a.addURI("mms", "drafts/#", 7);
    a.addURI("mms", "outbox", 8);
    a.addURI("mms", "outbox/#", 9);
    a.addURI("mms-sms", "conversations", 10);
    a.addURI("mms-sms", "conversations/#", 11);
    localObject = new SparseArray();
    b = (SparseArray)localObject;
    ((SparseArray)localObject).put(2, Integer.valueOf(1));
    b.put(4, Integer.valueOf(2));
    b.put(6, Integer.valueOf(3));
    b.put(8, Integer.valueOf(4));
  }
  
  public static final aec b()
  {
    try
    {
      if (c == null) {
        c = new aec();
      }
      aec localaec = c;
      return localaec;
    }
    finally {}
  }
  
  private void b(Uri paramUri, aed paramaed)
  {
    paramaed = (HashSet)e.get(Long.valueOf(paramaed.c()));
    if (paramaed != null) {
      paramaed.remove(paramUri);
    }
  }
  
  private aed c(Uri paramUri)
  {
    f.remove(paramUri);
    aed localaed = (aed)super.b(paramUri);
    if (localaed != null)
    {
      b(paramUri, localaed);
      c(paramUri, localaed);
      return localaed;
    }
    return null;
  }
  
  private void c(Uri paramUri, aed paramaed)
  {
    paramaed = (HashSet)e.get(Long.valueOf(paramaed.b()));
    if (paramaed != null) {
      paramaed.remove(paramUri);
    }
  }
  
  public void a()
  {
    try
    {
      super.a();
      d.clear();
      e.clear();
      f.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(Uri paramUri, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        f.add(paramUri);
        return;
      }
      finally {}
      f.remove(paramUri);
    }
  }
  
  public boolean a(Uri paramUri)
  {
    try
    {
      boolean bool = f.contains(paramUri);
      return bool;
    }
    finally
    {
      paramUri = finally;
      throw paramUri;
    }
  }
  
  public boolean a(Uri paramUri, aed paramaed)
  {
    for (;;)
    {
      try
      {
        int i = paramaed.b();
        HashSet localHashSet1 = (HashSet)d.get(i);
        if (localHashSet1 != null) {
          break label226;
        }
        localHashSet1 = new HashSet();
        d.put(i, localHashSet1);
        long l = paramaed.c();
        HashSet localHashSet2 = (HashSet)e.get(Long.valueOf(l));
        if (localHashSet2 != null) {
          break label223;
        }
        localHashSet2 = new HashSet();
        e.put(Long.valueOf(l), localHashSet2);
        switch (a.match(paramUri))
        {
        case 1: 
          boolean bool = super.a(localObject, paramaed);
          if (bool)
          {
            localHashSet1.add(localObject);
            localHashSet2.add(localObject);
          }
          a(paramUri, false);
          return bool;
        }
      }
      finally {}
      Object localObject = paramUri;
      continue;
      localObject = paramUri.getLastPathSegment();
      localObject = Uri.withAppendedPath(Telephony.Mms.CONTENT_URI, (String)localObject);
      continue;
      label223:
      continue;
      label226:
      continue;
      localObject = null;
    }
  }
  
  public aed b(Uri paramUri)
  {
    for (;;)
    {
      int i;
      try
      {
        i = a.match(paramUri);
        switch (i)
        {
        default: 
          paramUri = null;
          return paramUri;
        }
      }
      finally {}
      paramUri = c(paramUri);
      continue;
      paramUri = paramUri.getLastPathSegment();
      paramUri = c(Uri.withAppendedPath(Telephony.Mms.CONTENT_URI, paramUri));
      continue;
      a();
      paramUri = null;
      continue;
      paramUri = (Integer)b.get(i);
      Object localObject;
      aed localaed;
      if (paramUri != null)
      {
        localObject = (HashSet)d.get(paramUri.intValue());
        d.remove(paramUri.intValue());
        if (localObject != null)
        {
          paramUri = ((HashSet)localObject).iterator();
          if (paramUri.hasNext())
          {
            localObject = (Uri)paramUri.next();
            f.remove(localObject);
            localaed = (aed)super.b(localObject);
            if (localaed == null) {
              continue;
            }
            b((Uri)localObject, localaed);
            continue;
          }
        }
      }
      paramUri = null;
      continue;
      long l = ContentUris.parseId(paramUri);
      paramUri = (HashSet)e.remove(Long.valueOf(l));
      if (paramUri != null)
      {
        paramUri = paramUri.iterator();
        while (paramUri.hasNext())
        {
          localObject = (Uri)paramUri.next();
          f.remove(localObject);
          localaed = (aed)super.b(localObject);
          if (localaed != null) {
            c((Uri)localObject, localaed);
          }
        }
      }
      paramUri = null;
    }
  }
}

/* Location:
 * Qualified Name:     aec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */