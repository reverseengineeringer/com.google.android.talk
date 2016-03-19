.class final Lmpl;
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
    .line 395
    iput-object p1, p0, Lmpl;->a:Lmpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lmpl;->a:Lmpe;

    .line 1035
    iget-object v0, v0, Lmpe;->e:Ljava/util/List;

    .line 398
    iget-object v1, p0, Lmpl;->a:Lmpe;

    .line 2035
    iget-object v1, v1, Lmpe;->l:Ljava/lang/String;

    .line 398
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lmpl;->a:Lmpe;

    .line 3521
    iget-object v1, v0, Lmpe;->b:Ljava/util/concurrent/Executor;

    sget-object v2, Lmqh;->b:Lmqh;

    new-instance v3, Lmpq;

    invoke-direct {v3, v0}, Lmpq;-><init>(Lmpe;)V

    invoke-virtual {v0, v2, v3}, Lmpe;->a(Lmqh;Lmpz;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method
