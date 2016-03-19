.class public final Lfji;
.super Ljava/lang/Object;

# interfaces
.implements Lfjs;


# instance fields
.field private final a:Lfjj;


# direct methods
.method public constructor <init>(Lfjj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfji;->a:Lfjj;

    return-void
.end method


# virtual methods
.method public a(Lfir;)Lfir;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lfia;",
            "R::",
            "Lfim;",
            "T:",
            "Lfir",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lfji;->a:Lfjj;

    iget-object v0, v0, Lfjj;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lfji;->a:Lfjj;

    invoke-virtual {v0}, Lfjj;->h()V

    iget-object v0, p0, Lfji;->a:Lfjj;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lfjj;->g:Ljava/util/Set;

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lfhw;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lfhw",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lfir;)Lfir;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lfia;",
            "T:",
            "Lfir",
            "<+",
            "Lfim;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lfji;->a:Lfjj;

    iget-object v0, v0, Lfjj;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfjr;

    invoke-interface {v0}, Lfjr;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfji;->a:Lfjj;

    iget-object v0, v0, Lfjj;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lfji;->a:Lfjj;

    iget-object v0, v0, Lfjj;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lfji;->a:Lfjj;

    invoke-virtual {v0}, Lfjj;->g()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lfji;->a:Lfjj;

    invoke-virtual {v0}, Lfjj;->i()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DISCONNECTED"

    return-object v0
.end method
