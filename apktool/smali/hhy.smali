.class public final Lhhy;
.super Lhie;
.source "SourceFile"

# interfaces
.implements Lhbh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhie",
        "<",
        "Lkhk;",
        "Lkhn;",
        "Lkho;",
        "Lkhp;",
        "Lkhq;",
        "Lkhr;",
        "Lkhs;",
        ">;",
        "Lhbh;"
    }
.end annotation


# instance fields
.field private volatile f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhhr;Lhbl;)V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lhhy;->a:Lhbq;

    new-instance v1, Lhia;

    invoke-direct {v1, p2}, Lhia;-><init>(Lhbl;)V

    new-instance v2, Lhhz;

    .line 1091
    invoke-direct {v2}, Lhhz;-><init>()V

    .line 39
    invoke-direct {p0, p1, v0, v1, v2}, Lhie;-><init>(Lhhr;Lhbq;Lhhn;Lhhm;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a()Lkhk;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lhhy;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lhhy;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lhhy;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkhk;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lhhy;->f:Ljava/lang/String;

    .line 49
    return-void
.end method
