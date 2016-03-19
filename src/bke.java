import java.util.Iterator;
import java.util.List;

final class bke
  implements bjv
{
  bke(bkb parambkb) {}
  
  public void a()
  {
    ezi.a("Babel_ConvCreator", "Transport type selection dialog cancelled", new Object[0]);
    ((bjq)a.d.a(bjq.class)).a();
  }
  
  public void a(int paramInt)
  {
    ezi.a("Babel_ConvCreator", 35 + "Selected transport type " + paramInt, new Object[0]);
    Object localObject = a.e.d().iterator();
    while (((Iterator)localObject).hasNext())
    {
      axt localaxt = (axt)((Iterator)localObject).next();
      dur localdur = dur.a(a.b, a.g.a(), a.f, paramInt, bd);
      if (!a)
      {
        localObject = String.valueOf(localaxt.toString());
        if (((String)localObject).length() != 0) {}
        for (localObject = "Conversation not created due to unreachable ".concat((String)localObject);; localObject = new String("Conversation not created due to unreachable "))
        {
          ezi.a("Babel_ConvCreator", (String)localObject, new Object[0]);
          localdur.a(a.b, false);
          ((bjq)a.d.a(bjq.class)).a();
          return;
        }
      }
    }
    a.a(paramInt);
  }
}

/* Location:
 * Qualified Name:     bke
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */