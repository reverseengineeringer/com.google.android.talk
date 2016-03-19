.class public final Lhcd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhks;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lhci;

.field final c:Lhlj;

.field final d:Lhee;

.field final e:Lhfo;

.field final f:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

.field final g:Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;

.field final h:Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

.field final i:Lhgo;

.field final j:Lhiv;

.field k:Lhkt;

.field l:Z

.field m:I

.field n:Z

.field o:Z

.field p:Lhkw;

.field private final q:Lhch;

.field private final r:Lhge;

.field private s:Lhlb;

.field private t:Lhkq;

.field private u:Lhkr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhkt;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lhlj;

    invoke-direct {v0}, Lhlj;-><init>()V

    iput-object v0, p0, Lhcd;->c:Lhlj;

    .line 79
    iput-boolean v1, p0, Lhcd;->l:Z

    .line 80
    iput v1, p0, Lhcd;->m:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhcd;->n:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lhcd;->p:Lhkw;

    .line 87
    iput-object p1, p0, Lhcd;->a:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lhcd;->k:Lhkt;

    .line 89
    new-instance v0, Lhiv;

    invoke-direct {v0, p1, p0}, Lhiv;-><init>(Landroid/content/Context;Lhks;)V

    iput-object v0, p0, Lhcd;->j:Lhiv;

    .line 1082
    sget-object v0, Lhdf;->a:Lhdf;

    if-nez v0, :cond_0

    .line 1083
    new-instance v0, Lhdf;

    invoke-direct {v0}, Lhdf;-><init>()V

    sput-object v0, Lhdf;->a:Lhdf;

    .line 91
    :cond_0
    new-instance v0, Lhci;

    invoke-direct {v0, p0}, Lhci;-><init>(Lhcd;)V

    iput-object v0, p0, Lhcd;->b:Lhci;

    .line 92
    new-instance v0, Lhee;

    invoke-direct {v0}, Lhee;-><init>()V

    iput-object v0, p0, Lhcd;->d:Lhee;

    .line 93
    new-instance v0, Lhch;

    .line 1548
    invoke-direct {v0, p0}, Lhch;-><init>(Lhcd;)V

    .line 93
    iput-object v0, p0, Lhcd;->q:Lhch;

    .line 94
    new-instance v0, Lhfo;

    invoke-direct {v0, p0}, Lhfo;-><init>(Lhcd;)V

    iput-object v0, p0, Lhcd;->e:Lhfo;

    .line 95
    new-instance v0, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhcd;->g:Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;

    .line 96
    new-instance v0, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhcd;->h:Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

    .line 97
    new-instance v0, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;-><init>(Lhcd;)V

    iput-object v0, p0, Lhcd;->f:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    .line 98
    new-instance v0, Lhgo;

    invoke-direct {v0, p0}, Lhgo;-><init>(Lhcd;)V

    iput-object v0, p0, Lhcd;->i:Lhgo;

    .line 99
    iget-object v0, p0, Lhcd;->i:Lhgo;

    invoke-virtual {v0}, Lhgo;->b()Lhge;

    move-result-object v0

    iput-object v0, p0, Lhcd;->r:Lhge;

    .line 2014
    invoke-static {v1}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioMute(Z)V

    .line 104
    iget-object v0, p0, Lhcd;->b:Lhci;

    iget-object v1, p0, Lhcd;->q:Lhch;

    invoke-virtual {v0, v1}, Lhci;->a(Lhcu;)V

    .line 108
    invoke-static {}, Lhgd;->a()Lhgd;

    move-result-object v0

    iget-object v1, p0, Lhcd;->b:Lhci;

    invoke-virtual {v0, v1}, Lhgd;->a(Lhci;)V

    .line 110
    iget-object v0, p0, Lhcd;->k:Lhkt;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lhcd;->k:Lhkt;

    invoke-static {p1, v0}, Lhcd;->a(Landroid/content/Context;Lhkt;)V

    .line 113
    iget-object v0, p0, Lhcd;->b:Lhci;

    iget-object v1, p0, Lhcd;->k:Lhkt;

    invoke-virtual {v0, v1}, Lhci;->b(Lhkt;)V

    .line 115
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Lhkt;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 193
    const-string v0, "accountName not specified in CallInfo!"

    .line 194
    invoke-virtual {p1}, Lhkt;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 193
    invoke-static {v0, v2}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 197
    new-instance v0, Lhlo;

    invoke-direct {v0}, Lhlo;-><init>()V

    .line 198
    invoke-virtual {p1}, Lhkt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lhlo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhkt;->a(Ljava/lang/String;)Lhkt;

    .line 203
    :cond_0
    invoke-virtual {p1}, Lhkt;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-static {}, Lhlo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhkt;->b(Ljava/lang/String;)Lhkt;

    .line 208
    :cond_1
    invoke-virtual {p1}, Lhkt;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhkt;->k(Ljava/lang/String;)Lhkt;

    .line 212
    :cond_2
    invoke-virtual {p1}, Lhkt;->p()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 215
    invoke-static {}, Lhlo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhkt;->l(Ljava/lang/String;)Lhkt;

    .line 218
    :cond_3
    invoke-virtual {p1}, Lhkt;->d()Lmdx;

    move-result-object v2

    .line 220
    const-string v0, "RtcClient must be specified for all calls."

    invoke-static {v0, v2}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, v2, Lmdx;->a:Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 222
    invoke-static {p0}, Laal;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    const/4 v0, 0x3

    .line 222
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lmdx;->a:Ljava/lang/Integer;

    .line 225
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lmdx;->c:Ljava/lang/Integer;

    .line 226
    return-void

    :cond_5
    move v0, v1

    .line 223
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 232
    if-nez p0, :cond_2

    .line 233
    if-nez p2, :cond_0

    .line 234
    const-string v1, "Field cannot be set after initCall: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    :cond_0
    :goto_1
    return-void

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    const-string v1, "Field cannot be changed after initCall: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0, p0, p1}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lhcd;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/graphics/SurfaceTexture;)Lhlh;
    .locals 4

    .prologue
    .line 452
    const-string v0, "vclib"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Creating video renderer for surfaceTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v0, Lhlh;

    invoke-direct {v0, p0, p1}, Lhlh;-><init>(Lhcd;Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method public a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 309
    const-string v0, "vclib"

    const-string v1, "Leaving call, callStateCode=%d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lhcd;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget v0, p0, Lhcd;->m:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lhcd;->m:I

    if-ne v0, v5, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iput v5, p0, Lhcd;->m:I

    .line 319
    new-instance v0, Lhcf;

    invoke-direct {v0, p0, p1}, Lhcf;-><init>(Lhcd;I)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method a(Lhcs;)V
    .locals 6

    .prologue
    .line 496
    iget v0, p0, Lhcd;->m:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhcd;->k:Lhkt;

    if-nez v0, :cond_1

    .line 516
    :cond_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Lhcd;->a:Landroid/content/Context;

    iget-object v0, p0, Lhcd;->k:Lhkt;

    .line 501
    invoke-virtual {v0}, Lhkt;->c()I

    move-result v2

    iget-object v0, p0, Lhcd;->k:Lhkt;

    .line 502
    invoke-virtual {v0}, Lhkt;->e()I

    move-result v3

    iget-object v0, p0, Lhcd;->b:Lhci;

    .line 503
    invoke-virtual {v0}, Lhci;->b()Lhek;

    move-result-object v4

    iget-object v0, p0, Lhcd;->k:Lhkt;

    .line 505
    invoke-virtual {v0}, Lhkt;->r()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    .line 500
    invoke-virtual/range {v0 .. v5}, Lhcs;->a(Landroid/content/Context;IILhek;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 507
    new-instance v1, Lhel;

    iget-object v2, p0, Lhcd;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lhel;-><init>(Landroid/content/Context;)V

    .line 508
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkju;

    .line 510
    iget-object v3, p0, Lhcd;->c:Lhlj;

    invoke-virtual {v3, v0}, Lhlj;->a(Lkju;)V

    .line 512
    iget-object v3, p0, Lhcd;->k:Lhkt;

    invoke-virtual {v3}, Lhkt;->y()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 513
    iget-object v3, p0, Lhcd;->k:Lhkt;

    invoke-virtual {v1, v3, v0}, Lhel;->a(Lhkt;Lkju;)V

    goto :goto_0
.end method

.method public a(Lhkq;)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lhcd;->t:Lhkq;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lhcd;->t:Lhkq;

    invoke-interface {v0}, Lhkq;->a()V

    .line 357
    :cond_0
    iput-object p1, p0, Lhcd;->t:Lhkq;

    .line 358
    iget-object v0, p0, Lhcd;->t:Lhkq;

    if-nez v0, :cond_1

    .line 359
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhcd;->a(Z)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lhcd;->t:Lhkq;

    invoke-interface {v0, p0}, Lhkq;->a(Lhks;)V

    goto :goto_0
.end method

.method public a(Lhkr;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lhcd;->u:Lhkr;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lhcd;->u:Lhkr;

    invoke-interface {v0}, Lhkr;->a()V

    .line 375
    :cond_0
    iput-object p1, p0, Lhcd;->u:Lhkr;

    .line 376
    iget-object v0, p0, Lhcd;->u:Lhkr;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lhcd;->u:Lhkr;

    invoke-interface {v0, p0}, Lhkr;->a(Lhks;)V

    .line 379
    :cond_1
    return-void
.end method

.method public a(Lhkt;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 269
    iget v2, p0, Lhcd;->m:I

    if-eqz v2, :cond_0

    .line 271
    const-string v0, "vclib"

    const-string v1, "Attempted to join a call that has already been joined."

    .line 2089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v2, p0, Lhcd;->k:Lhkt;

    if-nez v2, :cond_2

    .line 276
    iget-object v0, p0, Lhcd;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lhcd;->a(Landroid/content/Context;Lhkt;)V

    .line 280
    :cond_1
    :goto_1
    iput-object p1, p0, Lhcd;->k:Lhkt;

    .line 283
    const-string v0, "vclib"

    invoke-virtual {p1}, Lhkt;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4081
    const/4 v3, 0x4

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lhcd;->j:Lhiv;

    const/16 v2, 0xa81

    invoke-virtual {v0, v2}, Lhiv;->a(I)V

    .line 287
    iput v1, p0, Lhcd;->m:I

    .line 292
    new-instance v0, Lhce;

    invoke-direct {v0, p0, p1}, Lhce;-><init>(Lhcd;Lhkt;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v2, p0, Lhcd;->k:Lhkt;

    .line 2244
    invoke-virtual {v2}, Lhkt;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lhkt;->n()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accountName"

    invoke-static {v3, v4, v0, v5}, Lhcd;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2245
    invoke-virtual {v2}, Lhkt;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lhkt;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sessionId"

    invoke-static {v3, v4, v0, v5}, Lhcd;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2246
    invoke-virtual {v2}, Lhkt;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lhkt;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "participantLogId"

    invoke-static {v3, v4, v0, v5}, Lhcd;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2248
    invoke-virtual {v2}, Lhkt;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lhkt;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, "clientId"

    invoke-static {v3, v4, v0, v5}, Lhcd;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2249
    invoke-virtual {v2}, Lhkt;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lhkt;->p()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gcmRegistration"

    invoke-static {v3, v4, v0, v5}, Lhcd;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2252
    invoke-virtual {v2}, Lhkt;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lhkt;->q()Ljava/lang/String;

    move-result-object v4

    const-string v5, "compressedLogFile"

    invoke-static {v3, v4, v0, v5}, Lhcd;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2256
    invoke-virtual {v2}, Lhkt;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lhkt;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "resolvedHangoutId"

    invoke-static {v3, v4, v1, v5}, Lhcd;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2260
    invoke-virtual {v2}, Lhkt;->z()Ljug;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2261
    const-string v3, "VideoCallOptions can not be modified after initCall."

    .line 2262
    invoke-virtual {v2}, Lhkt;->z()Ljug;

    move-result-object v2

    .line 2263
    invoke-virtual {p1}, Lhkt;->z()Ljug;

    move-result-object v4

    .line 3159
    if-ne v2, v4, :cond_4

    move v0, v1

    .line 2261
    :cond_3
    :goto_2
    invoke-static {v3, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 3162
    :cond_4
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 3165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 3168
    invoke-virtual {v2}, Llyi;->c()I

    move-result v5

    .line 3169
    invoke-virtual {v4}, Llyi;->c()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 3172
    new-array v0, v5, [B

    .line 3173
    new-array v6, v5, [B

    .line 3174
    invoke-static {v2, v0, v5}, Llyi;->a(Llyi;[BI)V

    .line 3175
    invoke-static {v4, v6, v5}, Llyi;->a(Llyi;[BI)V

    .line 3176
    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_2
.end method

.method public a(Lhku;)V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lhcd;->c:Lhlj;

    invoke-virtual {v0, p1}, Lhlj;->a(Lhku;)V

    .line 419
    iget v0, p0, Lhcd;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lhcd;->p:Lhkw;

    invoke-virtual {p1, v0}, Lhku;->a(Lhkw;)V

    .line 421
    iget-object v0, p0, Lhcd;->e:Lhfo;

    invoke-virtual {v0}, Lhfo;->c()Lhfn;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lhfn;->b()Lhkx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhku;->d(Lhkx;)V

    .line 426
    :cond_0
    return-void
.end method

.method public a(Lhlb;)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lhcd;->s:Lhlb;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lhcd;->s:Lhlb;

    invoke-interface {v0, p0}, Lhlb;->a(Lhks;)V

    .line 334
    :cond_0
    iput-object p1, p0, Lhcd;->s:Lhlb;

    .line 335
    iget-object v0, p0, Lhcd;->s:Lhlb;

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lhcd;->r:Lhge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhge;->b(Z)V

    .line 344
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lhcd;->r:Lhge;

    invoke-virtual {v0}, Lhge;->g()V

    .line 342
    iget-object v0, p0, Lhcd;->s:Lhlb;

    iget-object v1, p0, Lhcd;->r:Lhge;

    invoke-interface {v0, p0, v1}, Lhlb;->a(Lhks;Lhld;)V

    goto :goto_0
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lhcd;->l()Lhkv;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lhcd;->k()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Call is connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lhcd;->b:Lhci;

    invoke-virtual {v0, p1}, Lhci;->a(Ljava/io/PrintWriter;)V

    .line 168
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 475
    iget v0, p0, Lhcd;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 476
    const-string v0, "vclib"

    const-string v1, "Attempted to mute participant while not in a call."

    .line 5089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lhcd;->b:Lhci;

    invoke-virtual {v0, p1}, Lhci;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 458
    iput-boolean p1, p0, Lhcd;->n:Z

    .line 462
    invoke-virtual {p0}, Lhcd;->r()V

    .line 466
    iget-object v0, p0, Lhcd;->e:Lhfo;

    invoke-virtual {v0}, Lhfo;->d()Lhfn;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Lhfn;->c()Lhil;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {v1, p1}, Lhil;->a(Z)V

    .line 471
    :cond_0
    invoke-virtual {v0}, Lhfn;->e()V

    .line 472
    return-void
.end method

.method public b()Lhiv;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lhcd;->j:Lhiv;

    return-object v0
.end method

.method public b(Lhku;)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lhcd;->c:Lhlj;

    invoke-virtual {v0, p1}, Lhlj;->b(Lhku;)V

    .line 431
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 483
    iget v0, p0, Lhcd;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 484
    const-string v0, "vclib"

    const-string v1, "Attempted to kick participant while not in a call."

    .line 6089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 488
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lhcd;->b:Lhci;

    invoke-virtual {v0, p1}, Lhci;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lhfo;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lhcd;->e:Lhfo;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lhcd;->e:Lhfo;

    invoke-virtual {v0, p1}, Lhfo;->b(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public d()Lhci;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lhcd;->b:Lhci;

    return-object v0
.end method

.method public e()Lhee;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lhcd;->d:Lhee;

    return-object v0
.end method

.method public f()Lcom/google/android/libraries/hangouts/video/internal/RendererManager;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lhcd;->f:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    return-object v0
.end method

.method public g()Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lhcd;->g:Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;

    return-object v0
.end method

.method public h()Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lhcd;->h:Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

    return-object v0
.end method

.method public i()Lhgo;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lhcd;->i:Lhgo;

    return-object v0
.end method

.method public j()Lhku;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lhcd;->c:Lhlj;

    return-object v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lhcd;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lhkv;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lhcd;->b:Lhci;

    invoke-virtual {v0}, Lhci;->a()Lhcs;

    move-result-object v2

    .line 178
    new-instance v0, Lhkv;

    invoke-direct {v0}, Lhkv;-><init>()V

    iget-object v3, p0, Lhcd;->k:Lhkt;

    .line 179
    invoke-virtual {v0, v3}, Lhkv;->a(Lhkt;)Lhkv;

    move-result-object v0

    iget-object v3, p0, Lhcd;->p:Lhkw;

    .line 180
    invoke-virtual {v0, v3}, Lhkv;->a(Lhkw;)Lhkv;

    move-result-object v3

    iget-object v0, p0, Lhcd;->k:Lhkt;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 181
    :goto_0
    invoke-virtual {v3, v0}, Lhkv;->c(Ljava/lang/String;)Lhkv;

    move-result-object v3

    if-nez v2, :cond_2

    move-object v0, v1

    .line 182
    :goto_1
    invoke-virtual {v3, v0}, Lhkv;->a(Ljava/lang/String;)Lhkv;

    move-result-object v0

    if-nez v2, :cond_3

    .line 183
    :goto_2
    invoke-virtual {v0, v1}, Lhkv;->b(Ljava/lang/String;)Lhkv;

    move-result-object v1

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v2}, Lhcs;->s()Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    :cond_0
    const/4 v0, 0x1

    .line 185
    :goto_3
    invoke-virtual {v1, v0}, Lhkv;->a(I)Lhkv;

    move-result-object v1

    if-nez v2, :cond_5

    .line 187
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v1, v0}, Lhkv;->b(I)Lhkv;

    move-result-object v0

    return-object v0

    .line 181
    :cond_1
    iget-object v0, p0, Lhcd;->k:Lhkt;

    invoke-virtual {v0}, Lhkt;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v2}, Lhcs;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {v2}, Lhcs;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 186
    :cond_4
    const/4 v0, 0x2

    goto :goto_3

    .line 188
    :cond_5
    invoke-virtual {v2}, Lhcs;->n()I

    move-result v0

    goto :goto_4
.end method

.method public m()Lhlb;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lhcd;->s:Lhlb;

    return-object v0
.end method

.method public n()Lhkq;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lhcd;->t:Lhkq;

    return-object v0
.end method

.method public o()Lhkr;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lhcd;->u:Lhkr;

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhkx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 408
    iget-object v0, p0, Lhcd;->e:Lhfo;

    invoke-virtual {v0}, Lhfo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfn;

    .line 409
    invoke-virtual {v0}, Lhfn;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lhfn;->b()Lhkx;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 411
    :cond_0
    return-object v1
.end method

.method public q()Lhbo;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lhcd;->b:Lhci;

    invoke-virtual {v0}, Lhci;->d()Lhbo;

    move-result-object v0

    return-object v0
.end method

.method r()V
    .locals 3

    .prologue
    .line 524
    iget-boolean v0, p0, Lhcd;->l:Z

    if-nez v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lhcd;->e:Lhfo;

    invoke-virtual {v0}, Lhfo;->d()Lhfn;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Lhfn;->c()Lhil;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_1

    .line 533
    iget-object v0, p0, Lhcd;->b:Lhci;

    iget-boolean v1, p0, Lhcd;->n:Z

    invoke-virtual {v0, v1}, Lhci;->b(Z)V

    goto :goto_0

    .line 536
    :cond_1
    iget-object v1, p0, Lhcd;->e:Lhfo;

    new-instance v2, Lhcg;

    invoke-direct {v2, p0, v0}, Lhcg;-><init>(Lhcd;Lhfn;)V

    invoke-virtual {v1, v2}, Lhfo;->a(Lhft;)V

    goto :goto_0
.end method
