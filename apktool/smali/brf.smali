.class final Lbrf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lbre;


# direct methods
.method constructor <init>(Lbre;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lbrf;->a:Lbre;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 130
    iget-object v0, p0, Lbrf;->a:Lbre;

    iget-object v0, v0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    .line 1055
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->l:Landroid/widget/VideoView;

    .line 130
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 131
    return-void
.end method
