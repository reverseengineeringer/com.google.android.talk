.class public final Lhdo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLContext;

.field private c:Landroid/opengl/EGLConfig;

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lhdp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lhdo;->b:Landroid/opengl/EGLContext;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lhdo;->d:Ljava/util/LinkedList;

    .line 55
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 172
    invoke-static {}, Lhbs;->c()V

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    const/16 v2, 0x3000

    if-eq v1, v2, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 177
    const-string v2, "vclib"

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": EGL error: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5101
    const/4 v3, 0x6

    invoke-static {v3, v2, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ": EGL error encountered (see log)."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/opengl/EGLConfig;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhdo;->c:Landroid/opengl/EGLConfig;

    return-object v0
.end method

.method public a(Landroid/opengl/EGLSurface;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lhdo;->b:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v1, v2, :cond_0

    .line 125
    const-string v1, "vclib"

    const-string v2, "pushContext called with no created EGL context."

    .line 3101
    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return v0

    .line 130
    :cond_0
    new-instance v1, Lhdp;

    .line 4041
    invoke-direct {v1}, Lhdp;-><init>()V

    .line 131
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, v1, Lhdp;->a:Landroid/opengl/EGLContext;

    .line 132
    const/16 v2, 0x3059

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    iput-object v2, v1, Lhdp;->c:Landroid/opengl/EGLSurface;

    .line 133
    const/16 v2, 0x305a

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    iput-object v2, v1, Lhdp;->b:Landroid/opengl/EGLSurface;

    .line 134
    iget-object v2, p0, Lhdo;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lhdo;->b:Landroid/opengl/EGLContext;

    invoke-static {v2, p1, p1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    const-string v1, "eglMakeCurrent"

    invoke-static {v1}, Lhdo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lhdo;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 139
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Landroid/opengl/EGLDisplay;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lhdo;->a:Landroid/opengl/EGLDisplay;

    return-object v0
.end method

.method public c()Z
    .locals 10

    .prologue
    const/16 v8, 0x3038

    const/4 v9, 0x6

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lhdo;->b:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_0

    .line 66
    const-string v0, "Asked to re-initialize an EncoderGLContext."

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 112
    :goto_0
    return v2

    .line 69
    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lhdo;->a:Landroid/opengl/EGLDisplay;

    .line 70
    iget-object v0, p0, Lhdo;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v1}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Laen;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    .line 74
    :goto_1
    const/16 v1, 0xb

    new-array v1, v1, [I

    const/16 v3, 0x3024

    aput v3, v1, v2

    aput v6, v1, v5

    const/4 v3, 0x2

    const/16 v4, 0x3023

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v6, v1, v3

    const/4 v3, 0x4

    const/16 v4, 0x3022

    aput v4, v1, v3

    const/4 v3, 0x5

    aput v6, v1, v3

    const/16 v3, 0x3040

    aput v3, v1, v9

    const/4 v3, 0x7

    const/4 v4, 0x4

    aput v4, v1, v3

    aput v0, v1, v6

    const/16 v0, 0x9

    aput v5, v1, v0

    const/16 v0, 0xa

    aput v8, v1, v0

    .line 83
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 84
    new-array v6, v5, [I

    .line 85
    iget-object v0, p0, Lhdo;->a:Landroid/opengl/EGLDisplay;

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    const-string v0, "vclib"

    const-string v1, "Unable to find RGB8888+recordable ES2 EGL config."

    .line 1101
    invoke-static {v9, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_1
    const/16 v0, 0x3142

    goto :goto_1

    .line 90
    :cond_2
    aget-object v0, v3, v2

    iput-object v0, p0, Lhdo;->c:Landroid/opengl/EGLConfig;

    .line 94
    new-array v0, v5, [I

    .line 95
    iget-object v1, p0, Lhdo;->a:Landroid/opengl/EGLDisplay;

    .line 96
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v3

    const/16 v4, 0x3098

    .line 95
    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 98
    const-string v0, "vclib"

    const-string v1, "Unable to get current EGL context client version."

    .line 2101
    invoke-static {v9, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/16 v3, 0x3098

    aput v3, v1, v2

    aget v0, v0, v2

    aput v0, v1, v5

    const/4 v0, 0x2

    aput v8, v1, v0

    .line 108
    iget-object v0, p0, Lhdo;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lhdo;->c:Landroid/opengl/EGLConfig;

    .line 109
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v4

    .line 108
    invoke-static {v0, v3, v4, v1, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lhdo;->b:Landroid/opengl/EGLContext;

    .line 111
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lhdo;->a(Ljava/lang/String;)V

    move v2, v5

    .line 112
    goto/16 :goto_0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lhdo;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "vclib"

    const-string v1, "popContext called with no saved EGL context."

    .line 4101
    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lhdo;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp;

    .line 164
    iget-object v1, p0, Lhdo;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 165
    iget-object v1, p0, Lhdo;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lhdp;->c:Landroid/opengl/EGLSurface;

    iget-object v3, v0, Lhdp;->b:Landroid/opengl/EGLSurface;

    iget-object v0, v0, Lhdp;->a:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method
