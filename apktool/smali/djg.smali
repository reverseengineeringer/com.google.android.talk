.class public final Ldjg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcao;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Ldjg;->a:Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 304
    const-string v0, "Should not get called"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public a(Laxj;)V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Ldjg;->a:Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;

    .line 1036
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->j:Lbfd;

    .line 271
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iget-object v1, p1, Laxj;->a:Ljava/lang/String;

    iget v2, p1, Laxj;->b:I

    .line 270
    invoke-static {v0, v1, v2}, Laal;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 272
    const-string v1, "conversation_parameters"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    iget-object v1, p0, Ldjg;->a:Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 274
    const-string v2, "conversation_id"

    iget-object v3, p1, Laxj;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v2, "ShareIntentActivity.openConversation"

    invoke-static {v2, v1}, Lewz;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 276
    const-string v2, "share_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 277
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Ldjg;->a:Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 280
    iget-object v0, p0, Ldjg;->a:Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;

    sget v1, Laal;->ch:I

    sget v2, Laal;->ci:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->overridePendingTransition(II)V

    .line 281
    return-void
.end method

.method public a(Lepa;)V
    .locals 1

    .prologue
    .line 324
    const-string v0, "Should not get called"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public a(Lepa;Lepa;)V
    .locals 1

    .prologue
    .line 330
    const-string v0, "Should not get called"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public a(Ljava/lang/String;ZII)V
    .locals 1

    .prologue
    .line 290
    const-string v0, "Should not get called"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 319
    const-string v0, "Should not get called"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public u_()V
    .locals 1

    .prologue
    .line 314
    const-string v0, "Should not get called"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 315
    return-void
.end method
