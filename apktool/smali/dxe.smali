.class public final Ldxe;
.super Ldyx;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 14
    iput-object p2, p0, Ldxe;->a:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ldpd;

    .line 1127
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget-object v1, v1, Ldvb;->b:Lbfd;

    .line 20
    iget-object v2, p0, Ldxe;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ldpd;-><init>(Lbfd;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Ldxe;->a(Leff;)V

    .line 22
    return-void
.end method
