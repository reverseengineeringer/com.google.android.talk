.class public Ldrf;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lkhw;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3735
    invoke-direct {p0}, Ldqf;-><init>()V

    .line 3736
    iget-object v0, p1, Lkhw;->a:Lkhf;

    if-eqz v0, :cond_3

    .line 3737
    iget-object v0, p1, Lkhw;->a:Lkhf;

    .line 3738
    iget-object v1, v0, Lkhf;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3739
    iget-object v1, v0, Lkhf;->a:Ljava/lang/String;

    iput-object v1, p0, Ldrf;->g:Ljava/lang/String;

    .line 3740
    iget-object v1, v0, Lkhf;->j:Ljxw;

    if-eqz v1, :cond_1

    .line 3741
    iget-object v0, v0, Lkhf;->j:Ljxw;

    iget-object v0, v0, Ljxw;->a:Ljava/lang/String;

    iput-object v0, p0, Ldrf;->h:Ljava/lang/String;

    .line 4232
    :goto_0
    sget-boolean v0, Ldqf;->a:Z

    .line 3756
    if-eqz v0, :cond_0

    .line 3757
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GetHangoutInfoResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3759
    :cond_0
    return-void

    .line 3743
    :cond_1
    const-string v0, "Hangout has no associated conversation"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 3744
    iput-object v2, p0, Ldrf;->h:Ljava/lang/String;

    goto :goto_0

    .line 3747
    :cond_2
    const-string v0, "ServerResponse has Hangout but no hangoutId"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 3753
    :cond_3
    iput-object v2, p0, Ldrf;->g:Ljava/lang/String;

    .line 3754
    iput-object v2, p0, Ldrf;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 3763
    new-instance v0, Lkhw;

    invoke-direct {v0}, Lkhw;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 3764
    check-cast v0, Lkhw;

    .line 3765
    iget-object v1, v0, Lkhw;->responseHeader:Lkdp;

    invoke-static {v1}, Ldrf;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3766
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkhw;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 3768
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldrf;

    invoke-direct {v1, v0}, Ldrf;-><init>(Lkhw;)V

    move-object v0, v1

    goto :goto_0
.end method
