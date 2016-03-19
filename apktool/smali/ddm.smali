.class public final Lddm;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILbfd;Ldwd;Leau;)V
    .locals 11

    .prologue
    const/4 v4, 0x1

    .line 413
    iget-object v0, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 1068
    iget v0, v0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->z:I

    .line 413
    if-eq p1, v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 2068
    :cond_0
    sget-boolean v0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->n:Z

    .line 416
    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p4}, Leau;->b()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onConversationCreated called, error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    :cond_1
    invoke-virtual {p4}, Leau;->b()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 420
    iget-object v0, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->bZ:I

    .line 3068
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->d(I)V

    goto :goto_0

    .line 424
    :cond_2
    iget-boolean v0, p3, Ldwd;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 4068
    iget-boolean v1, v1, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->s:Z

    .line 424
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    iget-boolean v0, p3, Ldwd;->c:Z

    if-eqz v0, :cond_3

    .line 427
    new-instance v0, Ldjm;

    iget-object v1, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    iget-object v2, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 5068
    iget-object v2, v2, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    .line 429
    iget-object v3, p3, Ldwd;->a:Ljava/lang/String;

    iget-object v5, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 6068
    iget v5, v5, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->x:I

    .line 432
    iget-object v6, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 7068
    iget-boolean v6, v6, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->t:Z

    .line 433
    iget-object v7, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 8068
    iget v7, v7, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->u:I

    .line 434
    iget-object v8, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 9068
    iget v8, v8, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->v:I

    .line 435
    iget-object v9, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 10068
    iget-boolean v9, v9, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->w:Z

    .line 436
    iget-object v10, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 11068
    iget-boolean v10, v10, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->y:Z

    .line 437
    invoke-direct/range {v0 .. v10}, Ldjm;-><init>(Landroid/app/Activity;Lbfd;Ljava/lang/String;ZIZIIZZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 438
    invoke-virtual {v0, v1}, Ldjm;->a([Ljava/lang/Object;)Lhbw;

    .line 439
    iget-object v0, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->setResult(I)V

    .line 440
    iget-object v0, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->finish()V

    goto :goto_0

    .line 442
    :cond_3
    iget-object v0, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    iget-object v1, p3, Ldwd;->a:Ljava/lang/String;

    .line 12068
    iput-object v1, v0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lddm;->a:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    iget v1, p3, Ldwd;->b:I

    .line 13068
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->e(I)V

    goto :goto_0
.end method
