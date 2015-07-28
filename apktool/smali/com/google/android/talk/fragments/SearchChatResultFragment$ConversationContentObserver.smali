.class final Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;
.super Landroid/database/ContentObserver;
.source "SearchChatResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SearchChatResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConversationContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V
    .locals 1

    .prologue
    .line 527
    iput-object p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .line 528
    # getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1400(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 529
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 538
    if-nez p1, :cond_1

    .line 539
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    # getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$200(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 540
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v1

    .line 541
    .local v1, "valid":Z
    if-eqz v1, :cond_2

    .line 544
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    # getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLoaded:Z
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1500(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    # invokes: Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildConversationIfLoaded()V
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1600(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    .line 552
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    # getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1800(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/ContactInfoQuery;->requeryForContactInfo()V

    .line 554
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "valid":Z
    :cond_1
    :goto_0
    return-void

    .line 549
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "valid":Z
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    # invokes: Lcom/google/android/talk/fragments/SearchChatResultFragment;->finish()V
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1700(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    goto :goto_0
.end method
