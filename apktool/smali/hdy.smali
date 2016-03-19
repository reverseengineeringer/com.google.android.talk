.class final Lhdy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLContext;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field final synthetic e:Lhee;

.field private final f:[I


# direct methods
.method constructor <init>(Lhee;)V
    .locals 1

    .prologue
    .line 168
    iput-object p1, p0, Lhdy;->e:Lhee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lhdy;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private static a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 259
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 260
    invoke-interface {p0, p1, p2, p3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    aget v0, v1, v0

    .line 263
    :cond_0
    return v0
.end method

.method private a([Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 246
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 247
    iget-object v3, p0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v5, 0x3024

    invoke-static {v3, v4, v2, v5}, Lhdy;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    .line 248
    iget-object v4, p0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v6, 0x3023

    invoke-static {v4, v5, v2, v6}, Lhdy;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    .line 249
    iget-object v5, p0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v7, 0x3022

    invoke-static {v5, v6, v2, v7}, Lhdy;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    .line 250
    if-ne v3, v8, :cond_0

    if-ne v4, v8, :cond_0

    if-ne v5, v8, :cond_0

    .line 251
    return-object v2

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to identify a supported opengl configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 191
    iget-object v0, p0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 193
    iget-object v1, p0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1222
    const/4 v2, 0x1

    new-array v5, v2, [I

    .line 1223
    iget-object v2, p0, Lhdy;->f:[I

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_1
    aget v4, v5, v4

    .line 1229
    if-gtz v4, :cond_2

    .line 1230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_2
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1234
    iget-object v2, p0, Lhdy;->f:[I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1238
    :cond_3
    invoke-direct {p0, v3}, Lhdy;->a([Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1239
    if-nez v0, :cond_4

    .line 1240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_4
    iput-object v0, p0, Lhdy;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 198
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 199
    iget-object v1, p0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lhdy;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lhdy;->c:Ljavax/microedition/khronos/egl/EGLContext;

    .line 202
    iget-object v0, p0, Lhdy;->c:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lhdy;->c:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_6

    .line 203
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglCreateContext failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_6
    return-void

    .line 198
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v0, p0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lhdy;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const-string v0, "vclib"

    const-string v1, "Unable to destroy eglContext"

    .line 2101
    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 215
    iput-object v3, p0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 216
    iput-object v3, p0, Lhdy;->c:Ljavax/microedition/khronos/egl/EGLContext;

    .line 217
    iput-object v3, p0, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 218
    iput-object v3, p0, Lhdy;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 219
    return-void
.end method
