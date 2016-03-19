.class public Lcom/google/android/apps/hangouts/views/AttachmentViewContainerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcul;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lcuk;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AttachmentViewContainerFrameLayout;->removeAllViews()V

    .line 31
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/hangouts/views/AttachmentViewContainerFrameLayout;->addView(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AttachmentViewContainerFrameLayout;->e()Lcuk;

    move-result-object v0

    invoke-interface {v0, p1}, Lcuk;->a(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AttachmentViewContainerFrameLayout;->e()Lcuk;

    move-result-object v0

    invoke-interface {v0}, Lcuk;->b()V

    .line 42
    return-void
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AttachmentViewContainerFrameLayout;->e()Lcuk;

    move-result-object v0

    invoke-interface {v0}, Lcuk;->b_()V

    .line 47
    return-void
.end method

.method public c_()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AttachmentViewContainerFrameLayout;->e()Lcuk;

    move-result-object v0

    invoke-interface {v0}, Lcuk;->c_()V

    .line 52
    return-void
.end method

.method public d_()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AttachmentViewContainerFrameLayout;->e()Lcuk;

    move-result-object v0

    invoke-interface {v0}, Lcuk;->d_()V

    .line 57
    return-void
.end method

.method public e()Lcuk;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/AttachmentViewContainerFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcuk;

    return-object v0
.end method
