.class public final Lilm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Lilh;

.field private final b:Ljava/lang/Object;

.field private final c:Liln;

.field private final d:Z


# direct methods
.method constructor <init>(Liln;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lilm;->b:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lilm;->d:Z

    .line 52
    iput-object p1, p0, Lilm;->c:Liln;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lilh;
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lilm;->a:Lilh;

    if-nez v0, :cond_3

    .line 62
    iget-object v2, p0, Lilm;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 63
    :try_start_0
    iget-object v0, p0, Lilm;->a:Lilh;

    if-nez v0, :cond_2

    .line 64
    new-instance v3, Lilh;

    invoke-direct {v3, p1}, Lilh;-><init>(Landroid/content/Context;)V

    .line 66
    iget-boolean v0, p0, Lilm;->d:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1}, Lilh;->c(Landroid/content/Context;)Lilh;

    move-result-object v0

    invoke-virtual {v3, v0}, Lilh;->a(Lilh;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lilm;->c:Liln;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1022
    const/4 v1, 0x0

    .line 1026
    :try_start_1
    const-string v0, "gen_binder.root.RootModule$Generated"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lilr;

    .line 1028
    invoke-interface {v0}, Lilr;->a()Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1029
    :try_start_2
    invoke-virtual {v3, v0}, Lilh;->a(Lilq;)Lilh;

    .line 1030
    invoke-interface {v0, v3}, Lilr;->a(Lilh;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1045
    :goto_0
    :try_start_3
    new-instance v0, Lilg;

    invoke-direct {v0, p1, v1}, Lilg;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 1046
    invoke-virtual {v3, v0}, Lilh;->a(Lilq;)Lilh;

    .line 74
    :cond_1
    iput-object v3, p0, Lilm;->a:Lilh;

    .line 76
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :cond_3
    iget-object v0, p0, Lilm;->a:Lilh;

    return-object v0

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to instantiate root module gen_binder.root.RootModule$Generated"

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1035
    :catch_1
    move-exception v0

    .line 1036
    :try_start_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to instantiate root module gen_binder.root.RootModule$Generated"

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
