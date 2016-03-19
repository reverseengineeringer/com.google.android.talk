.class public final Lduv;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>(Lbfd;[B)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 15
    iput-object p2, p0, Lduv;->a:[B

    .line 16
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ldog;

    iget-object v1, p0, Lduv;->a:[B

    invoke-direct {v0, v1}, Ldog;-><init>([B)V

    invoke-virtual {p0, v0}, Lduv;->a(Leff;)V

    .line 21
    return-void
.end method
