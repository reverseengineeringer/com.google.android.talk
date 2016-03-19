.class public final Lect;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final e:Z


# direct methods
.method public constructor <init>(Lbfd;IZ)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 23
    iput p2, p0, Lect;->a:I

    .line 24
    iput-boolean p3, p0, Lect;->e:Z

    .line 25
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ldps;

    iget v1, p0, Lect;->a:I

    iget-boolean v2, p0, Lect;->e:Z

    invoke-direct {v0, v1, v2}, Ldps;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lect;->a(Leff;)V

    .line 33
    return-void
.end method
