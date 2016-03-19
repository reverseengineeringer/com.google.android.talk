.class public final Lbbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldxj;
.implements Lhqf;


# instance fields
.field final a:Lawm;

.field final b:Lhpz;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lawm;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawm;

    iput-object v0, p0, Lbbq;->a:Lawm;

    .line 30
    const-class v0, Lhpz;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lbbq;->b:Lhpz;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lhqe;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public a(Lhqe;Ldrl;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    const-string v0, "effective_gaia_id"

    invoke-interface {p1, v0}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p2}, Ldrl;->n()Lbfe;

    move-result-object v0

    iget-boolean v0, v0, Lbfe;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "logged_out"

    .line 106
    invoke-interface {p1, v0, v2}, Lhqe;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "logged_in"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    move-result-object v0

    const-string v1, "logged_out"

    .line 108
    invoke-interface {v0, v1, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 109
    iget-object v0, p0, Lbbq;->a:Lawm;

    invoke-interface {v0, p1}, Lawm;->a(Lhqb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lbbq;->b:Lhpz;

    const-string v1, "account_name"

    .line 115
    invoke-interface {p1, v1}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "effective_gaia_id"

    invoke-interface {p1, v2}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-interface {v0, v1, v2}, Lhpz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 116
    new-instance v1, Lbbt;

    invoke-direct {v1, p0, v0}, Lbbt;-><init>(Lbbq;I)V

    invoke-static {v1}, Laal;->a(Ljava/lang/Runnable;)V

    .line 125
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhqh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lbbr;

    invoke-direct {v0, p0}, Lbbr;-><init>(Lbbq;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Lbbs;

    invoke-direct {v0, p0}, Lbbs;-><init>(Lbbq;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method
