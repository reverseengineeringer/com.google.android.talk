.class final Ldyz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbfd;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ldtt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbfd;)V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Ldyz;->a:Lbfd;

    .line 228
    invoke-static {}, Lezc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldyz;->b:Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldyz;->c:Ljava/util/Set;

    .line 230
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Ldyz;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 282
    new-instance v0, Lbep;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ldyz;->c:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Ldyz;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbep;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Ldyz;->a:Lbfd;

    invoke-static {v1}, Lehd;->a(Lbfd;)Lehd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lehd;->c(Lehx;)V

    .line 285
    iget-object v0, p0, Ldyz;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 287
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lbfz;Ljava/lang/String;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbfz;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-virtual {p2}, Lbfz;->a()V

    .line 245
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 246
    const-class v0, Lbdp;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    const-string v4, "babel_yieldtime"

    const-wide/16 v6, 0x7d0

    invoke-interface {v0, v4, v6, v7}, Lbdp;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 250
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczb;

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    cmp-long v7, v8, v4

    if-ltz v7, :cond_1

    .line 253
    invoke-virtual {p2}, Lbfz;->d()V

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 257
    :cond_1
    iget-object v7, p0, Ldyz;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v7, p3}, Lbfz;->a(Lczb;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 259
    if-eqz v7, :cond_0

    .line 260
    invoke-static {v0}, Laal;->a(Lczb;)Ldtt;

    move-result-object v7

    .line 261
    invoke-virtual {v7}, Ldtt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    const/4 v0, 0x1

    .line 263
    iget-object v1, p0, Ldyz;->c:Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_0

    .line 265
    :cond_2
    const-string v0, "Babel_RTCOpState"

    const-string v7, "RealTimeChatOperationState: invalid spec"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lbfz;->c()V

    throw v0

    .line 269
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Lbfz;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    invoke-virtual {p2}, Lbfz;->c()V

    .line 273
    return v1
.end method
