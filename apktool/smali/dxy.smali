.class public final Ldxy;
.super Ldyx;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbfd;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 16
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ldno;

    invoke-direct {v0}, Ldno;-><init>()V

    invoke-virtual {p0, v0}, Ldxy;->a(Leff;)V

    .line 21
    return-void
.end method
