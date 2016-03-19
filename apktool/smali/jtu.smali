.class final Ljtu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/UUID;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Llbb;

.field final synthetic d:Ljtt;


# direct methods
.method constructor <init>(Ljtt;Ljava/util/UUID;Ljava/util/ArrayList;Llbb;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Ljtu;->d:Ljtt;

    iput-object p2, p0, Ljtu;->a:Ljava/util/UUID;

    iput-object p3, p0, Ljtu;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Ljtu;->c:Llbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 75
    iget-object v0, p0, Ljtu;->d:Ljtt;

    .line 1029
    iget-object v0, v0, Ljtt;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 75
    iget-object v1, p0, Ljtu;->a:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Ljtu;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 80
    sget-object v0, Ljtk;->a:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 82
    :try_start_0
    iget-object v0, p0, Ljtu;->d:Ljtt;

    .line 2029
    iget-object v0, v0, Ljtt;->b:Lkog;

    .line 82
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljtr;

    .line 83
    iget-object v3, p0, Ljtu;->c:Llbb;

    new-instance v4, Ljtv;

    invoke-direct {v4, p0, v0, v1}, Ljtv;-><init>(Ljtu;Ljtr;Ljava/util/List;)V

    invoke-static {v4}, Ljua;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v4, p0, Ljtu;->d:Ljtt;

    .line 3029
    iget-object v4, v4, Ljtt;->a:Ljava/util/concurrent/Executor;

    .line 83
    invoke-interface {v3, v0, v4}, Llbb;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    invoke-static {v5}, Ljud;->a(Ljtn;)V

    throw v0

    :cond_0
    invoke-static {v5}, Ljud;->a(Ljtn;)V

    .line 92
    return-void
.end method
