.class public Ldsp;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Liyu;)V
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p1, Liyu;->apiHeader:Liye;

    invoke-direct {p0, v0}, Ldqf;-><init>(Liye;)V

    .line 1448
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 5

    .prologue
    .line 1452
    new-instance v0, Liyu;

    invoke-direct {v0}, Liyu;-><init>()V

    .line 2131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1452
    check-cast v0, Liyu;

    .line 1454
    iget-object v1, v0, Liyu;->apiHeader:Liye;

    invoke-static {v1}, Ldsp;->a(Liye;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1455
    const-string v1, "Babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "SetChatAclSettingResponse.processResponse: request failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1457
    new-instance v1, Ldqs;

    iget-object v0, v0, Liyu;->apiHeader:Liye;

    invoke-direct {v1, v0}, Ldqs;-><init>(Liye;)V

    move-object v0, v1

    .line 1459
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldsp;

    invoke-direct {v1, v0}, Ldsp;-><init>(Liyu;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 3

    .prologue
    .line 1466
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 2232
    sget-boolean v0, Ldqf;->a:Z

    .line 1467
    if-eqz v0, :cond_0

    .line 1468
    const-string v0, "SetChatAclSettingResponse.processResponse: success=,account="

    .line 1469
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
