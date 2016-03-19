.class public Lcom/google/android/apps/hangouts/util/FragmentTabHostEx;
.super Lbu;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lbu;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lbu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/util/FragmentTabHostEx;->a:Z

    if-nez v0, :cond_0

    .line 1012
    invoke-super {p0}, Lbu;->onAttachedToWindow()V

    .line 38
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/util/FragmentTabHostEx;->a:Z

    .line 43
    invoke-super {p0}, Lbu;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
