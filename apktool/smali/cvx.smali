.class public final Lcvx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lagu;

.field private static final b:Z

.field private static final c:Lezv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lezi;->i:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcvx;->b:Z

    .line 29
    const-string v0, "VolleyUtils"

    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Lcvx;->c:Lezv;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcvx;->a:Lagu;

    return-void
.end method

.method public static declared-synchronized a()Lagu;
    .locals 8

    .prologue
    .line 34
    const-class v1, Lcvx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcvx;->a:Lagu;

    if-nez v0, :cond_1

    .line 35
    sget-object v0, Lcvx;->c:Lezv;

    const-string v2, "RQ initialization"

    invoke-virtual {v0, v2}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 1036
    :try_start_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    invoke-static {v0}, Lgqa;->a(Landroid/content/Context;)V
    :try_end_2
    .catch Lfhq; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lfhp; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :goto_0
    :try_start_3
    invoke-static {}, Laal;->i()Ljava/lang/String;

    move-result-object v3

    .line 2000
    new-instance v4, Lgab;

    invoke-direct {v4, v0, v3}, Lgab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    sget-boolean v3, Lcvx;->b:Z

    if-eqz v3, :cond_0

    .line 52
    const-string v3, "Babel"

    invoke-virtual {v4, v3}, Lgab;->a(Ljava/lang/String;)V

    .line 55
    :cond_0
    new-instance v3, Lahe;

    new-instance v5, Lahi;

    invoke-direct {v5, v4}, Lahi;-><init>(Lorg/apache/http/client/HttpClient;)V

    invoke-direct {v3, v5}, Lahe;-><init>(Lahi;)V

    .line 56
    new-instance v4, Lcvv;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 3036
    sget-object v5, Laal;->oJ:Landroid/content/Context;

    .line 2076
    const-string v6, "babel_volley_cache_size"

    const/high16 v7, 0x3200000

    invoke-static {v5, v6, v7}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 56
    invoke-direct {v4, v0, v5}, Lcvv;-><init>(Ljava/io/File;I)V

    .line 57
    new-instance v0, Lagu;

    .line 4036
    sget-object v5, Laal;->oJ:Landroid/content/Context;

    .line 3081
    const-string v6, "babel_thread_pool_size"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 57
    invoke-direct {v0, v4, v3, v5}, Lagu;-><init>(Lagi;Lago;I)V

    .line 58
    sput-object v0, Lcvx;->a:Lagu;

    invoke-virtual {v0}, Lagu;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :try_start_4
    sget-object v0, Lcvx;->c:Lezv;

    invoke-virtual {v0, v2}, Lezv;->c(Ljava/lang/String;)V

    .line 63
    :cond_1
    sget-object v0, Lcvx;->a:Lagu;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    return-object v0

    .line 43
    :catch_0
    move-exception v3

    .line 44
    :try_start_5
    const-string v4, "Babel"

    const-string v5, "Temporarily unable to update security library"

    invoke-static {v4, v5, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    invoke-virtual {v3}, Lfhq;->a()I

    move-result v3

    invoke-static {v3, v0}, Lfhr;->a(ILandroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_6
    sget-object v3, Lcvx;->c:Lezv;

    invoke-virtual {v3, v2}, Lezv;->c(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 34
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 46
    :catch_1
    move-exception v3

    .line 47
    :try_start_7
    const-string v4, "Babel"

    const-string v5, "Permanently unable to update security library"

    invoke-static {v4, v5, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcvx;->a()Lagu;

    .line 68
    sget-object v0, Lcvx;->a:Lagu;

    invoke-virtual {v0}, Lagu;->b()Lagi;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p0}, Lagi;->b(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method
