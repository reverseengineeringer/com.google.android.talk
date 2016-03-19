.class public final Lfit;
.super Ljava/lang/Object;

# interfaces
.implements Lfjs;


# instance fields
.field private final a:Lfjj;


# direct methods
.method public constructor <init>(Lfjj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfit;->a:Lfjj;

    return-void
.end method

.method private a(Lfjr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lfia;",
            ">(",
            "Lfjr",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lfit;->a:Lfjj;

    invoke-virtual {v0, p1}, Lfjj;->a(Lfjr;)V

    iget-object v0, p0, Lfit;->a:Lfjj;

    invoke-interface {p1}, Lfjr;->f()Lfib;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfjj;->a(Lfib;)Lfia;

    move-result-object v0

    invoke-interface {v0}, Lfia;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfit;->a:Lfjj;

    iget-object v1, v1, Lfjj;->f:Ljava/util/Map;

    invoke-interface {p1}, Lfjr;->f()Lfib;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lfjr;->c(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0}, Lfjr;->b(Lfia;)V

    goto :goto_0
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

    invoke-virtual {p0, p1}, Lfit;->b(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lfit;->a:Lfjj;

    iget-object v0, v0, Lfjj;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lfit;->a:Lfjj;

    iget-object v0, v0, Lfjj;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfjr;

    invoke-direct {p0, v0}, Lfit;->a(Lfjr;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lfit;->a:Lfjj;

    invoke-virtual {v0}, Lfjj;->l()V

    :cond_0
    iget-object v0, p0, Lfit;->a:Lfjj;

    iget-object v0, v0, Lfjj;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfjr;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    const-string v4, "The connection to Google Play services was lost"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lfjr;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfit;->a:Lfjj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfjj;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lfit;->a:Lfjj;

    iget-object v0, v0, Lfjj;->b:Lflm;

    invoke-virtual {v0, p1}, Lflm;->a(I)V

    iget-object v0, p0, Lfit;->a:Lfjj;

    iget-object v0, v0, Lfjj;->b:Lflm;

    invoke-virtual {v0}, Lflm;->a()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lfit;->a:Lfjj;

    invoke-virtual {v0}, Lfjj;->b()V

    :cond_2
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

    :try_start_0
    invoke-direct {p0, p1}, Lfit;->a(Lfjr;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lfit;->a:Lfjj;

    new-instance v1, Lfiu;

    invoke-direct {v1, p0, p0}, Lfiu;-><init>(Lfit;Lfjs;)V

    invoke-virtual {v0, v1}, Lfjj;->a(Lfjo;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lfit;->a:Lfjj;

    iget-object v0, v0, Lfjj;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lfit;->a:Lfjj;

    invoke-virtual {v0}, Lfjj;->g()V

    iget-object v0, p0, Lfit;->a:Lfjj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfjj;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lfit;->a:Lfjj;

    iget-object v0, v0, Lfjj;->b:Lflm;

    invoke-virtual {v0}, Lflm;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "CONNECTED"

    return-object v0
.end method
