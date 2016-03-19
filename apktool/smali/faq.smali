.class public final Lfaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/AudioAttachmentView;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lfaq;->a:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 738
    iget-object v0, p0, Lfaq;->a:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 1040
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->d:Lfar;

    .line 738
    if-eqz v0, :cond_2

    .line 739
    iget-object v0, p0, Lfaq;->a:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 2040
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->d:Lfar;

    .line 739
    invoke-virtual {v0}, Lfar;->b()I

    move-result v0

    .line 740
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 743
    :cond_0
    const-string v0, "Babel"

    const-string v1, "speakerphoneButton.onClick: button should be hidden, but isn\'t."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v0, p0, Lfaq;->a:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 3040
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->d:Lfar;

    .line 747
    invoke-virtual {v0}, Lfar;->d()V

    .line 748
    iget-object v0, p0, Lfaq;->a:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 4040
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->e()V

    goto :goto_0

    .line 750
    :cond_2
    const-string v0, "Babel"

    const-string v1, "speakerphoneButton.onClick: audioPlaybackController is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
