.class public final Liff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lorg/chromium/net/HttpUrlRequestFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/channels/WritableByteChannel;",
            "Lorg/chromium/net/HttpUrlRequestListener;",
            ")",
            "Lorg/chromium/net/HttpUrlRequest;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Liff;->a(Landroid/content/Context;)Lorg/chromium/net/HttpUrlRequestFactory;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/net/HttpUrlRequestFactory;->b(Ljava/lang/String;ILjava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/chromium/net/HttpUrlRequestListener;",
            ")",
            "Lorg/chromium/net/HttpUrlRequest;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0}, Liff;->a(Landroid/content/Context;)Lorg/chromium/net/HttpUrlRequestFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/net/HttpUrlRequestFactory;->b(Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lorg/chromium/net/HttpUrlRequestFactory;
    .locals 5

    .prologue
    .line 34
    const-class v2, Liff;

    monitor-enter v2

    :try_start_0
    sget-object v0, Liff;->a:Lorg/chromium/net/HttpUrlRequestFactory;

    if-nez v0, :cond_3

    .line 35
    const-class v3, Liff;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    sget-object v0, Liff;->a:Lorg/chromium/net/HttpUrlRequestFactory;

    if-nez v0, :cond_2

    .line 37
    const-class v0, Lorg/chromium/net/HttpUrlRequestFactory;

    invoke-static {p0, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/HttpUrlRequestFactory;

    .line 38
    if-nez v0, :cond_1

    .line 39
    const-class v0, Lorg/chromium/net/UrlRequestContextConfig;

    .line 40
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/CronetEngine$Builder;

    .line 1028
    const/4 v1, 0x0

    .line 1029
    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine$Builder;->e()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1030
    invoke-static {p0, v0}, Lorg/chromium/net/HttpUrlRequestFactory;->a(Landroid/content/Context;Lorg/chromium/net/CronetEngine$Builder;)Lorg/chromium/net/HttpUrlRequestFactory;

    move-result-object v1

    .line 1032
    :cond_0
    if-nez v1, :cond_4

    .line 1034
    new-instance v1, Lorg/chromium/net/HttpUrlConnectionUrlRequestFactory;

    invoke-direct {v1, p0, v0}, Lorg/chromium/net/HttpUrlConnectionUrlRequestFactory;-><init>(Landroid/content/Context;Lorg/chromium/net/CronetEngine$Builder;)V

    move-object v0, v1

    .line 1036
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Using network stack: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/chromium/net/HttpUrlRequestFactory;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_1
    sput-object v0, Liff;->a:Lorg/chromium/net/HttpUrlRequestFactory;

    .line 44
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :cond_3
    :try_start_2
    sget-object v0, Liff;->a:Lorg/chromium/net/HttpUrlRequestFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 34
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
