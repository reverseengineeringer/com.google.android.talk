.class Lcom/google/android/talk/BuddyListCombo$9;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo;->setupSearchUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1546
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v1, v1, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-nez v1, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return v0

    .line 1550
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    # getter for: Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->access$1900(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setQueryString(Ljava/lang/String;)V

    .line 1557
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    # getter for: Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    # getter for: Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1900(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1558
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    # getter for: Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->gotoDefaultExpandedState()V

    .line 1560
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->doHistorySearch()V

    .line 1572
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyListCombo;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$9;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {p1, v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->launchSearchActivity(Ljava/lang/String;Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    goto :goto_0
.end method
