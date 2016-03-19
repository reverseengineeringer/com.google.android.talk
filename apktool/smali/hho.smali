.class public final Lhho;
.super Lhie;
.source "SourceFile"

# interfaces
.implements Lhbb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhie",
        "<",
        "Lkgd;",
        "Lkgn;",
        "Lkgo;",
        "Lkgp;",
        "Lkgq;",
        "Lkgt;",
        "Lkgu;",
        ">;",
        "Lhbb;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lhhr;Lhbl;)V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lhho;->a:Lhbq;

    new-instance v1, Lhhq;

    invoke-direct {v1, p2}, Lhhq;-><init>(Lhbl;)V

    new-instance v2, Lhhp;

    .line 1071
    invoke-direct {v2}, Lhhp;-><init>()V

    .line 34
    invoke-direct {p0, p1, v0, v1, v2}, Lhie;-><init>(Lhhr;Lhbq;Lhhn;Lhhm;)V

    .line 36
    return-void
.end method
