.class public Ldol;
.super Ldom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldom",
        "<",
        "Lkdw;",
        "Lkdx;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method protected constructor <init>(Lbfd;ILdpo;Lefh;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 43
    invoke-static {}, Lihw;->newBuilder()Lihx;

    move-result-object v0

    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->a(Ljava/lang/String;)Lihx;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lbfd;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->b(Ljava/lang/String;)Lihx;

    move-result-object v0

    new-instance v1, Lihp;

    invoke-direct {v1}, Lihp;-><init>()V

    invoke-virtual {v0, v1}, Lihx;->a(Lihp;)Lihx;

    move-result-object v0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Lihx;->a(Z)Lihx;

    move-result-object v0

    invoke-virtual {v0}, Lihx;->a()Lihw;

    move-result-object v1

    .line 47
    invoke-virtual {p3}, Ldpo;->f()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    .line 49
    invoke-virtual {p3, p5, p2, v0}, Ldpo;->a(Ljava/lang/String;II)Llyi;

    move-result-object v5

    check-cast v5, Lkdw;

    new-instance v6, Lkdx;

    invoke-direct {v6}, Lkdx;-><init>()V

    move-object v0, p0

    move-object v2, p3

    move-object v4, p4

    .line 43
    invoke-direct/range {v0 .. v6}, Ldom;-><init>(Lihw;Leff;Ljava/lang/String;Lefh;Llyi;Llyi;)V

    .line 52
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Ldol;->a:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lbfd;ILdpo;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 29
    invoke-static {}, Lihw;->newBuilder()Lihx;

    move-result-object v0

    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->a(Ljava/lang/String;)Lihx;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lbfd;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->b(Ljava/lang/String;)Lihx;

    move-result-object v0

    new-instance v1, Lihp;

    invoke-direct {v1}, Lihp;-><init>()V

    invoke-virtual {v0, v1}, Lihx;->a(Lihp;)Lihx;

    move-result-object v0

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lihx;->a(Z)Lihx;

    move-result-object v0

    invoke-virtual {v0}, Lihx;->a()Lihw;

    move-result-object v1

    .line 33
    invoke-virtual {p3}, Ldpo;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lefh;->a:Lefh;

    .line 36
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    .line 35
    invoke-virtual {p3, p4, p2, v0}, Ldpo;->a(Ljava/lang/String;II)Llyi;

    move-result-object v5

    check-cast v5, Lkdw;

    new-instance v6, Lkdx;

    invoke-direct {v6}, Lkdx;-><init>()V

    move-object v0, p0

    move-object v2, p3

    .line 29
    invoke-direct/range {v0 .. v6}, Ldom;-><init>(Lihw;Leff;Ljava/lang/String;Lefh;Llyi;Llyi;)V

    .line 38
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Ldol;->a:I

    .line 39
    return-void
.end method

.method private a(Ldpo;JI)V
    .locals 2

    .prologue
    .line 2219
    new-instance v0, Lcsn;

    .line 3040
    invoke-direct {v0}, Lcsn;-><init>()V

    .line 88
    iget-object v1, p1, Ldpo;->c:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v0

    iget-object v1, p1, Ldpo;->j:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v0

    .line 3361
    iget-object v1, p0, Lihi;->q:Liht;

    .line 91
    invoke-virtual {v1}, Liht;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsn;->d(Ljava/lang/String;)Lcsn;

    move-result-object v0

    .line 92
    iget v1, p0, Ldol;->a:I

    invoke-static {v1, p2, p3, p4, v0}, Laen;->a(IJILcsn;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected a(Lkdx;)Ldqf;
    .locals 1

    .prologue
    .line 64
    invoke-static {p1}, Ldsj;->parseFrom(Lkdx;)Ldqf;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Llyi;)Ldqf;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lkdx;

    invoke-virtual {p0, p1}, Ldol;->a(Lkdx;)Ldqf;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Ldom;->a()V

    .line 1115
    iget-object v0, p0, Ldom;->e:Leff;

    .line 58
    check-cast v0, Ldpo;

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, 0x2

    .line 58
    invoke-direct {p0, v0, v2, v3, v1}, Ldol;->a(Ldpo;JI)V

    .line 60
    return-void
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 5

    .prologue
    .line 69
    invoke-virtual {p0}, Ldol;->e()Ldqf;

    move-result-object v1

    .line 70
    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    iget-object v0, p0, Ldom;->e:Leff;

    .line 73
    check-cast v0, Ldpo;

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0xc

    invoke-direct {p0, v0, v2, v3, v4}, Ldol;->a(Ldpo;JI)V

    .line 77
    iget v2, p0, Ldol;->a:I

    invoke-static {v2, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILdqf;)V

    .line 79
    invoke-virtual {v0}, Ldpo;->e()Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    const-string v1, "Sending stress message succeeded:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
