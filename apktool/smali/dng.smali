.class public final Ldng;
.super Ldom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldom",
        "<",
        "Liyp;",
        "Liyq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:I


# direct methods
.method public constructor <init>(Lbfd;Ldyj;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 34
    invoke-static {}, Lihw;->newBuilder()Lihx;

    move-result-object v0

    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->a(Ljava/lang/String;)Lihx;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lbfd;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->b(Ljava/lang/String;)Lihx;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v7}, Lihx;->a(Z)Lihx;

    move-result-object v0

    invoke-virtual {v0}, Lihx;->a()Lihw;

    move-result-object v1

    const-string v3, "lookupmergedperson"

    sget-object v4, Lefh;->d:Lefh;

    new-instance v5, Liyp;

    invoke-direct {v5}, Liyp;-><init>()V

    new-instance v6, Liyq;

    invoke-direct {v6}, Liyq;-><init>()V

    move-object v0, p0

    move-object v2, p2

    .line 34
    invoke-direct/range {v0 .. v6}, Ldom;-><init>(Lihw;Leff;Ljava/lang/String;Lefh;Llyi;Llyi;)V

    .line 29
    iput-boolean v7, p0, Ldng;->a:Z

    .line 42
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Ldng;->b:I

    .line 43
    return-void
.end method

.method public static a(IILjava/lang/Integer;Ljava/util/Collection;)Ldng;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ldng;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-static {}, Laal;->x()V

    .line 117
    invoke-static {p0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 118
    new-instance v1, Ldyj;

    invoke-direct {v1, p1, v3, p2, p3}, Ldyj;-><init>(IILjava/lang/Integer;Ljava/util/Collection;)V

    .line 120
    new-instance v2, Ldng;

    invoke-direct {v2, v0, v1}, Ldng;-><init>(Lbfd;Ldyj;)V

    .line 121
    iput-boolean v3, v2, Ldng;->a:Z

    .line 122
    invoke-virtual {v2}, Ldng;->g()V

    .line 123
    return-object v2
.end method


# virtual methods
.method protected synthetic a(Llyi;)Ldqf;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Liyq;

    .line 1076
    invoke-static {p1}, Ldyk;->a(Liyq;)Ldqf;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Ldng;->e()Ldqf;

    move-result-object v0

    .line 65
    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-boolean v1, p0, Ldng;->a:Z

    if-eqz v1, :cond_0

    .line 70
    iget v1, p0, Ldng;->b:I

    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILdqf;)V

    goto :goto_0
.end method

.method protected synthetic b(Llyi;)V
    .locals 3

    .prologue
    .line 25
    check-cast p1, Liyp;

    .line 2115
    iget-object v0, p0, Ldom;->e:Leff;

    .line 2047
    check-cast v0, Ldyj;

    .line 2049
    new-instance v1, Ljdc;

    invoke-direct {v1}, Ljdc;-><init>()V

    iput-object v1, p1, Liyp;->a:Ljdc;

    .line 2050
    iget-object v1, p1, Liyp;->a:Ljdc;

    new-instance v2, Live;

    invoke-direct {v2}, Live;-><init>()V

    iput-object v2, v1, Ljdc;->a:Live;

    .line 2052
    iget-object v1, p1, Liyp;->a:Ljdc;

    iget-object v1, v1, Ljdc;->a:Live;

    invoke-virtual {v0}, Ldyj;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Live;->b:Ljava/lang/Integer;

    .line 2053
    iget-object v1, p1, Liyp;->a:Ljdc;

    iget-object v1, v1, Ljdc;->a:Live;

    invoke-virtual {v0}, Ldyj;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Live;->c:Ljava/lang/Integer;

    .line 2054
    iget-object v1, p1, Liyp;->a:Ljdc;

    iget-object v1, v1, Ljdc;->a:Live;

    invoke-virtual {v0}, Ldyj;->e()[I

    move-result-object v2

    iput-object v2, v1, Live;->g:[I

    .line 2055
    invoke-virtual {v0}, Ldyj;->f()Ljava/util/List;

    move-result-object v1

    .line 2056
    iget-object v0, p1, Liyp;->a:Ljdc;

    iget-object v2, v0, Ljdc;->a:Live;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Live;->a:Ljava/lang/String;

    .line 2057
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2058
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2059
    iget-object v1, p1, Liyp;->a:Ljdc;

    iget-object v1, v1, Ljdc;->a:Live;

    iput-object v0, v1, Live;->e:[Ljava/lang/String;

    .line 25
    return-void
.end method
