.class final Lmpm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmpe;


# direct methods
.method constructor <init>(Lmpe;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lmpm;->a:Lmpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 451
    iget-object v0, p0, Lmpm;->a:Lmpe;

    iget-object v1, p0, Lmpm;->a:Lmpe;

    .line 1035
    iget-object v1, v1, Lmpe;->o:Ljava/lang/String;

    .line 2035
    iput-object v1, v0, Lmpe;->l:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lmpm;->a:Lmpe;

    .line 3035
    const/4 v1, 0x0

    iput-object v1, v0, Lmpe;->o:Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lmpm;->a:Lmpe;

    .line 4521
    iget-object v1, v0, Lmpe;->b:Ljava/util/concurrent/Executor;

    sget-object v2, Lmqh;->b:Lmqh;

    new-instance v3, Lmpq;

    invoke-direct {v3, v0}, Lmpq;-><init>(Lmpe;)V

    invoke-virtual {v0, v2, v3}, Lmpe;->a(Lmqh;Lmpz;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method
