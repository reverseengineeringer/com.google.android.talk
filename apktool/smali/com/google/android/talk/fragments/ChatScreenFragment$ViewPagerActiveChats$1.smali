.class Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;
.super Landroid/support/v4/view/PagerAdapter;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRecycledChatView:Lcom/google/android/talk/ChatView;

.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 345
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 346
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$400(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/ChatView;

    .line 348
    .local v1, "v":Lcom/google/android/talk/ChatView;
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$400(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 352
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->unfocus()V

    .line 353
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->onStop()V

    .line 355
    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->mRecycledChatView:Lcom/google/android/talk/ChatView;

    .line 356
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 338
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 360
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 361
    .local v2, "targetUsername":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getCount()I

    move-result v0

    .line 362
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 363
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 364
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "username":Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    .end local v1    # "i":I
    .end local v3    # "username":Ljava/lang/String;
    :goto_1
    return v1

    .line 362
    .restart local v1    # "i":I
    .restart local v3    # "username":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v3    # "username":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x2

    goto :goto_1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 292
    const-string v0, ""

    .line 293
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/util/ChatList;->getCount()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 295
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;

    move-result-object v2

    # invokes: Lcom/google/android/talk/fragments/ChatScreenFragment;->hintValue(Lcom/google/android/talk/util/ChatList;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/util/ChatList;)Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_0
    return-object v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 302
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 303
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/talk/util/ChatList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 304
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->mRecycledChatView:Lcom/google/android/talk/ChatView;

    .line 305
    .local v0, "chatView":Lcom/google/android/talk/ChatView;
    iput-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->mRecycledChatView:Lcom/google/android/talk/ChatView;

    .line 306
    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/google/android/talk/ChatView;

    .end local v0    # "chatView":Lcom/google/android/talk/ChatView;
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v3, v3, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v5, v5, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    invoke-static {v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/talk/ChatView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup$LayoutParams;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V

    .line 314
    .restart local v0    # "chatView":Lcom/google/android/talk/ChatView;
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v6, v4}, Lcom/google/android/talk/ChatView;->initialize(Landroid/content/Intent;Lcom/google/android/talk/util/ChatList;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 315
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v3, v3, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;
    invoke-static {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/videochat/CallStateClient;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/talk/ChatView;->setCallStateClient(Lcom/google/android/videochat/CallStateClient;)V

    .line 317
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 319
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$400(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$400(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 374
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 334
    return-void
.end method
