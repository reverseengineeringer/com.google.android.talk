.class public Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;
.super Limi;
.source "SourceFile"

# interfaces
.implements Lhpw;


# instance fields
.field public j:Lbfd;

.field private k:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

.field private n:Z

.field private o:Z

.field private p:Lhzy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Limi;-><init>()V

    .line 50
    new-instance v0, Lhzy;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->m:Lipg;

    invoke-direct {v0, p0, v1}, Lhzy;-><init>(Lba;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->l:Lilh;

    .line 51
    invoke-virtual {v0, v1}, Lhzy;->a(Lilh;)Lhzy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhzy;->b(Lhpw;)Lhzy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->p:Lhzy;

    .line 50
    return-void
.end method

.method private a(Lbkw;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->j:Lbfd;

    sget-object v1, Ldhm;->a:Ldhm;

    .line 254
    invoke-static {v0, v2, v2, v1, p1}, Laal;->a(Lbfd;Ljava/lang/String;Ljava/util/Collection;Ldhm;Lbkw;)Landroid/content/Intent;

    move-result-object v0

    .line 256
    const-string v1, "share_intent"

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 257
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 259
    sget v0, Laal;->ch:I

    sget v1, Laal;->ci:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->overridePendingTransition(II)V

    .line 260
    return-void
.end method


# virtual methods
.method public a(Lav;)V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 155
    invoke-super {p0, p1}, Limi;->a(Lav;)V

    .line 157
    instance-of v0, p1, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    if-eqz v0, :cond_3

    .line 158
    check-cast p1, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iput-object p1, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->k:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->k:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    new-instance v1, Ldjg;

    .line 3263
    invoke-direct {v1, p0}, Ldjg;-><init>(Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->a(Lcao;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->k:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->n:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->b(Z)V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->k:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->o:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->c(Z)V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->k:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->b(I)V

    .line 4171
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->k:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    if-eqz v0, :cond_3

    .line 4172
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->C_()Lbg;

    move-result-object v0

    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v5

    .line 4173
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->j:Lbfd;

    if-eqz v0, :cond_6

    .line 4188
    sget v0, Laen;->aP:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4189
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->l:Lilh;

    const-class v2, Lawo;

    invoke-virtual {v1, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawo;

    .line 4190
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->p:Lhzy;

    invoke-virtual {v2}, Lhzy;->a()I

    move-result v6

    .line 4192
    invoke-interface {v1, v6}, Lawo;->d(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->o:Z

    if-nez v1, :cond_4

    move v1, v3

    .line 4191
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4197
    sget v1, Laen;->aO:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4198
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->l:Lilh;

    const-class v7, Leot;

    .line 4199
    invoke-virtual {v2, v7}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leot;

    invoke-interface {v2, v6}, Leot;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->n:Z

    if-eqz v2, :cond_5

    .line 4198
    :cond_0
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 4204
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4205
    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    const-string v0, "At least one button must be made visible"

    .line 4203
    invoke-static {v3, v0}, Lfii;->b(ZLjava/lang/Object;)V

    .line 4175
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->k:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v5, v0}, Lbz;->c(Lav;)Lbz;

    .line 4179
    :goto_2
    invoke-virtual {v5}, Lbz;->b()I

    .line 165
    :cond_3
    return-void

    :cond_4
    move v1, v4

    .line 4194
    goto :goto_0

    :cond_5
    move v4, v3

    .line 4201
    goto :goto_1

    .line 4177
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->k:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v5, v0}, Lbz;->b(Lav;)Lbz;

    goto :goto_2
.end method

.method public a(ZLhpv;Lhpv;II)V
    .locals 4

    .prologue
    .line 216
    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p3, v0, :cond_0

    .line 217
    invoke-static {p5}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->j:Lbfd;

    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->C_()Lbg;

    move-result-object v0

    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-direct {v1}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->k:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 220
    sget v1, Laen;->bm:I

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->k:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    const-class v3, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 223
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v0, v1, v2, v3}, Lbz;->a(ILav;Ljava/lang/String;)Lbz;

    .line 224
    invoke-virtual {v0}, Lbz;->b()I

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0, p1, p2, p3}, Limi;->onActivityResult(IILandroid/content/Intent;)V

    .line 237
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->finish()V

    .line 241
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1}, Limi;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    const-string v0, "Babel"

    const-string v1, "Sharing detail is not attached"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->finish()V

    .line 104
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v1, "sms_convs_only"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->n:Z

    .line 1148
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1149
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 2092
    invoke-static {v0}, Laal;->d(Ljava/lang/String;)Z

    move-result v0

    .line 67
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->o:Z

    .line 69
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->n:Z

    if-eqz v0, :cond_2

    .line 2660
    sget-object v0, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    invoke-static {}, Ldvd;->k()Lbfd;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3107
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->sq:I

    .line 3109
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->sp:I

    .line 3110
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->sr:I

    .line 3111
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    sget v4, Laal;->hS:I

    .line 3108
    invoke-static {v0, v1, v2, v3, v4}, Likt;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)Likt;

    move-result-object v0

    .line 3116
    new-instance v1, Ldjf;

    invoke-direct {v1, p0}, Ldjf;-><init>(Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;)V

    invoke-virtual {v0, v1}, Likt;->a(Liku;)V

    .line 3144
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->C_()Lbg;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Likt;->a(Lbg;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    sget v0, Laal;->gG:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->setContentView(I)V

    .line 92
    new-instance v1, Liaq;

    invoke-direct {v1}, Liaq;-><init>()V

    .line 93
    invoke-virtual {v1}, Liaq;->b()Liaq;

    .line 94
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->n:Z

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->l:Lilh;

    const-class v2, Lawo;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    invoke-interface {v0}, Lawo;->a()Lhzq;

    move-result-object v0

    invoke-virtual {v1, v0}, Liaq;->a(Lhzq;)Liaq;

    .line 97
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->o:Z

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->l:Lilh;

    const-class v2, Lawo;

    .line 99
    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    invoke-interface {v0}, Lawo;->b()Lhzq;

    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Liaq;->a(Lhzq;)Liaq;

    .line 101
    :cond_4
    new-instance v0, Liaj;

    invoke-direct {v0}, Liaj;-><init>()V

    const-class v2, Liap;

    .line 102
    invoke-virtual {v1}, Liaq;->c()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Liaj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Liaj;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->p:Lhzy;

    invoke-virtual {v1, v0}, Lhzy;->a(Liaj;)V

    goto/16 :goto_0
.end method

.method public onStartNewHangoutButtonClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lbkw;->a:Lbkw;

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->a(Lbkw;)V

    .line 246
    return-void
.end method

.method public onStartNewSmsButtonClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lbkw;->b:Lbkw;

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;->a(Lbkw;)V

    .line 250
    return-void
.end method
