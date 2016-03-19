.class public final Lfao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/AudioAttachmentView;F)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lfao;->b:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    iput p2, p0, Lfao;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lfao;->b:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 1040
    iget-object v1, v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->b:Landroid/widget/SeekBar;

    .line 694
    iget-object v0, p0, Lfao;->b:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 2040
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->b:Landroid/widget/SeekBar;

    .line 695
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lfao;->a:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 694
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 696
    return-void

    .line 695
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
