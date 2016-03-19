.class public final Ldny;
.super Ldom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldom",
        "<",
        "Lkdb;",
        "Lkdc;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Lbfd;ILdyv;)V
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

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lihx;->a(Z)Lihx;

    move-result-object v0

    invoke-virtual {v0}, Lihx;->a()Lihw;

    move-result-object v1

    const-string v3, "presence/querypresence"

    sget-object v4, Lefh;->a:Lefh;

    new-instance v5, Lkdb;

    invoke-direct {v5}, Lkdb;-><init>()V

    new-instance v6, Lkdc;

    invoke-direct {v6}, Lkdc;-><init>()V

    move-object v0, p0

    move-object v2, p3

    .line 29
    invoke-direct/range {v0 .. v6}, Ldom;-><init>(Lihw;Leff;Ljava/lang/String;Lefh;Llyi;Llyi;)V

    .line 37
    iput p2, p0, Ldny;->a:I

    .line 38
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Ldny;->b:I

    .line 39
    return-void
.end method


# virtual methods
.method protected synthetic a(Llyi;)Ldqf;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lkdc;

    .line 1074
    invoke-static {p1}, Ldrx;->parseFrom(Lkdc;)Ldqf;

    move-result-object v0

    .line 20
    return-object v0
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Ldny;->e()Ldqf;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 82
    iget v1, p0, Ldny;->b:I

    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILdqf;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected synthetic b(Llyi;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 20
    check-cast p1, Lkdb;

    .line 2115
    iget-object v0, p0, Ldom;->e:Leff;

    .line 2043
    check-cast v0, Ldyv;

    .line 2044
    invoke-virtual {v0}, Ldyv;->b()Lksf;

    move-result-object v4

    .line 2045
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 2046
    new-array v1, v5, [Lkcr;

    iput-object v1, p1, Lkdb;->a:[Lkcr;

    move v3, v2

    .line 2047
    :goto_0
    if-ge v3, v5, :cond_0

    .line 2048
    new-instance v6, Lkcr;

    invoke-direct {v6}, Lkcr;-><init>()V

    .line 2049
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lkcr;->b:Ljava/lang/String;

    .line 2051
    iget-object v1, v6, Lkcr;->b:Ljava/lang/String;

    iput-object v1, v6, Lkcr;->a:Ljava/lang/String;

    .line 2052
    iget-object v1, p1, Lkdb;->a:[Lkcr;

    aput-object v6, v1, v3

    .line 2047
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 2055
    :cond_0
    new-instance v1, Ldmn;

    invoke-direct {v1}, Ldmn;-><init>()V

    iget v3, p0, Ldny;->a:I

    .line 2056
    invoke-virtual {v1, v3}, Ldmn;->b(I)Ldmn;

    move-result-object v1

    iget v3, p0, Ldny;->b:I

    .line 2057
    invoke-virtual {v1, v3}, Ldmn;->a(I)Ldmn;

    move-result-object v1

    .line 2058
    invoke-virtual {v1}, Ldmn;->b()Ldmm;

    move-result-object v1

    .line 2059
    invoke-virtual {p0, v1}, Ldny;->a(Ldmm;)Lkdo;

    move-result-object v1

    iput-object v1, p1, Lkdb;->requestHeader:Lkdo;

    .line 3091
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2063
    invoke-virtual {v0}, Ldyv;->a()I

    move-result v0

    invoke-static {v0, v3}, Ldnv;->a(ILjava/util/Collection;)V

    .line 2065
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2066
    new-array v0, v4, [I

    iput-object v0, p1, Lkdb;->b:[I

    move v1, v2

    .line 2067
    :goto_1
    if-ge v1, v4, :cond_1

    .line 2068
    iget-object v5, p1, Lkdb;->b:[I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4043
    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2068
    aput v0, v5, v1

    .line 2067
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 20
    :cond_1
    return-void
.end method
