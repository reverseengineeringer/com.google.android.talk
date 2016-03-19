import android.content.Context;
import android.util.Property;
import android.util.SparseArray;
import java.util.Map;
import org.json.JSONObject;

final class htj
{
  float a = -1.0F;
  float b = -1.0F;
  JSONObject c;
  Map<String, Object> d;
  
  public htj(Context paramContext, int paramInt, Map<String, Object> paramMap, float paramFloat1, float paramFloat2)
  {
    JSONObject localJSONObject2 = (JSONObject)b.get(paramMap);
    JSONObject localJSONObject1 = localJSONObject2;
    if (localJSONObject2 == null)
    {
      localJSONObject1 = new JSONObject(hti.a(paramInt, paramMap));
      b.put(paramMap, localJSONObject1);
    }
    c = localJSONObject1;
    d = paramFloat1;
  }
  
  public boolean a(Property<?, ?> paramProperty)
  {
    return ((a != -1.0F) || (paramProperty != hto.e)) && ((b != -1.0F) || (paramProperty != hto.f));
  }
}

/* Location:
 * Qualified Name:     htj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */