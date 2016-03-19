import android.os.Bundle;

final class bkf
  implements htx
{
  bkf(bkb parambkb) {}
  
  public void a(String paramString, hus paramhus, huo paramhuo)
  {
    int i = a.c;
    if (!paramString.equals(32 + "conversation_creation" + i)) {
      return;
    }
    ezi.a("Babel_ConvCreator", "Conversation creation background task finished", new Object[0]);
    paramhuo = (bjq)a.d.a(bjq.class);
    if ((paramhus != null) && (paramhus.a() == 200)) {}
    for (boolean bool = true; bool; bool = false)
    {
      ezi.a("Babel_ConvCreator", "Conversation created successfully", new Object[0]);
      paramhuo.a(paramhus.d().getString("conversation_id"));
      a.b(bool);
      return;
    }
    if (paramhus != null)
    {
      paramString = paramhus.c();
      label139:
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {
        break label183;
      }
    }
    label183:
    for (paramString = "Conversation creation failed: ".concat(paramString);; paramString = new String("Conversation creation failed: "))
    {
      ezi.e("Babel_ConvCreator", paramString, new Object[0]);
      paramhuo.a();
      break;
      paramString = "null";
      break label139;
    }
  }
}

/* Location:
 * Qualified Name:     bkf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */