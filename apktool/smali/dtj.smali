.class public final Ldtj;
.super Ldom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldom",
        "<",
        "Lkfv;",
        "Lkfw;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final v:J


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 24
    invoke-static {}, Lihw;->newBuilder()Lihx;

    move-result-object v0

    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->a(Ljava/lang/String;)Lihx;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lbfd;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->b(Ljava/lang/String;)Lihx;

    move-result-object v0

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lihx;->a(Z)Lihx;

    move-result-object v0

    invoke-virtual {v0}, Lihx;->a()Lihw;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "conversations/updatewatermark"

    sget-object v4, Lefh;->a:Lefh;

    new-instance v5, Lkfv;

    invoke-direct {v5}, Lkfv;-><init>()V

    new-instance v6, Lkfw;

    invoke-direct {v6}, Lkfw;-><init>()V

    move-object v0, p0

    .line 24
    invoke-direct/range {v0 .. v6}, Ldom;-><init>(Lihw;Leff;Ljava/lang/String;Lefh;Llyi;Llyi;)V

    .line 32
    iput-object p2, p0, Ldtj;->b:Ljava/lang/String;

    .line 33
    iput-wide p3, p0, Ldtj;->v:J

    .line 34
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Ldtj;->a:I

    .line 35
    return-void
.end method


# virtual methods
.method protected synthetic a(Llyi;)Ldqf;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lkfw;

    .line 1062
    invoke-static {p1}, Ldtb;->parseFrom(Lkfw;)Ldqf;

    move-result-object v0

    .line 14
    return-object v0
.end method

.method protected synthetic b(Llyi;)V
    .locals 2

    .prologue
    .line 14
    check-cast p1, Lkfv;

    .line 2039
    iget-object v0, p0, Ldtj;->b:Ljava/lang/String;

    invoke-static {v0}, Ldtj;->a(Ljava/lang/String;)V

    .line 2040
    new-instance v0, Ldmn;

    invoke-direct {v0}, Ldmn;-><init>()V

    iget v1, p0, Ldtj;->a:I

    .line 2041
    invoke-virtual {v0, v1}, Ldmn;->a(I)Ldmn;

    move-result-object v0

    .line 2042
    invoke-virtual {v0}, Ldmn;->b()Ldmm;

    move-result-object v0

    .line 2043
    invoke-virtual {p0, v0}, Ldtj;->a(Ldmm;)Lkdo;

    move-result-object v0

    iput-object v0, p1, Lkfv;->requestHeader:Lkdo;

    .line 2045
    iget-object v0, p0, Ldtj;->b:Ljava/lang/String;

    invoke-static {v0}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v0

    iput-object v0, p1, Lkfv;->a:Ljxw;

    .line 2046
    iget-wide v0, p0, Ldtj;->v:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lkfv;->b:Ljava/lang/Long;

    .line 2051
    iget v0, p0, Ldtj;->a:I

    .line 2319
    sget-object v1, Ldvp;->v:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v0

    .line 2051
    if-eqz v0, :cond_0

    .line 2052
    const/4 v0, 0x2

    .line 2053
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lkfv;->c:Ljava/lang/Integer;

    :goto_0
    return-void

    .line 2055
    :cond_0
    const/4 v0, 0x1

    .line 2056
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lkfv;->c:Ljava/lang/Integer;

    goto :goto_0
.end method
