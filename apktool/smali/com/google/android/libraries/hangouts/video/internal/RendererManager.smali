.class public final Lcom/google/android/libraries/hangouts/video/internal/RendererManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/libraries/hangouts/video/internal/Renderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

.field private mNativeContext:J
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhcd;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->nativeInit()V

    .line 65
    invoke-virtual {p1}, Lhcd;->h()Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->a:Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

    .line 66
    sget-object v1, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->c:Ljava/util/Map;

    .line 73
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/google/android/libraries/hangouts/video/internal/Renderer;)V
    .locals 3

    .prologue
    .line 114
    sget-object v1, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->c:Ljava/util/Map;

    iget v2, p0, Lcom/google/android/libraries/hangouts/video/internal/Renderer;->mRendererID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Lcom/google/android/libraries/hangouts/video/internal/Renderer;)V
    .locals 3

    .prologue
    .line 130
    sget-object v1, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->c:Ljava/util/Map;

    iget v2, p0, Lcom/google/android/libraries/hangouts/video/internal/Renderer;->mRendererID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 98
    sget-object v1, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private final native nativeInit()V
.end method

.method private final native nativeRelease()V
.end method

.method static notifyFrameReceived(I)V
    .locals 3
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 148
    sget-object v1, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->c:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 153
    monitor-exit v1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    sget-object v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    .line 156
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/Renderer;->f()V

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lhbs;->a(III)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->nativeInstantiateRenderer(I)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->nativeRelease()V

    .line 82
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->a:Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->a()V

    .line 83
    sget-object v1, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->c:Ljava/util/Map;

    .line 85
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->mNativeContext:J

    return-wide v0
.end method

.method final native getIntParam(ILjava/lang/String;)I
.end method

.method final native initializeGLContext(I)Z
.end method

.method final native nativeInstantiateRenderer(I)I
.end method

.method public final native notifyFrameRendered(I)V
.end method

.method public final native releaseRenderer(I)V
.end method

.method final native renderFrame(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method final native setIntParam(ILjava/lang/String;I)V
.end method
