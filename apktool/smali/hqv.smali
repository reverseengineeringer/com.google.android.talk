.class final Lhqv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqh;


# instance fields
.field final synthetic a:Lhqq;


# direct methods
.method constructor <init>(Lhqq;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lhqv;->a:Lhqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1030
    const-string v0, "add_effective_gaia_id"

    return-object v0
.end method

.method public a(Landroid/content/Context;Lhqe;)V
    .locals 2

    .prologue
    .line 1035
    const-string v0, "is_managed_account"

    invoke-interface {p2, v0}, Lhqe;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    const-string v0, "effective_gaia_id"

    const-string v1, "gaia_id"

    invoke-interface {p2, v1}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lhqe;->c(Ljava/lang/String;Ljava/lang/String;)Lhqe;

    .line 1038
    :cond_0
    return-void
.end method
