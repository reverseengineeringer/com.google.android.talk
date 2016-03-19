package com.google.android.libraries.componentview.services.internal;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.LogInfo;
import fii;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import knk;
import knm;

public class Graft
{
  private static final knk a = knk.a('.');
  private static final knk b = knk.a(';');
  private final ComponentsProto.LogInfo c;
  private final Graft.Action d;
  
  public Graft(ComponentsProto.LogInfo paramLogInfo, Graft.Action paramAction)
  {
    c = paramLogInfo;
    d = paramAction;
  }
  
  public static String a(List<Graft> paramList)
  {
    if (paramList.isEmpty()) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("1");
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Graft localGraft = (Graft)paramList.next();
      if (localGraft.a() != null)
      {
        knk localknk = a;
        String str = localGraft.a().f();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localGraft.b().a();
        fii.a(arrayOfObject);
        localArrayList.add(localknk.a(new knm(arrayOfObject, str, "")));
      }
    }
    localStringBuilder.append(b.a(localArrayList));
    return localStringBuilder.toString();
  }
  
  public ComponentsProto.LogInfo a()
  {
    return c;
  }
  
  public Graft.Action b()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.internal.Graft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */