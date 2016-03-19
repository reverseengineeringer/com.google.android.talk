.class public final Lhib;
.super Lhie;
.source "SourceFile"

# interfaces
.implements Lhbj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhie",
        "<",
        "Lkja;",
        "Lkjg;",
        "Lkjh;",
        "Lkji;",
        "Lkjj;",
        "Lkjk;",
        "Lkjl;",
        ">;",
        "Lhbj;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lhhr;Lhbl;)V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lhib;->a:Lhbq;

    new-instance v1, Lhid;

    invoke-direct {v1, p2}, Lhid;-><init>(Lhbl;)V

    new-instance v2, Lhic;

    .line 1071
    invoke-direct {v2}, Lhic;-><init>()V

    .line 34
    invoke-direct {p0, p1, v0, v1, v2}, Lhie;-><init>(Lhhr;Lhbq;Lhhn;Lhhm;)V

    .line 36
    return-void
.end method
