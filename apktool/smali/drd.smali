.class public Ldrd;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkga;)V
    .locals 6

    .prologue
    .line 4889
    iget-object v0, p1, Lkga;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 4891
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldrd;->g:Ljava/util/Map;

    .line 4892
    iget-object v1, p1, Lkga;->a:[Lkfx;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 4893
    iget-object v4, v3, Lkfx;->a:Lkfy;

    .line 4896
    iget-object v5, v3, Lkfx;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, v4, Lkfy;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 4898
    iget-object v3, v3, Lkfx;->b:Ljava/lang/String;

    .line 4899
    iget-object v4, v4, Lkfy;->b:Ljava/lang/String;

    .line 4900
    iget-object v5, p0, Ldrd;->g:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4892
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4903
    :cond_1
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4907
    new-instance v0, Lkga;

    invoke-direct {v0}, Lkga;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4908
    check-cast v0, Lkga;

    .line 4909
    iget-object v1, v0, Lkga;->responseHeader:Lkdp;

    invoke-static {v1}, Ldrd;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4910
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkga;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 4912
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldrd;

    invoke-direct {v1, v0}, Ldrd;-><init>(Lkga;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4917
    iget-object v0, p0, Ldrd;->g:Ljava/util/Map;

    return-object v0
.end method
