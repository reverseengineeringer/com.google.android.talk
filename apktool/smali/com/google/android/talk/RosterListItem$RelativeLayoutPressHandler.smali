.class public Lcom/google/android/talk/RosterListItem$RelativeLayoutPressHandler;
.super Landroid/widget/RelativeLayout;
.source "RosterListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativeLayoutPressHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 924
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 925
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 928
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 929
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 920
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 921
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v3, 0x0

    .line 941
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem$RelativeLayoutPressHandler;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 942
    .local v1, "vp":Landroid/view/ViewParent;
    # invokes: Lcom/google/android/talk/RosterListItem;->findRosterListItem(Landroid/view/View;)Lcom/google/android/talk/RosterListItem;
    invoke-static {p0}, Lcom/google/android/talk/RosterListItem;->access$4100(Landroid/view/View;)Lcom/google/android/talk/RosterListItem;

    move-result-object v0

    .line 943
    .local v0, "r":Lcom/google/android/talk/RosterListItem;
    if-nez v0, :cond_0

    .line 953
    :goto_0
    return-void

    .line 947
    :cond_0
    # invokes: Lcom/google/android/talk/RosterListItem;->joined(Lcom/google/android/talk/RosterListItem;)Z
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$4200(Lcom/google/android/talk/RosterListItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 948
    # getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 950
    :cond_1
    # getter for: Lcom/google/android/talk/RosterListItem;->mQuickBadge:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$2900(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 951
    # getter for: Lcom/google/android/talk/RosterListItem;->mNoQuickBadge:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$2800(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 952
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    goto :goto_0
.end method
