.class public final Lier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/net/Uri;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:J

.field k:Z

.field l:I

.field m:Z

.field n:Llfi;

.field o:Lmcq;

.field p:Ljae;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lier;->k:Z

    return-void
.end method


# virtual methods
.method public a()Lier;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lier;->k:Z

    .line 208
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lier;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lier;->a:Landroid/net/Uri;

    .line 138
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lier;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lier;->d:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public b()Lier;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lier;->m:Z

    .line 220
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lier;
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lier;->e:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public c()Lieq;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lier;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lier;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lier;->i:Ljava/lang/String;

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "must specify an albumId, albumMediaKey or eventId"

    .line 246
    invoke-static {v0, v3}, Laen;->b(ZLjava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lier;->a:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lier;->a:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, v3, :cond_2

    :goto_1
    const-string v0, "must specify a mediaUri"

    invoke-static {v2, v0}, Laen;->b(ZLjava/lang/Object;)V

    .line 251
    new-instance v0, Lieq;

    .line 1014
    invoke-direct {v0, p0}, Lieq;-><init>(Lier;)V

    .line 251
    return-object v0

    :cond_1
    move v0, v1

    .line 247
    goto :goto_0

    :cond_2
    move v2, v1

    .line 248
    goto :goto_1
.end method

.method public c(Ljava/lang/String;)Lier;
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lier;->h:Ljava/lang/String;

    .line 188
    return-object p0
.end method
