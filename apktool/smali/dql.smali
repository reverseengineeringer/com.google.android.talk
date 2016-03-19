.class public Ldql;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lkhh;)V
    .locals 3

    .prologue
    .line 3867
    invoke-direct {p0}, Ldqf;-><init>()V

    .line 3868
    iget-object v0, p1, Lkhh;->a:Lkhf;

    if-eqz v0, :cond_1

    .line 3869
    iget-object v0, p1, Lkhh;->a:Lkhf;

    iget-object v0, v0, Lkhf;->a:Ljava/lang/String;

    iput-object v0, p0, Ldql;->g:Ljava/lang/String;

    .line 4232
    :goto_0
    sget-boolean v0, Ldqf;->a:Z

    .line 3873
    if-eqz v0, :cond_0

    .line 3874
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CreateHangoutIdResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3876
    :cond_0
    return-void

    .line 3871
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldql;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 3880
    new-instance v0, Lkhh;

    invoke-direct {v0}, Lkhh;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 3881
    check-cast v0, Lkhh;

    .line 3882
    iget-object v1, v0, Lkhh;->responseHeader:Lkdp;

    invoke-static {v1}, Ldql;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3883
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkhh;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 3885
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldql;

    invoke-direct {v1, v0}, Ldql;-><init>(Lkhh;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3890
    iget-object v0, p0, Ldql;->g:Ljava/lang/String;

    return-object v0
.end method
