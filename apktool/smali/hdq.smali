.class public final Lhdq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lhdo;

.field private b:Landroid/opengl/EGLSurface;

.field private c:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lhdo;Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lhdq;->a:Lhdo;

    .line 30
    iput-object p2, p0, Lhdq;->c:Landroid/view/Surface;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    iget-object v2, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_0

    .line 55
    :goto_0
    return v0

    .line 45
    :cond_0
    new-array v2, v1, [I

    const/16 v3, 0x3038

    aput v3, v2, v0

    .line 47
    iget-object v3, p0, Lhdq;->a:Lhdo;

    .line 48
    invoke-virtual {v3}, Lhdo;->b()Landroid/opengl/EGLDisplay;

    move-result-object v3

    iget-object v4, p0, Lhdq;->a:Lhdo;

    invoke-virtual {v4}, Lhdo;->a()Landroid/opengl/EGLConfig;

    move-result-object v4

    iget-object v5, p0, Lhdq;->c:Landroid/view/Surface;

    .line 47
    invoke-static {v3, v4, v5, v2, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    .line 49
    const-string v2, "eglCreateWindowSurface"

    invoke-static {v2}, Lhdo;->a(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v2, v3, :cond_2

    .line 51
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    .line 52
    const-string v1, "vclib"

    const-string v2, "Unable to create EGL surface for encoder input."

    .line 1101
    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method public a(J)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    iget-object v1, p0, Lhdq;->a:Lhdo;

    iget-object v2, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v2}, Lhdo;->a(Landroid/opengl/EGLSurface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v0, p0, Lhdq;->a:Lhdo;

    .line 77
    invoke-virtual {v0}, Lhdo;->b()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    .line 76
    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 78
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lhdq;->a:Lhdo;

    invoke-virtual {v0}, Lhdo;->b()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 62
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    .line 63
    iget-object v0, p0, Lhdq;->c:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lhdq;->c:Landroid/view/Surface;

    .line 65
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lhdq;->a:Lhdo;

    invoke-virtual {v0}, Lhdo;->b()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lhdq;->b:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "eglSwapBuffers"

    invoke-static {v0}, Lhdo;->a(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
