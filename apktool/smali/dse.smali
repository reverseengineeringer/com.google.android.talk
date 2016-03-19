.class public Ldse;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Lkiz;)V
    .locals 3

    .prologue
    .line 3897
    invoke-direct {p0}, Ldqf;-><init>()V

    .line 4232
    sget-boolean v0, Ldqf;->a:Z

    .line 3898
    if-eqz v0, :cond_0

    .line 3899
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ReportCallPerfStatsResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3902
    :cond_0
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 3906
    new-instance v0, Lkiz;

    invoke-direct {v0}, Lkiz;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 3907
    check-cast v0, Lkiz;

    .line 3909
    iget-object v1, v0, Lkiz;->responseHeader:Lkdp;

    invoke-static {v1}, Ldse;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3910
    const/16 v1, 0x7e1

    invoke-static {v1}, Laal;->c(I)V

    .line 3911
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkiz;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 3914
    :goto_0
    return-object v0

    .line 3913
    :cond_0
    const/16 v1, 0x7e0

    invoke-static {v1}, Laal;->c(I)V

    .line 3914
    new-instance v1, Ldse;

    invoke-direct {v1, v0}, Ldse;-><init>(Lkiz;)V

    move-object v0, v1

    goto :goto_0
.end method
