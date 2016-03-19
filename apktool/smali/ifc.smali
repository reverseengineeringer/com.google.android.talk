.class final Lifc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lifb;


# direct methods
.method constructor <init>(Lifb;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lifc;->a:Lifb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 22
    iget-object v0, p0, Lifc;->a:Lifb;

    .line 1012
    iget-object v0, v0, Lifb;->a:Lifa;

    .line 22
    iget-object v1, p0, Lifc;->a:Lifb;

    .line 2012
    iget-object v1, v1, Lifb;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v1, p0, Lifc;->a:Lifb;

    .line 3012
    iget-wide v4, v1, Lifb;->c:J

    .line 22
    invoke-interface {v0, v2, v3, v4, v5}, Lifa;->a(JJ)V

    .line 23
    iget-object v0, p0, Lifc;->a:Lifb;

    .line 4012
    const/4 v1, 0x0

    iput-boolean v1, v0, Lifb;->b:Z

    .line 24
    return-void
.end method
