.class public final Lhed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lhed;->a:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lhed;->a:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 1024
    iget-object v0, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->b:Landroid/graphics/SurfaceTexture;

    .line 138
    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lhed;->a:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 2024
    iget-object v0, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->b:Landroid/graphics/SurfaceTexture;

    .line 139
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 140
    iget-object v0, p0, Lhed;->a:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 3024
    iput-object v1, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->b:Landroid/graphics/SurfaceTexture;

    .line 141
    iget-object v0, p0, Lhed;->a:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 4024
    iget-object v0, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->c:Landroid/view/Surface;

    .line 141
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 142
    iget-object v0, p0, Lhed;->a:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 5024
    iput-object v1, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->c:Landroid/view/Surface;

    .line 143
    iget-object v0, p0, Lhed;->a:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 6024
    iget v0, v0, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->a:I

    .line 144
    iget-object v1, p0, Lhed;->a:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 7024
    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->a:I

    .line 145
    invoke-static {v0}, Laal;->s(I)V

    .line 147
    :cond_0
    return-void
.end method
