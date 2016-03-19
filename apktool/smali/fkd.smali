.class final Lfkd;
.super Lfe;

# interfaces
.implements Lfif;
.implements Lfih;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfe",
        "<",
        "Lcom/google/android/gms/common/ConnectionResult;",
        ">;",
        "Lfif;",
        "Lfih;"
    }
.end annotation


# instance fields
.field public final a:Lfic;

.field private b:Z

.field private c:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfic;)V
    .locals 0

    invoke-direct {p0, p1}, Lfe;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lfkd;->a:Lfic;

    return-void
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iput-object p1, p0, Lfkd;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lfkd;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfkd;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lfkd;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfkd;->b:Z

    invoke-direct {p0, p1}, Lfkd;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lfe;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lfkd;->a:Lfic;

    invoke-interface {v0, p1, p3}, Lfic;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public a_(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfkd;->b:Z

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lfkd;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lfkd;->b:Z

    return v0
.end method

.method protected i()V
    .locals 1

    invoke-super {p0}, Lfe;->i()V

    iget-object v0, p0, Lfkd;->a:Lfic;

    invoke-interface {v0, p0}, Lfic;->a(Lfif;)V

    iget-object v0, p0, Lfkd;->a:Lfic;

    invoke-interface {v0, p0}, Lfic;->a(Lfih;)V

    iget-object v0, p0, Lfkd;->c:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkd;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lfkd;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lfkd;->a:Lfic;

    invoke-interface {v0}, Lfic;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfkd;->a:Lfic;

    invoke-interface {v0}, Lfic;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lfkd;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lfkd;->a:Lfic;

    invoke-interface {v0}, Lfic;->b()V

    :cond_1
    return-void
.end method

.method protected j()V
    .locals 1

    iget-object v0, p0, Lfkd;->a:Lfic;

    invoke-interface {v0}, Lfic;->d()V

    return-void
.end method

.method protected k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lfkd;->c:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfkd;->b:Z

    iget-object v0, p0, Lfkd;->a:Lfic;

    invoke-interface {v0, p0}, Lfic;->b(Lfif;)V

    iget-object v0, p0, Lfkd;->a:Lfic;

    invoke-interface {v0, p0}, Lfic;->b(Lfih;)V

    iget-object v0, p0, Lfkd;->a:Lfic;

    invoke-interface {v0}, Lfic;->d()V

    return-void
.end method
