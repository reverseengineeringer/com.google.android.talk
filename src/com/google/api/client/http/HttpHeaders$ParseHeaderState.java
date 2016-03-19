package com.google.api.client.http;

import ire;
import irm;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;

final class HttpHeaders$ParseHeaderState
{
  final ire arrayValueMap;
  final irm classInfo;
  final List<Type> context;
  final StringBuilder logger;
  
  public HttpHeaders$ParseHeaderState(HttpHeaders paramHttpHeaders, StringBuilder paramStringBuilder)
  {
    Class localClass = paramHttpHeaders.getClass();
    context = Arrays.asList(new Type[] { localClass });
    classInfo = irm.a(localClass, true);
    logger = paramStringBuilder;
    arrayValueMap = new ire(paramHttpHeaders);
  }
  
  void finish()
  {
    arrayValueMap.a();
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpHeaders.ParseHeaderState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */