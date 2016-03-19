.class final Lhgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

.field final synthetic b:Lhla;

.field final synthetic c:Lhga;


# direct methods
.method constructor <init>(Lhga;Lcom/google/android/libraries/hangouts/video/internal/Renderer;Lhla;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lhgb;->c:Lhga;

    iput-object p2, p0, Lhgb;->a:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    iput-object p3, p0, Lhgb;->b:Lhla;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 457
    const-string v0, "vclib"

    const-string v1, "%s: Switching from %s to %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lhgb;->c:Lhga;

    iget-object v4, v4, Lhga;->a:Lhfu;

    invoke-virtual {v4}, Lhfu;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lhgb;->c:Lhga;

    iget-object v4, v4, Lhga;->a:Lhfu;

    .line 1023
    iget-object v4, v4, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    .line 458
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lhgb;->a:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1077
    invoke-static {v5, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lhgb;->c:Lhga;

    iget-object v0, v0, Lhga;->a:Lhfu;

    iget-object v1, p0, Lhgb;->a:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    .line 2023
    iput-object v1, v0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    .line 460
    iget-object v0, p0, Lhgb;->c:Lhga;

    iget-object v0, v0, Lhga;->a:Lhfu;

    .line 3023
    iget-object v0, v0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    .line 460
    if-eqz v0, :cond_0

    iget-object v0, p0, Lhgb;->a:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    instance-of v0, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lhgb;->c:Lhga;

    iget-object v0, v0, Lhga;->a:Lhfu;

    .line 4023
    iget-object v0, v0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    .line 461
    iget-object v1, p0, Lhgb;->c:Lhga;

    iget-object v1, v1, Lhga;->a:Lhfu;

    .line 5023
    iget-object v1, v1, Lhfu;->d:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 462
    invoke-virtual {v1}, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->b()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    .line 461
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;->a(Landroid/view/Surface;Ljava/lang/Runnable;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lhgb;->c:Lhga;

    iget-object v0, v0, Lhga;->a:Lhfu;

    iget-object v1, p0, Lhgb;->b:Lhla;

    invoke-virtual {v0, v1}, Lhfu;->a(Lhla;)V

    .line 465
    return-void
.end method
