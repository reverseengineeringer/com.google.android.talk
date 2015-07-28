.class Lcom/google/android/talk/fragments/BuddyListFragment$3;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field first:Z

.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 1

    .prologue
    .line 572
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->first:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 576
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    const-string v2, "onCreateLoader onFinishedLoading runnable"

    # invokes: Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$500(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    .line 578
    .local v0, "host":Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;
    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->finishedLoading()V

    .line 581
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->first:Z

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v2, v2, Lcom/google/android/talk/fragments/RosterListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 586
    iput-boolean v3, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->first:Z

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    # getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$700(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 590
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-nez v1, :cond_3

    .line 591
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    # getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$700(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 597
    :cond_2
    :goto_0
    return-void

    .line 593
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    # getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$700(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v2, v2, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v2}, Lcom/google/android/talk/IRosterListAdapter;->hasActiveChats()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
