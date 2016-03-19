.class public final Lhkk;
.super Lhle;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lhkk;->a:Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;

    invoke-direct {p0}, Lhle;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 186
    iget-object v1, p0, Lhkk;->a:Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;

    .line 5401
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->c:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 5402
    invoke-virtual {v1}, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->a()Lhlp;

    move-result-object v2

    .line 6251
    iget v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->f:I

    if-lez v0, :cond_1

    .line 6252
    iget v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->f:I

    .line 5403
    :goto_0
    iput v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->e:I

    .line 5404
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->c:Landroid/graphics/SurfaceTexture;

    iget v3, v2, Lhlp;->a:I

    iget v4, v2, Lhlp;->b:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 5405
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->b:Lhld;

    new-instance v3, Lhlc;

    invoke-direct {v3}, Lhlc;-><init>()V

    iget v4, v2, Lhlp;->a:I

    iget v2, v2, Lhlp;->b:I

    .line 5406
    invoke-virtual {v3, v4, v2}, Lhlc;->a(II)Lhlc;

    move-result-object v2

    const/4 v3, 0x1

    .line 5407
    invoke-virtual {v2, v3}, Lhlc;->a(Z)Lhlc;

    move-result-object v2

    .line 5405
    invoke-interface {v0, v2}, Lhld;->a(Lhlc;)V

    .line 5408
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->b:Lhld;

    iget v2, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->e:I

    invoke-interface {v0, v2}, Lhld;->a(I)V

    .line 5410
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->b()V

    .line 187
    return-void

    .line 6254
    :cond_1
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->b:Lhld;

    invoke-interface {v0}, Lhld;->k()Lhlf;

    move-result-object v0

    iget v0, v0, Lhlf;->a:I

    const/16 v3, 0x500

    if-lt v0, v3, :cond_2

    .line 6255
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "babel_hangout_screen_capture_framerate_hw"

    const/16 v4, 0xa

    invoke-static {v0, v3, v4}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 6259
    :cond_2
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "babel_hangout_screen_capture_framerate_sw"

    const/4 v4, 0x5

    invoke-static {v0, v3, v4}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    .prologue
    .line 178
    iget-object v0, p0, Lhkk;->a:Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;

    .line 1050
    iput-object p1, v0, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->c:Landroid/graphics/SurfaceTexture;

    .line 179
    iget-object v0, p0, Lhkk;->a:Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;

    .line 2050
    iget-object v0, v0, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->d:Landroid/hardware/display/VirtualDisplay;

    .line 179
    if-nez v0, :cond_1

    .line 180
    iget-object v1, p0, Lhkk;->a:Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;

    .line 3401
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->c:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 3402
    invoke-virtual {v1}, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->a()Lhlp;

    move-result-object v2

    .line 4251
    iget v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->f:I

    if-lez v0, :cond_2

    .line 4252
    iget v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->f:I

    .line 3403
    :goto_0
    iput v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->e:I

    .line 3404
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->c:Landroid/graphics/SurfaceTexture;

    iget v3, v2, Lhlp;->a:I

    iget v4, v2, Lhlp;->b:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 3405
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->b:Lhld;

    new-instance v3, Lhlc;

    invoke-direct {v3}, Lhlc;-><init>()V

    iget v4, v2, Lhlp;->a:I

    iget v2, v2, Lhlp;->b:I

    .line 3406
    invoke-virtual {v3, v4, v2}, Lhlc;->a(II)Lhlc;

    move-result-object v2

    const/4 v3, 0x1

    .line 3407
    invoke-virtual {v2, v3}, Lhlc;->a(Z)Lhlc;

    move-result-object v2

    .line 3405
    invoke-interface {v0, v2}, Lhld;->a(Lhlc;)V

    .line 3408
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->b:Lhld;

    iget v2, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->e:I

    invoke-interface {v0, v2}, Lhld;->a(I)V

    .line 3410
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->b()V

    .line 182
    :cond_1
    return-void

    .line 4254
    :cond_2
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->b:Lhld;

    invoke-interface {v0}, Lhld;->k()Lhlf;

    move-result-object v0

    iget v0, v0, Lhlf;->a:I

    const/16 v3, 0x500

    if-lt v0, v3, :cond_3

    .line 4255
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "babel_hangout_screen_capture_framerate_hw"

    const/16 v4, 0xa

    invoke-static {v0, v3, v4}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 4259
    :cond_3
    iget-object v0, v1, Lcom/google/android/libraries/hangouts/video/sdk/ScreenVideoCapturer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "babel_hangout_screen_capture_framerate_sw"

    const/4 v4, 0x5

    invoke-static {v0, v3, v4}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method
