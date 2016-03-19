.class public final Ldnc;
.super Ldom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldom",
        "<",
        "Lkbu;",
        "Lkbw;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Lbfd;Ldya;)V
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

    const-string v3, "conversations/markeventobserved"

    sget-object v4, Lefh;->a:Lefh;

    new-instance v5, Lkbu;

    invoke-direct {v5}, Lkbu;-><init>()V

    new-instance v6, Lkbw;

    invoke-direct {v6}, Lkbw;-><init>()V

    move-object v0, p0

    move-object v2, p2

    .line 24
    invoke-direct/range {v0 .. v6}, Ldom;-><init>(Lihw;Leff;Ljava/lang/String;Lefh;Llyi;Llyi;)V

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Ldnc;->a:I

    .line 33
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Ldnc;->b:I

    .line 34
    return-void
.end method


# virtual methods
.method protected synthetic a(Llyi;)Ldqf;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lkbw;

    .line 1069
    invoke-static {p1}, Ldyb;->a(Lkbw;)Ldqf;

    move-result-object v0

    .line 17
    return-object v0
.end method

.method protected synthetic b(Llyi;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 17
    check-cast p1, Lkbu;

    .line 2115
    iget-object v0, p0, Ldom;->e:Leff;

    .line 2038
    check-cast v0, Ldya;

    .line 2039
    invoke-virtual {v0}, Ldya;->a()Lksf;

    move-result-object v4

    .line 2040
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 2041
    new-array v0, v5, [Lkbv;

    iput-object v0, p1, Lkbu;->a:[Lkbv;

    move v3, v2

    .line 2043
    :goto_0
    if-ge v3, v5, :cond_1

    .line 2044
    new-instance v6, Lkbv;

    invoke-direct {v6}, Lkbv;-><init>()V

    .line 2045
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldne;

    invoke-virtual {v0}, Ldne;->a()Ljava/lang/String;

    move-result-object v0

    .line 2046
    invoke-static {v0}, Ldnc;->a(Ljava/lang/String;)V

    .line 2047
    invoke-static {v0}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v0

    iput-object v0, v6, Lkbv;->a:Ljxw;

    .line 2050
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldne;

    invoke-virtual {v0}, Ldne;->b()Ljava/util/List;

    move-result-object v7

    .line 2051
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 2052
    new-array v0, v8, [Ljava/lang/String;

    iput-object v0, v6, Lkbv;->b:[Ljava/lang/String;

    move v1, v2

    .line 2053
    :goto_1
    if-ge v1, v8, :cond_0

    .line 2054
    iget-object v9, v6, Lkbv;->b:[Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v9, v1

    .line 2053
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2056
    :cond_0
    iget-object v0, p1, Lkbu;->a:[Lkbv;

    aput-object v6, v0, v3

    .line 2043
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 2059
    :cond_1
    new-instance v0, Ldmn;

    invoke-direct {v0}, Ldmn;-><init>()V

    iget v1, p0, Ldnc;->b:I

    .line 2060
    invoke-virtual {v0, v1}, Ldmn;->a(I)Ldmn;

    move-result-object v0

    iget v1, p0, Ldnc;->a:I

    .line 2061
    invoke-virtual {v0, v1}, Ldmn;->b(I)Ldmn;

    move-result-object v0

    .line 2062
    invoke-virtual {v0}, Ldmn;->b()Ldmm;

    move-result-object v0

    .line 2063
    invoke-virtual {p0, v0}, Ldnc;->a(Ldmm;)Lkdo;

    move-result-object v0

    iput-object v0, p1, Lkbu;->requestHeader:Lkdo;

    .line 17
    return-void
.end method
