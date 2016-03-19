import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.util.Property;
import android.util.SparseArray;
import android.view.View;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class hti
{
  public static hti a;
  SparseArray<JSONObject> b = new SparseArray();
  private Map<String, Property<?, ?>[]> c = new HashMap();
  private Map<String, String[]> d = new HashMap();
  
  public hti()
  {
    c.put("position", new Property[] { hto.e, hto.f });
    d.put("position", new String[] { "x", "y" });
    c.put("scale", new Property[] { View.SCALE_X, View.SCALE_Y });
    d.put("scale", new String[] { "sx", "sy" });
    c.put("opacity", new Property[] { View.ALPHA });
    d.put("opacity", null);
  }
  
  private static float a(htj paramhtj, Property<?, ?> paramProperty, double paramDouble)
  {
    if (!paramhtj.a(paramProperty)) {
      throw new htk("Cannot animate position if stage size was not defined");
    }
    float f = 1.0F;
    if (paramProperty == hto.e) {
      f = a;
    }
    for (;;)
    {
      return f * (float)paramDouble;
      if (paramProperty == hto.f) {
        f = b;
      }
    }
  }
  
  static String a(Context paramContext, int paramInt)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    StringBuilder localStringBuilder;
    try
    {
      localStringBuilder = new StringBuilder();
      localObject1 = localObject2;
      paramContext = paramContext.getResources().openRawResource(paramInt);
      localObject1 = paramContext;
      localObject2 = new BufferedReader(new InputStreamReader(paramContext));
      for (;;)
      {
        localObject1 = paramContext;
        String str = ((BufferedReader)localObject2).readLine();
        if (str == null) {
          break;
        }
        localObject1 = paramContext;
        localStringBuilder.append(str);
      }
      localObject1 = paramContext;
    }
    finally
    {
      if (localObject1 != null) {
        ((InputStream)localObject1).close();
      }
    }
    localObject2 = localStringBuilder.toString();
    if (paramContext != null) {
      paramContext.close();
    }
    return (String)localObject2;
  }
  
  private void a(htj paramhtj, JSONObject paramJSONObject, Collection<Animator> paramCollection)
  {
    Object localObject3 = d.get(paramJSONObject.getString("id"));
    if (localObject3 == null) {}
    for (;;)
    {
      return;
      JSONArray localJSONArray1 = paramJSONObject.getJSONArray("animations");
      int n = localJSONArray1.length();
      int i = 0;
      while (i < n)
      {
        paramJSONObject = localJSONArray1.getJSONObject(i);
        long l1 = (paramJSONObject.getDouble("duration") * 1000.0D);
        long l2 = (paramJSONObject.optDouble("delay", 0.0D) * 1000.0D);
        Object localObject1 = paramJSONObject.getString("property");
        Property[] arrayOfProperty = (Property[])c.get(localObject1);
        String[] arrayOfString = (String[])d.get(localObject1);
        int j;
        JSONArray localJSONArray2;
        int i1;
        int k;
        if (arrayOfString == null)
        {
          j = 1;
          localJSONArray2 = paramJSONObject.getJSONArray("keyframes");
          i1 = localJSONArray2.length();
          if (i1 > 0) {
            k = 0;
          }
        }
        else
        {
          for (;;)
          {
            if (k >= arrayOfProperty.length) {
              break label478;
            }
            int m = 0;
            paramJSONObject = null;
            Object localObject2 = null;
            label170:
            if (m < i1)
            {
              JSONArray localJSONArray3 = localJSONArray2.getJSONArray(m);
              JSONObject localJSONObject;
              label194:
              double d1;
              if (j != 0)
              {
                localJSONObject = null;
                if ((localJSONObject != null) && (!localJSONObject.has(arrayOfString[k]))) {
                  break label422;
                }
                localObject1 = localObject2;
                if (localObject2 == null) {
                  localObject1 = new Keyframe[i1];
                }
                float f = (float)localJSONArray3.getDouble(0);
                localObject2 = arrayOfProperty[k];
                if (j == 0) {
                  break label402;
                }
                d1 = localJSONArray3.getDouble(1);
                label257:
                localObject1[m] = Keyframe.ofFloat(f, a(paramhtj, (Property)localObject2, d1));
                if (paramJSONObject != null)
                {
                  paramJSONObject.a(localObject1[(m - 1)], localObject1[m]);
                  localObject1[m].setInterpolator(paramJSONObject);
                }
                if (localJSONArray3.length() < 3) {
                  break label417;
                }
                paramJSONObject = localJSONArray3.getJSONObject(2);
                if (!paramJSONObject.getString("name").equals("cubic-bezier")) {
                  break label417;
                }
              }
              label402:
              label417:
              for (paramJSONObject = new htm((float)paramJSONObject.getDouble("x1"), (float)paramJSONObject.getDouble("y1"), (float)paramJSONObject.getDouble("x2"), (float)paramJSONObject.getDouble("y2"));; paramJSONObject = null)
              {
                m += 1;
                localObject2 = localObject1;
                break label170;
                j = 0;
                break;
                localJSONObject = localJSONArray3.getJSONObject(1);
                break label194;
                d1 = localJSONObject.getDouble(arrayOfString[k]);
                break label257;
              }
            }
            label422:
            if (localObject2 != null)
            {
              paramJSONObject = ObjectAnimator.ofPropertyValuesHolder(localObject3, new PropertyValuesHolder[] { PropertyValuesHolder.ofKeyframe(arrayOfProperty[k], (Keyframe[])localObject2) });
              paramJSONObject.setDuration(l1).setStartDelay(l2);
              paramCollection.add(paramJSONObject);
            }
            k += 1;
          }
        }
        label478:
        i += 1;
      }
    }
  }
  
  private Animator b(float paramFloat)
  {
    try
    {
      int i;
      paramFloat = new htj(this, paramFloat, i, (Map)localObject, -1.0F, -1.0F);
      Object localObject = new AnimatorSet();
      ((AnimatorSet)localObject).playTogether(b(paramFloat));
      ((AnimatorSet)localObject).addListener(new htl(this, paramFloat));
      return (Animator)localObject;
    }
    catch (NullPointerException paramFloat)
    {
      throw new htk(paramFloat);
    }
    catch (JSONException paramFloat)
    {
      for (;;) {}
    }
    catch (IOException paramFloat)
    {
      for (;;) {}
    }
  }
  
  private Collection<Animator> b(htj paramhtj)
  {
    JSONArray localJSONArray = c.getJSONArray("animations");
    ArrayList localArrayList = new ArrayList();
    int j = localJSONArray.length();
    int i = 0;
    while (i < j)
    {
      a(paramhtj, localJSONArray.getJSONObject(i), localArrayList);
      i += 1;
    }
    return localArrayList;
  }
  
  public Animator a(Context paramContext, int paramInt, Map<String, Object> paramMap)
  {
    return b(paramContext, paramInt, paramMap);
  }
  
  void a(htj paramhtj)
  {
    for (;;)
    {
      int i;
      Object localObject1;
      Object localObject2;
      Property[] arrayOfProperty;
      String[] arrayOfString;
      try
      {
        JSONArray localJSONArray = c.getJSONArray("animations");
        int k = localJSONArray.length();
        i = 0;
        if (i >= k) {
          break;
        }
        JSONObject localJSONObject = localJSONArray.getJSONObject(i);
        localObject1 = d.get(localJSONObject.getString("id"));
        if ((localObject1 == null) || (!localJSONObject.has("initialValues"))) {
          break label286;
        }
        localJSONObject = localJSONObject.getJSONObject("initialValues");
        Iterator localIterator = localJSONObject.keys();
        if (!localIterator.hasNext()) {
          break label286;
        }
        localObject2 = (String)localIterator.next();
        if (!d.containsKey(localObject2)) {
          continue;
        }
        arrayOfProperty = (Property[])c.get(localObject2);
        arrayOfString = (String[])d.get(localObject2);
        if ((arrayOfString == null) && (paramhtj.a(arrayOfProperty[0])))
        {
          arrayOfProperty[0].set(localObject1, Float.valueOf(a(paramhtj, arrayOfProperty[0], localJSONObject.getDouble((String)localObject2))));
          continue;
        }
        localObject2 = localJSONObject.getJSONObject((String)localObject2);
      }
      catch (JSONException paramhtj)
      {
        throw new htk(paramhtj);
      }
      int j = 0;
      while (j < arrayOfString.length)
      {
        if ((paramhtj.a(arrayOfProperty[j])) && (((JSONObject)localObject2).has(arrayOfString[j]))) {
          arrayOfProperty[j].set(localObject1, Float.valueOf(a(paramhtj, arrayOfProperty[j], ((JSONObject)localObject2).getDouble(arrayOfString[j]))));
        }
        j += 1;
      }
      label286:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     hti
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */