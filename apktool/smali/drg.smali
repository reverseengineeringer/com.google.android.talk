.class public Ldrg;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkhu;)V
    .locals 5

    .prologue
    .line 3797
    invoke-direct {p0}, Ldqf;-><init>()V

    .line 3798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldrg;->g:Ljava/util/List;

    .line 3799
    iget-object v1, p1, Lkhu;->a:[Lkhk;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3800
    iget-object v4, p0, Ldrg;->g:Ljava/util/List;

    iget-object v3, v3, Lkhk;->c:Ljava/lang/String;

    invoke-static {v3}, Lczb;->a(Ljava/lang/String;)Lczb;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3799
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4232
    :cond_0
    sget-boolean v0, Ldqf;->a:Z

    .line 3802
    if-eqz v0, :cond_1

    .line 3803
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GetHangoutParticipantsResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3806
    :cond_1
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 3810
    new-instance v0, Lkhu;

    invoke-direct {v0}, Lkhu;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 3811
    check-cast v0, Lkhu;

    .line 3812
    iget-object v1, v0, Lkhu;->responseHeader:Lkdp;

    invoke-static {v1}, Ldrg;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3813
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkhu;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 3815
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldrg;

    invoke-direct {v1, v0}, Ldrg;-><init>(Lkhu;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3824
    iget-object v0, p0, Ldrg;->b:Leff;

    check-cast v0, Ldof;

    iget-object v0, v0, Ldof;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3828
    iget-object v0, p0, Ldrg;->g:Ljava/util/List;

    return-object v0
.end method
