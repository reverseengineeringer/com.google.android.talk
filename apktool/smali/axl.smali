.class public final Laxl;
.super Lagr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lagr",
        "<",
        "Leis;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/Object;


# instance fields
.field public final e:Leyg;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Long;

.field private final h:Lagx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lagx",
            "<",
            "Leis;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Laxl;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Leyg;Lagx;Lagw;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leyg;",
            "Lagx",
            "<",
            "Leis;",
            ">;",
            "Lagw;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-virtual {p1}, Leyg;->t()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lagr;-><init>(Ljava/lang/String;Lagw;)V

    .line 47
    iput-object v4, p0, Laxl;->g:Ljava/lang/Long;

    .line 57
    new-instance v0, Lagz;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lagz;-><init>(IIF)V

    invoke-virtual {p0, v0}, Laxl;->a(Lagz;)Lagr;

    .line 61
    iput-object p2, p0, Laxl;->h:Lagx;

    .line 62
    iput-object p1, p0, Laxl;->e:Leyg;

    .line 63
    iput-object v4, p0, Laxl;->f:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Laxl;->e:Leyg;

    invoke-virtual {v0}, Leyg;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Ldoo;->f:Ljava/lang/String;

    invoke-static {v0}, Lcvm;->a(Ljava/lang/String;)Lcvn;

    move-result-object v1

    .line 68
    :try_start_0
    iget-object v0, p0, Laxl;->e:Leyg;

    invoke-virtual {v0}, Leyg;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcvn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laxl;->f:Ljava/lang/String;
    :try_end_0
    .catch Ldvn; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object v0, p0, Laxl;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Laxl;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcvn;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Laxl;->g:Ljava/lang/Long;

    .line 76
    :cond_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v2, "Babel"

    const-string v3, "Error getting auth token"

    invoke-static {v2, v3, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lagq;)Lagv;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagq;",
            ")",
            "Lagv",
            "<",
            "Leis;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 98
    sget-object v2, Laxl;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 1115
    :try_start_0
    new-instance v3, Lagj;

    invoke-direct {v3}, Lagj;-><init>()V

    .line 1116
    iget-object v1, p1, Lagq;->b:[B

    iput-object v1, v3, Lagj;->a:[B

    .line 1117
    iget-object v1, p1, Lagq;->c:Ljava/util/Map;

    iput-object v1, v3, Lagj;->g:Ljava/util/Map;

    .line 1120
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v3, Lagj;->e:J

    .line 1121
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v3, Lagj;->f:J

    .line 1124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lagj;->c:J

    .line 1125
    iget-object v1, p1, Lagq;->c:Ljava/util/Map;

    const-string v4, "VolleyDiskCache"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 1126
    :goto_0
    new-instance v4, Leis;

    iget-object v5, p1, Lagq;->b:[B

    iget-object v0, p1, Lagq;->c:Ljava/util/Map;

    const-string v6, "Content-Type"

    .line 1127
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v5, v0, v1}, Leis;-><init>([BLjava/lang/String;Z)V

    .line 2043
    new-instance v0, Lagv;

    invoke-direct {v0, v4, v3}, Lagv;-><init>(Ljava/lang/Object;Lagj;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    monitor-exit v2

    .line 104
    :goto_1
    return-object v0

    :cond_0
    move v1, v0

    .line 1125
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v1, "Babel"

    iget-object v3, p1, Lagq;->b:[B

    array-length v3, v3

    .line 103
    invoke-virtual {p0}, Laxl;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2b

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Caught OOM for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " byte media, url="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 102
    invoke-static {v1, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance v1, Laha;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Laha;-><init>(Ljava/lang/Throwable;S)V

    invoke-static {v1}, Lagv;->a(Laha;)Lagv;

    move-result-object v0

    monitor-exit v2

    goto :goto_1

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 28
    check-cast p1, Leis;

    .line 2133
    iget-object v0, p0, Laxl;->h:Lagx;

    invoke-virtual {v0, p1}, Lagx;->a(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public g()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Laxl;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 86
    new-instance v1, Lhq;

    invoke-direct {v1}, Lhq;-><init>()V

    .line 87
    const-string v2, "Authorization"

    const-string v3, "Bearer "

    iget-object v0, p0, Laxl;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 90
    :goto_1
    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1
.end method

.method public l()Lagt;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lagt;->a:Lagt;

    return-object v0
.end method
