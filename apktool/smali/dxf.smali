.class public final Ldxf;
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
    new-instance v0, Ldmz;

    invoke-direct {v0}, Ldmz;-><init>()V

    .line 17
    invoke-virtual {p0, v0}, Ldxf;->a(Leff;)V

    .line 18
    return-void
.end method
