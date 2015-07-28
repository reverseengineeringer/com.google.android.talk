package com.google.android.talk.util;

public class IntTrie
{
  private Node mHead;
  
  public IntTrie(String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    int j = paramArrayOfString.length;
    if (j != paramArrayOfInt.length) {
      throw new IllegalArgumentException("dictionary[] and values[] must be the same length");
    }
    mHead = new Node();
    int i = 0;
    while (i < j)
    {
      mHead.add(paramArrayOfString[i], paramArrayOfInt[i]);
      i += 1;
    }
  }
  
  public Node getNode(char paramChar)
  {
    return mHead.getNode(paramChar);
  }
  
  class Node
  {
    private Node mFirstChild;
    private char mKey;
    private Node mNextSibling;
    int mValue;
    
    Node() {}
    
    private Node getOrCreateNode(char paramChar)
    {
      for (Node localNode = mFirstChild; localNode != null; localNode = mNextSibling) {
        if (mKey == paramChar) {
          return localNode;
        }
      }
      localNode = new Node(IntTrie.this);
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
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.IntTrie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */