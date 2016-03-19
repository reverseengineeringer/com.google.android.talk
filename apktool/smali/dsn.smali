.class public Ldsn;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final g:Z


# direct methods
.method private constructor <init>(Lkeb;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1727
    iget-object v0, p1, Lkeb;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 1728
    iget-object v0, p1, Lkeb;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p1, Lkeb;->a:Ljava/lang/Integer;

    .line 2043
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1730
    if-ne v0, v4, :cond_0

    .line 1731
    iput-boolean v4, p0, Ldsn;->g:Z

    .line 1736
    :goto_0
    return-void

    .line 1735
    :cond_0
    iput-boolean v1, p0, Ldsn;->g:Z

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 1740
    new-instance v0, Lkeb;

    invoke-direct {v0}, Lkeb;-><init>()V

    .line 2131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1741
    check-cast v0, Lkeb;

    .line 1742
    iget-object v1, v0, Lkeb;->responseHeader:Lkdp;

    invoke-static {v1}, Ldsn;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1743
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkeb;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 1745
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldsn;

    invoke-direct {v1, v0}, Ldsn;-><init>(Lkeb;)V

    move-object v0, v1

    goto :goto_0
.end method
