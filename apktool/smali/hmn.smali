.class public Lhmn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Z

.field private static g:Lhmn;


# instance fields
.field final b:Lhmt;

.field final c:Lhmy;

.field final d:Lhmq;

.field final e:Lhmv;

.field final f:Lhmx;

.field private final h:Lhnj;

.field private final i:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lhmn;->a:Z

    return-void
.end method

.method private constructor <init>(Lhnj;Landroid/app/Application;Lhmo;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lhmn;->h:Lhnj;

    .line 75
    iput-object p2, p0, Lhmn;->i:Landroid/app/Application;

    .line 76
    iget-object v0, p3, Lhmo;->a:Lhmt;

    iput-object v0, p0, Lhmn;->b:Lhmt;

    .line 77
    iget-object v0, p3, Lhmo;->b:Lhmy;

    iput-object v0, p0, Lhmn;->c:Lhmy;

    .line 78
    iget-object v0, p3, Lhmo;->c:Lhmq;

    iput-object v0, p0, Lhmn;->d:Lhmq;

    .line 79
    iget-object v0, p3, Lhmo;->d:Lhmv;

    iput-object v0, p0, Lhmn;->e:Lhmv;

    .line 80
    iget-object v0, p3, Lhmo;->e:Lhmx;

    iput-object v0, p0, Lhmn;->f:Lhmx;

    .line 81
    iget-object v0, p0, Lhmn;->i:Landroid/app/Application;

    .line 1028
    sget-object v1, Lhml;->a:Lhml;

    if-nez v1, :cond_0

    .line 1029
    invoke-static {v0}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    new-instance v1, Lhml;

    invoke-direct {v1, v0}, Lhml;-><init>(Landroid/app/Application;)V

    sput-object v1, Lhml;->a:Lhml;

    .line 82
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lhnj;Landroid/app/Application;Lhmo;)Lhmn;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    const-class v3, Lhmn;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lhmn;->g:Lhmn;

    if-eqz v2, :cond_0

    .line 119
    sget-object v0, Lhmn;->g:Lhmn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit v3

    return-object v0

    .line 122
    :cond_0
    :try_start_1
    invoke-static {p0}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p2}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v2, p2, Lhmo;->a:Lhmt;

    invoke-virtual {v2}, Lhmt;->b()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v0

    :goto_1
    invoke-static {v2}, Laen;->a(Z)V

    .line 126
    iget-object v2, p2, Lhmo;->b:Lhmy;

    invoke-virtual {v2}, Lhmy;->b()I

    move-result v2

    if-lez v2, :cond_5

    move v2, v0

    :goto_2
    invoke-static {v2}, Laen;->a(Z)V

    .line 127
    iget-object v2, p2, Lhmo;->c:Lhmq;

    invoke-virtual {v2}, Lhmq;->b()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v0

    :goto_3
    invoke-static {v2}, Laen;->a(Z)V

    .line 128
    iget-object v2, p2, Lhmo;->d:Lhmv;

    invoke-virtual {v2}, Lhmv;->b()I

    move-result v2

    if-lez v2, :cond_7

    :goto_4
    invoke-static {v0}, Laen;->a(Z)V

    .line 1140
    sget-object v0, Lhmt;->c:Lhmt;

    .line 1144
    sget-object v0, Lhmy;->c:Lhmy;

    .line 1148
    sget-object v0, Lhmq;->a:Lhmq;

    .line 1151
    sget-object v0, Lhmv;->a:Lhmv;

    .line 1155
    sget-object v0, Lhmx;->a:Lhmx;

    .line 132
    new-instance v0, Lhmn;

    invoke-direct {v0, p0, p1, p2}, Lhmn;-><init>(Lhnj;Landroid/app/Application;Lhmo;)V

    .line 134
    sput-object v0, Lhmn;->g:Lhmn;

    .line 2086
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2087
    iget-object v2, v0, Lhmn;->d:Lhmq;

    invoke-virtual {v2}, Lhmq;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2088
    iget-object v2, v0, Lhmn;->h:Lhnj;

    iget-object v4, v0, Lhmn;->d:Lhmq;

    .line 2089
    invoke-static {v2, v4}, Lhlu;->a(Lhnj;Lhmd;)Lhlu;

    move-result-object v2

    .line 2090
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2094
    :cond_1
    iget-object v2, v0, Lhmn;->f:Lhmx;

    invoke-virtual {v2}, Lhmx;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2095
    iget-object v2, v0, Lhmn;->i:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2096
    new-instance v4, Lhmm;

    invoke-direct {v4, v2}, Lhmm;-><init>(Landroid/content/Context;)V

    .line 2097
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2099
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2100
    new-instance v2, Lhnc;

    iget-object v0, v0, Lhmn;->h:Lhnj;

    invoke-direct {v2, v0, v1}, Lhnc;-><init>(Lhnj;Ljava/util/List;)V

    invoke-virtual {v2}, Lhnc;->a()V

    .line 136
    :cond_3
    sget-object v0, Lhmn;->g:Lhmn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 125
    goto :goto_1

    :cond_5
    move v2, v1

    .line 126
    goto :goto_2

    :cond_6
    move v2, v1

    .line 127
    goto :goto_3

    :cond_7
    move v0, v1

    .line 128
    goto :goto_4

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized a(Lhnn;Landroid/app/Application;Lhmo;)Lhmn;
    .locals 8

    .prologue
    .line 173
    const-class v1, Lhmn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhmn;->g:Lhmn;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lhmn;->g:Lhmn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_0
    monitor-exit v1

    return-object v0

    .line 178
    :cond_0
    :try_start_1
    invoke-static {p0}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Lhnl;

    invoke-direct {v0}, Lhnl;-><init>()V

    .line 189
    new-instance v2, Lhnm;

    invoke-direct {v2}, Lhnm;-><init>()V

    .line 4017
    sget-object v3, Lhms;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4052
    new-instance v4, Lhnp;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5, v2}, Lhnp;-><init>(ILhnm;)V

    .line 4055
    new-instance v2, Lhnk;

    invoke-direct {v2, p0, v4, v0}, Lhnk;-><init>(Lhnn;Lhnp;Lhnl;)V

    .line 4074
    const-wide/16 v6, 0x64

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v2, v6, v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 206
    invoke-static {v4, p1, p2}, Lhmn;->a(Lhnj;Landroid/app/Application;Lhmo;)Lhmn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4417
    const-class v3, Lhmn;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lhmn;->a:Z

    if-nez v2, :cond_3

    .line 5413
    sget-object v2, Lhmn;->g:Lhmn;

    if-eqz v2, :cond_1

    move v2, v0

    .line 4417
    :goto_0
    if-eqz v2, :cond_3

    .line 6396
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v2, v4, :cond_2

    move v2, v1

    .line 4417
    :goto_1
    if-eqz v2, :cond_3

    .line 222
    :goto_2
    if-eqz v0, :cond_0

    sget-object v0, Lhmn;->g:Lhmn;

    iget-object v0, v0, Lhmn;->b:Lhmt;

    invoke-virtual {v0}, Lhmt;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 236
    :cond_0
    :goto_3
    monitor-exit v3

    return-void

    :cond_1
    move v2, v1

    .line 5413
    goto :goto_0

    :cond_2
    move v2, v0

    .line 6400
    goto :goto_1

    :cond_3
    move v0, v1

    .line 4417
    goto :goto_2

    .line 226
    :cond_4
    :try_start_1
    sget-object v0, Lhmn;->g:Lhmn;

    iget-object v0, v0, Lhmn;->b:Lhmt;

    invoke-virtual {v0}, Lhmt;->c()Z

    .line 231
    sget-object v0, Lhmn;->g:Lhmn;

    iget-object v0, v0, Lhmn;->h:Lhnj;

    sget-object v1, Lhmn;->g:Lhmn;

    iget-object v1, v1, Lhmn;->i:Landroid/app/Application;

    sget-object v2, Lhmn;->g:Lhmn;

    iget-object v2, v2, Lhmn;->b:Lhmt;

    invoke-static {v0, v1, v2}, Lhmb;->a(Lhnj;Landroid/app/Application;Lhmd;)Lhmb;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lhmb;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 4417
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
