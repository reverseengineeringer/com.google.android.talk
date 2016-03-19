.class public final Leco;
.super Ldyx;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbfd;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 13
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ldnr;

    invoke-direct {v0}, Ldnr;-><init>()V

    invoke-virtual {p0, v0}, Leco;->a(Leff;)V

    .line 18
    return-void
.end method
