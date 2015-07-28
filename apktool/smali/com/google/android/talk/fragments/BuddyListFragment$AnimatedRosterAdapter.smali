.class Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;
.super Lcom/google/android/talk/AnimatedAdapter2;
.source "BuddyListFragment.java"

# interfaces
.implements Lcom/google/android/talk/IRosterListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedRosterAdapter"
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/talk/IRosterListAdapter;

.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;Lcom/google/android/talk/IRosterListAdapter;)V
    .locals 3
    .param p2, "adapter"    # Lcom/google/android/talk/IRosterListAdapter;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    move-object v0, p2

    .line 715
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/AnimatedAdapter2;-><init>(Landroid/widget/BaseAdapter;I)V

    .line 717
    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    .line 718
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "searchString"    # Ljava/lang/String;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/talk/IRosterListAdapter;->changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public hasActiveChats()Z
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->hasActiveChats()Z

    move-result v0

    return v0
.end method

.method public init(JLandroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/talk/IRosterListAdapter;->init(JLandroid/app/Activity;Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/talk/IRosterListAdapter;->onScroll(Landroid/widget/AbsListView;III)V

    .line 804
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/talk/IRosterListAdapter;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 809
    return-void
.end method

.method public setAccountId(J)V
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/talk/IRosterListAdapter;->setAccountId(J)V

    .line 748
    return-void
.end method

.method public setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V
    .locals 1
    .param p1, "callState"    # Lcom/google/android/talk/RosterListAdapter$CallState;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V

    .line 753
    return-void
.end method

.method public setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;
    .param p2, "sortMode"    # Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/talk/IRosterListAdapter;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V

    .line 824
    return-void
.end method

.method public setFocus(Landroid/content/Intent;)V
    .locals 1
    .param p1, "focus"    # Landroid/content/Intent;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setFocus(Landroid/content/Intent;)V

    .line 763
    return-void
.end method

.method public setIncludeSelfItem(Z)V
    .locals 1
    .param p1, "include"    # Z

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setIncludeSelfItem(Z)V

    .line 768
    return-void
.end method

.method public setIsOnline(Z)Z
    .locals 1
    .param p1, "isOnline"    # Z

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setIsOnline(Z)Z

    move-result v0

    return v0
.end method

.method public setNarrowLayout(Z)V
    .locals 1
    .param p1, "narrow"    # Z

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setNarrowLayout(Z)V

    .line 778
    return-void
.end method

.method public setNeedForceLoad(Z)V
    .locals 1
    .param p1, "forceLoad"    # Z

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setNeedForceLoad(Z)V

    .line 783
    return-void
.end method

.method public setOnVideoButtonClickedListener(Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;)V
    .locals 1
    .param p1, "h"    # Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setOnVideoButtonClickedListener(Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;)V

    .line 819
    return-void
.end method

.method public setSelfStatusCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "selfCursor"    # Landroid/database/Cursor;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setSelfStatusCursor(Landroid/database/Cursor;)V

    .line 788
    return-void
.end method

.method public suppressIndent()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->suppressIndent()V

    .line 793
    return-void
.end method

.method public suppressVideoButton(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->suppressVideoButton(Z)V

    .line 798
    return-void
.end method
