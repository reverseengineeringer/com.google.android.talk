.class public final Ldwq;
.super Ldyx;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbfd;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 12
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ldmw;

    invoke-direct {v0}, Ldmw;-><init>()V

    .line 17
    invoke-virtual {p0, v0}, Ldwq;->a(Leff;)V

    .line 18
    return-void
.end method
