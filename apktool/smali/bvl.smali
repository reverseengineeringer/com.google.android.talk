.class public final Lbvl;
.super Ldom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldom",
        "<",
        "Lkcg;",
        "Lkch;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Lbfd;ILbvm;)V
    .locals 7

    .prologue
    .line 28
    invoke-static {}, Lihw;->newBuilder()Lihx;

    move-result-object v0

    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->a(Ljava/lang/String;)Lihx;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lbfd;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->b(Ljava/lang/String;)Lihx;

    move-result-object v0

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lihx;->a(Z)Lihx;

    move-result-object v0

    invoke-virtual {v0}, Lihx;->a()Lihw;

    move-result-object v1

    const-string v3, "conversations/modifyotrstatus"

    sget-object v4, Lefh;->a:Lefh;

    new-instance v5, Lkcg;

    invoke-direct {v5}, Lkcg;-><init>()V

    new-instance v6, Lkch;

    invoke-direct {v6}, Lkch;-><init>()V

    move-object v0, p0

    move-object v2, p3

    .line 28
    invoke-direct/range {v0 .. v6}, Ldom;-><init>(Lihw;Leff;Ljava/lang/String;Lefh;Llyi;Llyi;)V

    .line 36
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Lbvl;->a:I

    .line 37
    iput p2, p0, Lbvl;->b:I

    .line 38
    return-void
.end method


# virtual methods
.method protected synthetic a(Llyi;)Ldqf;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lkch;

    .line 1063
    invoke-static {p1}, Lbvn;->a(Lkch;)Ldqf;

    move-result-object v0

    .line 20
    return-object v0
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lbvl;->e()Ldqf;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 71
    iget v1, p0, Lbvl;->a:I

    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILdqf;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected synthetic b(Llyi;)V
    .locals 3

    .prologue
    .line 20
    check-cast p1, Lkcg;

    .line 2115
    iget-object v0, p0, Ldom;->e:Leff;

    .line 2042
    check-cast v0, Lbvm;

    .line 2043
    new-instance v1, Ljzr;

    invoke-direct {v1}, Ljzr;-><init>()V

    .line 2046
    invoke-virtual {v0}, Lbvm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbfz;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Ljzr;->b:Ljava/lang/Long;

    .line 2048
    invoke-virtual {v0}, Lbvm;->b()Ljava/lang/String;

    move-result-object v2

    .line 2047
    invoke-static {v2}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v2

    iput-object v2, v1, Ljzr;->a:Ljxw;

    .line 2049
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Ljzr;->e:Ljava/lang/Integer;

    .line 2050
    iput-object v1, p1, Lkcg;->a:Ljzr;

    .line 2052
    new-instance v1, Ldmn;

    invoke-direct {v1}, Ldmn;-><init>()V

    iget v2, p0, Lbvl;->a:I

    .line 2053
    invoke-virtual {v1, v2}, Ldmn;->a(I)Ldmn;

    move-result-object v1

    iget v2, p0, Lbvl;->b:I

    .line 2054
    invoke-virtual {v1, v2}, Ldmn;->b(I)Ldmn;

    move-result-object v1

    .line 2055
    invoke-virtual {v1}, Ldmn;->b()Ldmm;

    move-result-object v1

    .line 2056
    invoke-virtual {p0, v1}, Lbvl;->a(Ldmm;)Lkdo;

    move-result-object v1

    iput-object v1, p1, Lkcg;->requestHeader:Lkdo;

    .line 2058
    invoke-virtual {v0}, Lbvm;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lkcg;->b:Ljava/lang/Integer;

    .line 20
    return-void
.end method
