.class public final Lhhv;
.super Lhie;
.source "SourceFile"

# interfaces
.implements Lhbf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhie",
        "<",
        "Lkhf;",
        "Lkhg;",
        "Lkhh;",
        "Lkhi;",
        "Lkhj;",
        "Lkhx;",
        "Lkhy;",
        ">;",
        "Lhbf;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lhhr;Lhbl;)V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lhhv;->a:Lhbq;

    new-instance v1, Lhhx;

    invoke-direct {v1, p2}, Lhhx;-><init>(Lhbl;)V

    new-instance v2, Lhhw;

    .line 1077
    invoke-direct {v2}, Lhhw;-><init>()V

    .line 34
    invoke-direct {p0, p1, v0, v1, v2}, Lhie;-><init>(Lhhr;Lhbq;Lhhn;Lhhm;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lkhf;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lhhv;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhhv;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkhf;

    goto :goto_0
.end method
