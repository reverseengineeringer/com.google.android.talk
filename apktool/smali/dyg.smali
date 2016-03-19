.class public final Ldyg;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final e:[B


# direct methods
.method public constructor <init>(Lbfd;[B[B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 13
    iput-object p2, p0, Ldyg;->a:[B

    .line 14
    iput-object p3, p0, Ldyg;->e:[B

    .line 15
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ldoh;

    iget-object v1, p0, Ldyg;->a:[B

    iget-object v2, p0, Ldyg;->e:[B

    invoke-direct {v0, v1, v2}, Ldoh;-><init>([B[B)V

    invoke-virtual {p0, v0}, Ldyg;->a(Leff;)V

    .line 20
    return-void
.end method
