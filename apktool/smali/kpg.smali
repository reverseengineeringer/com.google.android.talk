.class final Lkpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lkpc;

.field final synthetic d:Llbb;

.field final synthetic e:Lkpf;


# direct methods
.method constructor <init>(Lkpf;Ljava/lang/Object;ILkpc;Llbb;)V
    .locals 0

    .prologue
    .line 2332
    iput-object p1, p0, Lkpg;->e:Lkpf;

    iput-object p2, p0, Lkpg;->a:Ljava/lang/Object;

    iput p3, p0, Lkpg;->b:I

    iput-object p4, p0, Lkpg;->c:Lkpc;

    iput-object p5, p0, Lkpg;->d:Llbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2336
    :try_start_0
    iget-object v0, p0, Lkpg;->e:Lkpf;

    iget-object v1, p0, Lkpg;->a:Ljava/lang/Object;

    iget v2, p0, Lkpg;->b:I

    iget-object v3, p0, Lkpg;->c:Lkpc;

    iget-object v4, p0, Lkpg;->d:Llbb;

    invoke-virtual {v0, v1, v2, v3, v4}, Lkpf;->a(Ljava/lang/Object;ILkpc;Llbb;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2341
    :goto_0
    return-void

    .line 2337
    :catch_0
    move-exception v0

    .line 2338
    sget-object v1, Lcom/google/common/cache/LocalCache;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2339
    iget-object v1, p0, Lkpg;->c:Lkpc;

    invoke-virtual {v1, v0}, Lkpc;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
