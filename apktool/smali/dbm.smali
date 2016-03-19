.class final Ldbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxs;


# instance fields
.field final synthetic a:Ldbh;


# direct methods
.method constructor <init>(Ldbh;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Ldbm;->a:Ldbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Ldbm;->a:Ldbh;

    .line 1100
    iget-boolean v0, v0, Ldbh;->e:Z

    .line 775
    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Ldbm;->a:Ldbh;

    .line 2100
    iget-object v0, v0, Ldbh;->g:Laxq;

    .line 776
    const-string v1, ""

    invoke-virtual {v0, v1}, Laxq;->a(Ljava/lang/String;)V

    .line 778
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Ldbm;->a:Ldbh;

    .line 3100
    const/4 v1, 0x0

    iput-object v1, v0, Ldbh;->aq:Landroid/os/Parcelable;

    .line 784
    iget-object v0, p0, Ldbm;->a:Ldbh;

    .line 4100
    iget-object v0, v0, Ldbh;->d:Ldas;

    .line 784
    invoke-virtual {v0, p1}, Ldas;->a(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Ldbm;->a:Ldbh;

    .line 5100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldbh;->a(Z)V

    .line 786
    iget-object v0, p0, Ldbm;->a:Ldbh;

    .line 6100
    iget-object v0, v0, Ldbh;->an:Ldbn;

    .line 786
    invoke-virtual {v0, p1}, Ldbn;->a(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Ldbm;->a:Ldbh;

    .line 7100
    iget-object v0, v0, Ldbh;->d:Ldas;

    .line 788
    invoke-virtual {v0}, Ldas;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Ldbm;->a:Ldbh;

    .line 8100
    iget-object v0, v0, Ldbh;->ao:Ldbp;

    .line 789
    invoke-virtual {v0, p1}, Ldbp;->a(Ljava/lang/String;)V

    .line 791
    :cond_0
    return-void
.end method
