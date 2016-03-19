.class public final Lduw;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>(Lbfd;[B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 11
    iput-object p2, p0, Lduw;->a:[B

    .line 12
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ldoa;

    iget-object v1, p0, Lduw;->a:[B

    invoke-direct {v0, v1}, Ldoa;-><init>([B)V

    invoke-virtual {p0, v0}, Lduw;->a(Leff;)V

    .line 17
    return-void
.end method
