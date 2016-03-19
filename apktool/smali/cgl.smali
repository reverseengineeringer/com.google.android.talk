.class public final Lcgl;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/HangoutFragment;)V
    .locals 1

    .prologue
    .line 232
    iput-object p1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method

.method private a(Lau;)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 30093
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->an:Z

    .line 423
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->f:Lcfc;

    invoke-virtual {v1}, Lcfc;->h()Z

    move-result v1

    .line 31093
    iput-boolean v1, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->ap:Z

    .line 424
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->getFragmentManager()Lbg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lau;->a(Lbg;Ljava/lang/String;)V

    .line 425
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 1093
    iget v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->al:I

    .line 235
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 240
    const v1, -0x10000001

    and-int/2addr v0, v1

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 2093
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->an:Z

    .line 243
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public a(Lcey;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->f:Lcfc;

    invoke-virtual {v0}, Lcfc;->k()Lhjk;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Laal;->h()Lbfd;

    move-result-object v1

    .line 303
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    .line 10601
    sget-object v2, Ldvp;->U:Ldml;

    invoke-virtual {v2, v1}, Ldml;->b(I)Z

    move-result v1

    .line 303
    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v0}, Lhjk;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcey;->c:Lcey;

    if-ne p1, v1, :cond_2

    .line 306
    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->a(Z)V

    .line 307
    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 308
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->getActivity()Lba;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->sG:I

    .line 307
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 312
    invoke-virtual {v0, v3}, Lhjk;->a(Z)V

    .line 320
    :cond_0
    :goto_0
    sget-object v0, Lcex;->a:Ljava/util/Map;

    .line 322
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 321
    invoke-static {v0, v5}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 323
    if-eq v0, v5, :cond_1

    .line 324
    invoke-static {v0}, Laal;->c(I)V

    .line 326
    :cond_1
    return-void

    .line 313
    :cond_2
    invoke-virtual {v0}, Lhjk;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcey;->d:Lcey;

    if-ne p1, v0, :cond_0

    .line 315
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 11093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->context:Lill;

    .line 315
    const-class v1, Lcmu;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmu;

    .line 316
    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 12093
    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->context:Lill;

    .line 12121
    new-instance v2, Lcmt;

    invoke-direct {v2}, Lcmt;-><init>()V

    .line 12122
    invoke-virtual {v2, v3}, Lcmt;->a(I)Lcmt;

    move-result-object v2

    .line 12123
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->sE:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcmt;->a(Ljava/lang/String;)Lcmt;

    move-result-object v2

    .line 12124
    invoke-virtual {v2}, Lcmt;->a()Lcmt;

    move-result-object v2

    .line 12125
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->sF:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcmt;->b(Ljava/lang/String;)Lcmt;

    move-result-object v2

    .line 12126
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laal;->dj:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcmt;->b(I)Lcmt;

    move-result-object v1

    new-instance v2, Lcmx;

    invoke-direct {v2}, Lcmx;-><init>()V

    .line 12127
    invoke-virtual {v1, v2}, Lcmt;->a(Landroid/view/View$OnClickListener;)Lcmt;

    move-result-object v1

    .line 12142
    invoke-virtual {v1}, Lcmt;->b()Lcms;

    move-result-object v1

    .line 316
    invoke-interface {v0, v1}, Lcmu;->a(Lcms;)V

    goto :goto_0
.end method

.method public a(Lcgw;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    .line 370
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 17093
    iget v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->al:I

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onHangoutEnded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 18093
    iget v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->al:I

    .line 372
    if-ne v0, v5, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {p1}, Lcgw;->O()I

    move-result v2

    .line 377
    const-string v0, "Babel_calls"

    invoke-static {v0, v5}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    const-string v0, "Babel_calls"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "HangoutFragment.onHangoutEnded: reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    :cond_2
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 19093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->binder:Lilh;

    .line 381
    const-class v3, Lcze;

    invoke-virtual {v0, v3}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcze;

    .line 383
    iget-object v3, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 20093
    iget-boolean v3, v3, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->h:Z

    .line 383
    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 21093
    iget-object v3, v3, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->ak:Lbfd;

    .line 384
    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    invoke-interface {v0, v3}, Lcze;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 22093
    :cond_3
    invoke-static {v2}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->b(I)Z

    move-result v3

    .line 386
    if-nez v3, :cond_6

    .line 387
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 23093
    invoke-virtual {v0, v5}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->a(I)V

    .line 389
    const/16 v0, 0x3f6

    if-ne v2, v0, :cond_4

    .line 390
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->C_()Lbg;

    move-result-object v0

    .line 391
    const-string v1, "out_of_balance_dialog_fragment_tag"

    invoke-virtual {v0, v1}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    .line 394
    instance-of v0, v0, Lcig;

    if-nez v0, :cond_0

    .line 24027
    new-instance v0, Lcig;

    invoke-direct {v0}, Lcig;-><init>()V

    .line 397
    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->getFragmentManager()Lbg;

    move-result-object v1

    const-string v2, "out_of_balance_dialog_fragment_tag"

    invoke-virtual {v0, v1, v2}, Lcig;->a(Lbg;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_4
    const/16 v0, 0x13

    if-ne v2, v0, :cond_5

    .line 401
    new-instance v0, Lcif;

    invoke-direct {v0}, Lcif;-><init>()V

    invoke-direct {p0, v0}, Lcgl;->a(Lau;)V

    goto/16 :goto_0

    .line 404
    :cond_5
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {p1}, Lcgw;->P()Ljava/lang/String;

    move-result-object v1

    .line 24093
    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->a(Ljava/lang/String;I)V

    .line 418
    :goto_1
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 28093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->d:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 418
    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 29093
    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->e:Lcgs;

    .line 418
    invoke-static {v0, v1}, Lcfx;->a(Landroid/content/Context;Lcgs;)V

    goto/16 :goto_0

    .line 406
    :cond_6
    if-eqz v1, :cond_7

    .line 408
    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 25093
    invoke-virtual {v1, v5}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->a(I)V

    .line 410
    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 26093
    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->ak:Lbfd;

    .line 410
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcze;->b(I)Lau;

    move-result-object v0

    .line 411
    invoke-direct {p0, v0}, Lcgl;->a(Lau;)V

    goto/16 :goto_0

    .line 415
    :cond_7
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 27093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->d:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 415
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->n()V

    goto :goto_1
.end method

.method public a(Lhke;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhke;",
            "Ljava/util/Set",
            "<",
            "Lhkd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 8093
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->v()V

    .line 265
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->a(Lhke;Ljava/util/Set;)V

    .line 266
    return-void
.end method

.method public a(Lhkw;)V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->f:Lcfc;

    invoke-virtual {v1}, Lcfc;->r()Lcgw;

    move-result-object v1

    invoke-virtual {v1}, Lcgw;->e()Lcgs;

    move-result-object v1

    .line 3093
    iput-object v1, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->e:Lcgs;

    .line 249
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 4093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->binder:Lilh;

    .line 249
    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v1

    .line 250
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 5093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->binder:Lilh;

    .line 250
    const-class v2, Lcon;

    .line 251
    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcon;

    sget-object v2, Lcoo;->a:Lcoo;

    .line 252
    invoke-interface {v0, v1, v2}, Lcon;->a(ILcoo;)V

    .line 253
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 6093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->d:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 253
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->y_()V

    .line 254
    return-void
.end method

.method public a(Lhkx;)V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->b()V

    .line 334
    :cond_0
    return-void
.end method

.method public a(Lhky;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    sget-object v0, Lcgk;->a:[I

    invoke-virtual {p1}, Lhky;->a()Lhkz;

    move-result-object v1

    invoke-virtual {v1}, Lhkz;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 292
    const-string v0, "Babel_calls"

    invoke-virtual {p1}, Lhky;->a()Lhkz;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error: invalid quality event reported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :goto_0
    return-void

    .line 273
    :pswitch_0
    const/16 v0, 0x9ad

    .line 274
    invoke-static {}, Laal;->h()Lbfd;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v2, v2, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->f:Lcfc;

    invoke-virtual {v2}, Lcfc;->k()Lhjk;

    move-result-object v2

    .line 276
    iget-object v3, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 9093
    iget-boolean v3, v3, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->aq:Z

    .line 276
    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    .line 9396
    sget-object v3, Ldvp;->B:Ldml;

    invoke-virtual {v3, v1}, Ldml;->b(I)Z

    move-result v1

    .line 279
    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 10093
    iput-boolean v5, v1, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->aq:Z

    .line 281
    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->a(Z)V

    .line 282
    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 283
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->getActivity()Lba;

    move-result-object v1

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->sH:I

    .line 282
    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 285
    invoke-virtual {v2, v4}, Lhjk;->a(Z)V

    .line 295
    :cond_0
    :goto_1
    invoke-static {v0}, Laal;->c(I)V

    goto :goto_0

    .line 289
    :pswitch_1
    const/16 v0, 0x9ae

    .line 290
    goto :goto_1

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 354
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 355
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 13093
    iget v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->al:I

    .line 355
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v1, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->f:Lcfc;

    invoke-virtual {v1}, Lcfc;->r()Lcgw;

    move-result-object v1

    invoke-virtual {v1}, Lcgw;->e()Lcgs;

    move-result-object v1

    .line 14093
    iput-object v1, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->e:Lcgs;

    .line 358
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 490
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 40093
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->r()V

    .line 492
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 15093
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->v()V

    .line 363
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 16093
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->a(Ljava/lang/String;Z)V

    .line 366
    :cond_0
    return-void
.end method

.method public b(Lhkx;)V
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->b()V

    .line 350
    :cond_0
    return-void
.end method

.method public c(Lhkx;)V
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->b()V

    .line 342
    :cond_0
    return-void
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 32093
    iget v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->al:I

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onHangoutExiting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 33093
    iget v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->al:I

    .line 430
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->f:Lcfc;

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    invoke-virtual {v0}, Lcgw;->O()I

    move-result v1

    .line 433
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 34093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->binder:Lilh;

    .line 433
    const-class v2, Lcze;

    invoke-virtual {v0, v2}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcze;

    .line 434
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 35093
    iget-object v2, v2, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->ak:Lbfd;

    .line 435
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-interface {v0, v2}, Lcze;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 36093
    :goto_0
    invoke-static {v1}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->b(I)Z

    move-result v1

    .line 436
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 37093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->d:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 438
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->n()V

    .line 442
    :cond_0
    return-void

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 462
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 38093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->d:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 462
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 464
    const-string v0, "recent_call_timestamp"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->f:Lcfc;

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    .line 38198
    const-string v2, "Expected non-null"

    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-virtual {v0}, Lcgw;->F()Ljava/util/List;

    move-result-object v2

    .line 472
    invoke-virtual {v0}, Lcgw;->J()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 473
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 474
    invoke-virtual {v0}, Lcgw;->T()Ljava/util/List;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 476
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchb;

    .line 477
    invoke-virtual {v0}, Lchb;->b()Ljava/lang/String;

    move-result-object v0

    .line 478
    iget-object v2, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 39093
    iget-object v2, v2, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->ak:Lbfd;

    .line 479
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    const-string v3, "recent_call_timestamp"

    const-wide/16 v4, 0x0

    .line 480
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 482
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 478
    invoke-static {v2, v4, v5, v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IJLjava/lang/String;Z)I

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcgl;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 7093
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->b(Z)V

    .line 259
    return-void
.end method
