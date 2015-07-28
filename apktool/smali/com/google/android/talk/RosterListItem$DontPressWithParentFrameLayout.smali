.class public Lcom/google/android/talk/RosterListItem$DontPressWithParentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RosterListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DontPressWithParentFrameLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 884
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 885
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 880
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 881
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 876
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 877
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem$DontPressWithParentFrameLayout;->isPressed()Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    if-eqz p1, :cond_3

    .line 894
    # invokes: Lcom/google/android/talk/RosterListItem;->findRosterListItem(Landroid/view/View;)Lcom/google/android/talk/RosterListItem;
    invoke-static {p0}, Lcom/google/android/talk/RosterListItem;->access$4100(Landroid/view/View;)Lcom/google/android/talk/RosterListItem;

    move-result-object v0

    .line 895
    .local v0, "r":Lcom/google/android/talk/RosterListItem;
    if-eqz v0, :cond_0

    .line 898
    # invokes: Lcom/google/android/talk/RosterListItem;->joined(Lcom/google/android/talk/RosterListItem;)Z
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$4200(Lcom/google/android/talk/RosterListItem;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 899
    invoke-virtual {v0}, Lcom/google/android/talk/RosterListItem;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 900
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    goto :goto_0

    .line 902
    :cond_2
    # getter for: Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$1200(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 907
    .end local v0    # "r":Lcom/google/android/talk/RosterListItem;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    goto :goto_0
.end method
