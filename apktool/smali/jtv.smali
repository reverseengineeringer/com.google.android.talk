.class final Ljtv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljtr;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljtu;


# direct methods
.method constructor <init>(Ljtu;Ljtr;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Ljtv;->c:Ljtu;

    iput-object p2, p0, Ljtv;->a:Ljtr;

    iput-object p3, p0, Ljtv;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 86
    iget-object v1, p0, Ljtv;->b:Ljava/util/List;

    .line 1022
    const-string v0, "trace_manager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1028
    new-instance v6, Lhu;

    invoke-direct {v6}, Lhu;-><init>()V

    .line 1029
    monitor-enter v1

    .line 1030
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmfh;

    .line 1031
    invoke-virtual {v0}, Lmfh;->j()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5, v0}, Lhu;->a(JLjava/lang/Object;)V

    goto :goto_0

    .line 1033
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

    .line 1034
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v6}, Lhu;->a()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1036
    invoke-virtual {v6, v1}, Lhu;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmfh;

    .line 1037
    invoke-virtual {v0}, Lmfh;->j()J

    move-result-wide v2

    .line 1038
    invoke-virtual {v0}, Lmfh;->n()D

    move-result-wide v4

    double-to-long v4, v4

    .line 1039
    invoke-virtual {v0}, Lmfh;->o()D

    move-result-wide v8

    double-to-long v8, v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1040
    sub-long v4, v8, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x17

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide v4, v2

    move-object v2, v0

    .line 1042
    :goto_2
    invoke-virtual {v6, v4, v5}, Lhu;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmfh;

    .line 1043
    invoke-virtual {v0}, Lmfh;->k()J

    move-result-wide v4

    .line 1044
    invoke-virtual {v0}, Lmfh;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    .line 1046
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1048
    :cond_1
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1049
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_3

    .line 87
    :cond_2
    return-void

    :cond_3
    move-object v2, v0

    goto :goto_2
.end method
