.class public final Ldxd;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 14
    iput-object p2, p0, Ldxd;->a:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ldoe;

    iget-object v1, p0, Ldxd;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ldoe;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0}, Ldxd;->a(Leff;)V

    .line 21
    return-void
.end method
