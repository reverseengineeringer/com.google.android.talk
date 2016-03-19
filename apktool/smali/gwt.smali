.class public Lgwt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lfgt;


# direct methods
.method public constructor <init>(Lfgr;[B)V
    .locals 1

    .prologue
    .line 2022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2023
    invoke-virtual {p1, p2}, Lfgr;->a([B)Lfgt;

    move-result-object v0

    iput-object v0, p0, Lgwt;->a:Lfgt;

    .line 2024
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lgwt;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lgwt;->a:Lfgt;

    invoke-virtual {v0, p1}, Lfgt;->a(Ljava/lang/String;)Lfgt;

    .line 1034
    return-object p0
.end method

.method public a(Lgxk;)Lgxp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgxk;",
            ")",
            "Lgxp",
            "<",
            "Lavb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1057
    iget-object v0, p0, Lgwt;->a:Lfgt;

    check-cast p1, Lgyg;

    .line 1058
    invoke-virtual {p1}, Lgyg;->d()Lfic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfgt;->a(Lfic;)Lfij;

    move-result-object v0

    .line 1059
    new-instance v1, Lgxp;

    sget-object v2, Lgwx;->a:Lgyh;

    invoke-direct {v1, v0, v2}, Lgxp;-><init>(Lfij;Lgyh;)V

    return-object v1
.end method
