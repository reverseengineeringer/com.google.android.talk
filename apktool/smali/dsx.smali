.class public Ldsx;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Z


# direct methods
.method private constructor <init>(Lkey;)V
    .locals 4

    .prologue
    .line 4000
    iget-object v0, p1, Lkey;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 4002
    iget-object v0, p1, Lkey;->b:Ljava/lang/Boolean;

    .line 5015
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 4002
    iput-boolean v0, p0, Ldsx;->g:Z

    .line 5232
    sget-boolean v0, Ldqf;->a:Z

    .line 4005
    if-eqz v0, :cond_0

    .line 4006
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "StartPhoneVerificationResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4009
    :cond_0
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4013
    new-instance v0, Lkey;

    invoke-direct {v0}, Lkey;-><init>()V

    .line 6131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4014
    check-cast v0, Lkey;

    .line 4015
    iget-object v1, v0, Lkey;->responseHeader:Lkdp;

    invoke-static {v1}, Ldsx;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4016
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkey;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 4018
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldsx;

    invoke-direct {v1, v0}, Ldsx;-><init>(Lkey;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 3

    .prologue
    .line 4025
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 4027
    iget-boolean v0, p0, Ldsx;->g:Z

    if-eqz v0, :cond_0

    .line 4028
    const-string v0, "Babel"

    const-string v1, "Rate limit exceeded for phone verification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 4033
    const-class v1, Ldjw;

    .line 4032
    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjw;

    .line 4034
    if-eqz v0, :cond_0

    .line 4035
    const/16 v1, 0x69

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ldjw;->a(IZ)V

    .line 4038
    :cond_0
    return-void
.end method
