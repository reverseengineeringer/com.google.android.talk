.class public final Lhhs;
.super Lhie;
.source "SourceFile"

# interfaces
.implements Lhbd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhie",
        "<",
        "Lkgy;",
        "Lkgz;",
        "Lkha;",
        "Llyi;",
        "Llyi;",
        "Lkhb;",
        "Lkhc;",
        ">;",
        "Lhbd;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lhhr;Lhbl;)V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lhhs;->a:Lhbq;

    new-instance v1, Lhhu;

    invoke-direct {v1, p2}, Lhhu;-><init>(Lhbl;)V

    new-instance v2, Lhht;

    .line 1071
    invoke-direct {v2}, Lhht;-><init>()V

    .line 34
    invoke-direct {p0, p1, v0, v1, v2}, Lhie;-><init>(Lhhr;Lhbq;Lhhn;Lhhm;)V

    .line 37
    return-void
.end method
