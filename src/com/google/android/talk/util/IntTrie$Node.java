package com.google.android.talk.util;

class IntTrie$Node
{
  private Node mFirstChild;
  private char mKey;
  private Node mNextSibling;
  int mValue;
  
  IntTrie$Node(IntTrie paramIntTrie) {}
  
  private Node getOrCreateNode(char paramChar)
  {
    for (Node localNode = mFirstChild; localNode != null; localNode = mNextSibling) {
      if (mKey == paramChar) {
        return localNode;
      }
    }
    localNode = new Node(this$0);
    mKey = paramChar;
    mNextSibling = mFirstChild;
    mFirstChild = localNode;
    return localNode;
  }
  
  public final void add(String paramString, int paramInt)
  {
    int j = paramString.length();
    Node localNode = this;
    int i = 0;
    while (i < j)
    {
      localNode = localNode.getOrCreateNode(paramString.charAt(i));
      i += 1;
    }
    mValue = paramInt;
  }
  
  Node getNode(char paramChar)
  {
    for (Node localNode = mFirstChild; localNode != null; localNode = mNextSibling) {
      if (mKey == paramChar) {
        return localNode;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.IntTrie.Node
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */