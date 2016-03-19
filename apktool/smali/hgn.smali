.class public abstract Lhgn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final l:Lhee;

.field public final m:Lhfn;

.field public final n:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lhlc;",
            ">;"
        }
    .end annotation
.end field

.field public volatile o:Z

.field public p:Lhla;


# direct methods
.method constructor <init>(Lhee;Lhfn;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lhlc;

    invoke-direct {v1}, Lhlc;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhgn;->n:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhgn;->o:Z

    .line 23
    iput-object p1, p0, Lhgn;->l:Lhee;

    .line 24
    iput-object p2, p0, Lhgn;->m:Lhfn;

    .line 25
    return-void
.end method


# virtual methods
.method a(Lhla;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lhgn;->p:Lhla;

    .line 33
    return-void
.end method

.method a(Lhla;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lhgn;->p:Lhla;

    invoke-virtual {p1, v0}, Lhla;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lhgn;->p:Lhla;

    .line 49
    :cond_0
    if-eqz p2, :cond_1

    .line 50
    invoke-static {p2}, Laal;->a(Ljava/lang/Runnable;)V

    .line 52
    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lhgn;->o:Z

    if-eq v0, p1, :cond_0

    .line 87
    iput-boolean p1, p0, Lhgn;->o:Z

    .line 88
    iget-object v0, p0, Lhgn;->m:Lhfn;

    invoke-virtual {v0}, Lhfn;->e()V

    .line 90
    :cond_0
    return-void
.end method

.method abstract b()Z
.end method

.method abstract c()Ljava/lang/String;
.end method

.method abstract d()I
.end method

.method e()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public n()Lhlc;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lhgn;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlc;

    return-object v0
.end method

.method o()Lhla;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lhgn;->p:Lhla;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    invoke-virtual {p0}, Lhgn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lhgn;->n()Lhlc;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
