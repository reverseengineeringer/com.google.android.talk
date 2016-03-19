.class public Ldnl;
.super Ldnh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 394
    invoke-direct {p0}, Ldnh;-><init>()V

    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 396
    iput-object p1, p0, Ldnl;->a:Ljava/lang/String;

    .line 397
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    const-string v0, "ui_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 4

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x0

    .line 402
    new-instance v0, Lizz;

    invoke-direct {v0}, Lizz;-><init>()V

    .line 403
    iget-object v1, p0, Ldnl;->a:Ljava/lang/String;

    iput-object v1, v0, Lizz;->a:Ljava/lang/String;

    .line 404
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lizz;->e:Ljava/lang/Integer;

    .line 405
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lizz;->d:Ljava/lang/Integer;

    .line 406
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x3

    aput v2, v1, v3

    iput-object v1, v0, Lizz;->c:[I

    .line 407
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lizz;->i:Ljava/lang/Boolean;

    .line 409
    new-instance v1, Liyv;

    invoke-direct {v1}, Liyv;-><init>()V

    .line 410
    iput-object v0, v1, Liyv;->a:Lizz;

    .line 411
    return-object v1
.end method

.method public a(Landroid/content/Context;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 443
    if-nez p2, :cond_0

    const-string v1, "babel_stickers_anonymous_request"

    invoke-static {p1, v1, v0}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected a(Landroid/content/Context;ILdvn;)Z
    .locals 3

    .prologue
    .line 432
    invoke-virtual {p0, p1, p2}, Ldnl;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p3}, Ldvn;->c()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    .line 434
    const-string v0, "Babel"

    const-string v1, "Probably exceeded anonymous daily quota, retrying as authenticated."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ldnh;->a(Landroid/content/Context;ILdvn;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 422
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    const-string v0, "userphotoalbums"

    return-object v0
.end method
