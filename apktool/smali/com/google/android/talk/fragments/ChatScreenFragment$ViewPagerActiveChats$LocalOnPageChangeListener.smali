.class Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;Lcom/google/android/talk/fragments/ChatScreenFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;
    .param p2, "x1"    # Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 274
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 270
    return-void
.end method

.method public onPageSelected(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 217
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 218
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 219
    .local v3, "selectedIntent":Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 227
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    const-string v5, "from"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$302(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->getSelectedChatView()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 237
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$400(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/ChatView;

    .line 238
    .local v2, "other":Lcom/google/android/talk/ChatView;
    if-eq v2, v0, :cond_2

    .line 239
    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->unfocus()V

    goto :goto_1

    .line 243
    .end local v2    # "other":Lcom/google/android/talk/ChatView;
    :cond_3
    if-eqz v0, :cond_6

    .line 246
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getSession()Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v4

    if-nez v4, :cond_4

    .line 247
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v6

    # invokes: Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$500(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    .line 249
    :cond_4
    invoke-virtual {v0, v8}, Lcom/google/android/talk/ChatView;->initSession(Z)Z

    .line 251
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 252
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/talk/ChatView;->setStartVoiceChatOnFirstDisplay(Z)V

    .line 253
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z
    invoke-static {v4, v8}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$602(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z

    .line 256
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->focus()V

    .line 259
    :cond_6
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mOnDone:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 260
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mOnDone:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 261
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mOnDone:Ljava/lang/Runnable;

    goto/16 :goto_0
.end method
