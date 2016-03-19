.class public Ldsi;
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
            "Lcyx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkdu;)V
    .locals 4

    .prologue
    .line 2918
    iget-object v0, p1, Lkdu;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 2920
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldsi;->g:Ljava/util/List;

    .line 4232
    :cond_0
    :goto_0
    sget-boolean v0, Ldqf;->a:Z

    .line 2931
    if-eqz v0, :cond_1

    .line 2932
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SearchEntitiesResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    :cond_1
    return-void

    .line 2925
    :cond_2
    iget-object v0, p1, Lkdu;->a:[Ljzh;

    invoke-static {v0}, Laal;->a([Ljzh;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldsi;->g:Ljava/util/List;

    .line 3232
    sget-boolean v0, Ldqf;->a:Z

    .line 2926
    if-eqz v0, :cond_0

    .line 2927
    iget-object v0, p0, Ldsi;->g:Ljava/util/List;

    .line 2928
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x36

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SearchEntitiesResponse. Number of entities:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 2938
    new-instance v0, Lkdu;

    invoke-direct {v0}, Lkdu;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2939
    check-cast v0, Lkdu;

    .line 2940
    iget-object v1, v0, Lkdu;->responseHeader:Lkdp;

    invoke-static {v1}, Ldsi;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2941
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkdu;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 2943
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldsi;

    invoke-direct {v1, v0}, Ldsi;-><init>(Lkdu;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2948
    iget-object v0, p0, Ldsi;->g:Ljava/util/List;

    return-object v0
.end method
