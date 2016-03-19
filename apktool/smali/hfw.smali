.class final Lhfw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhla;

.field final synthetic b:Lhfu;


# direct methods
.method constructor <init>(Lhfu;Lhla;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lhfw;->b:Lhfu;

    iput-object p2, p0, Lhfw;->a:Lhla;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lhfw;->a:Lhla;

    iget-object v1, p0, Lhfw;->b:Lhfu;

    iget-object v1, v1, Lhfu;->p:Lhla;

    invoke-virtual {v0, v1}, Lhla;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lhfw;->a:Lhla;

    invoke-virtual {v0}, Lhla;->b()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lhfw;->b:Lhfu;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lhfw;->a:Lhla;

    invoke-virtual {v2}, Lhla;->a()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1023
    iput-object v1, v0, Lhfu;->i:Landroid/view/Surface;

    .line 102
    iget-object v0, p0, Lhfw;->b:Lhfu;

    .line 2023
    iget-object v0, v0, Lhfu;->i:Landroid/view/Surface;

    move-object v1, v0

    .line 106
    :goto_0
    iget-object v0, p0, Lhfw;->b:Lhfu;

    .line 3023
    iget-object v0, v0, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    .line 106
    check-cast v0, Lhff;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhff;->a(Landroid/view/Surface;Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lhfw;->b:Lhfu;

    iget-object v1, p0, Lhfw;->a:Lhla;

    iput-object v1, v0, Lhfu;->p:Lhla;

    .line 109
    iget-object v0, p0, Lhfw;->b:Lhfu;

    invoke-virtual {v0}, Lhfu;->i()V

    .line 110
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lhfw;->a:Lhla;

    invoke-virtual {v0}, Lhla;->b()Landroid/view/Surface;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method
