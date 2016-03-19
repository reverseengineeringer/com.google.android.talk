.class public final Lfap;
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
    .line 709
    iput-object p1, p0, Lfap;->a:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 712
    iget-object v0, p0, Lfap;->a:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 1040
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->d:Lfar;

    .line 712
    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lfap;->a:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 2040
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->d:Lfar;

    .line 713
    invoke-virtual {v0}, Lfar;->b()I

    move-result v0

    .line 714
    packed-switch v0, :pswitch_data_0

    .line 731
    :goto_0
    return-void

    .line 719
    :pswitch_0
    iget-object v0, p0, Lfap;->a:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 3040
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->d:Lfar;

    .line 719
    invoke-virtual {v0}, Lfar;->k()V

    goto :goto_0

    .line 725
    :pswitch_1
    iget-object v0, p0, Lfap;->a:Lcom/google/android/apps/hangouts/views/AudioAttachmentView;

    .line 4040
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/AudioAttachmentView;->d:Lfar;

    .line 725
    invoke-virtual {v0}, Lfar;->l()V

    goto :goto_0

    .line 729
    :cond_0
    const-string v0, "Babel"

    const-string v1, "playPauseButtonClicked: audioPlaybackController is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
