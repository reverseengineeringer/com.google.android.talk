.class public final Ldxa;
.super Ldyx;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbfd;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 18
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ldpb;

    invoke-direct {v0}, Ldpb;-><init>()V

    .line 27
    invoke-virtual {p0, v0}, Ldxa;->a(Leff;)V

    .line 28
    return-void
.end method
