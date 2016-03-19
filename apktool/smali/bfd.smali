.class public final Lbfd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lhpz;

.field private final b:Lawo;

.field private final c:Leot;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private g:Lczb;


# direct methods
.method public constructor <init>(Lhpz;Lawo;Leot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lbfd;->a:Lhpz;

    .line 1198
    const-string v0, "Expected non-null"

    invoke-static {v0, p4}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lbfd;->d:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lbfd;->e:Ljava/lang/String;

    .line 119
    const-string v0, "SMS"

    iget-object v1, p0, Lbfd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lbfd;->f:Z

    .line 120
    iput-object p2, p0, Lbfd;->b:Lawo;

    .line 121
    iput-object p3, p0, Lbfd;->c:Leot;

    .line 122
    return-void
.end method

.method public static F()Ljava/lang/String;
    .locals 2

    .prologue
    .line 529
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    invoke-static {v0}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    .line 4036
    :cond_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 533
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->jK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private V()Lhqb;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lbfd;->a:Lhpz;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    return-object v0
.end method

.method private W()Z
    .locals 2

    .prologue
    .line 771
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    const-string v1, "is_gv_calling_available"

    invoke-interface {v0, v1}, Lhqb;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static X()Z
    .locals 2

    .prologue
    .line 8036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 856
    const-class v1, Ldhn;

    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 857
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 5036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 580
    const-class v1, Leot;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    invoke-interface {v0}, Leot;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .prologue
    .line 470
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    const-string v1, "is_business_features_enabled"

    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 2

    .prologue
    .line 477
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    const-string v1, "business_features_promo_shown"

    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 3

    .prologue
    .line 485
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    const-string v1, "phone_verification_prompt_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 2

    .prologue
    .line 502
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    const-string v1, "gv_can_use_caller_id_feature"

    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lbfd;->f:Z

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x3

    .line 520
    :goto_0
    return v0

    .line 517
    :cond_0
    invoke-virtual {p0}, Lbfd;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbfd;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 520
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public G()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lbfd;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    invoke-static {v0}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    .line 550
    :cond_0
    const-string v0, "unknown_sim_number"

    goto :goto_0

    .line 552
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()Ljava/lang/String;
    .locals 3

    .prologue
    .line 563
    invoke-virtual {p0}, Lbfd;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {p0}, Lbfd;->v()Ljava/lang/String;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_1

    .line 572
    invoke-static {v0}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "_gv"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    :goto_0
    return-object v0

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()Z
    .locals 2

    .prologue
    .line 584
    invoke-virtual {p0}, Lbfd;->v()Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    invoke-static {v0}, Lbfd;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public J()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 590
    iget-boolean v1, p0, Lbfd;->f:Z

    if-eqz v1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v0

    .line 595
    :cond_1
    invoke-virtual {p0}, Lbfd;->K()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbfd;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    const-string v0, "auto"

    invoke-static {v0}, Lbfd;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public K()Z
    .locals 2

    .prologue
    .line 611
    invoke-virtual {p0}, Lbfd;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    invoke-static {}, Lezm;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbfd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbfd;->b:Lawo;

    .line 613
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->r(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public L()I
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 624
    iget-boolean v0, p0, Lbfd;->f:Z

    if-eqz v0, :cond_0

    .line 661
    :goto_0
    return v2

    .line 629
    :cond_0
    invoke-virtual {p0}, Lbfd;->K()Z

    move-result v0

    .line 630
    invoke-virtual {p0}, Lbfd;->x()Z

    move-result v3

    .line 633
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 6036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 635
    const-class v3, Leot;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    invoke-interface {v0}, Leot;->h()Ljava/lang/String;

    move-result-object v3

    .line 637
    const-string v0, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    const/4 v1, 0x0

    :cond_1
    :goto_1
    move v2, v1

    .line 661
    goto :goto_0

    .line 639
    :cond_2
    invoke-virtual {p0}, Lbfd;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 641
    invoke-virtual {p0}, Lbfd;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    invoke-virtual {p0}, Lbfd;->v()Ljava/lang/String;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_3

    .line 647
    invoke-static {v0}, Lezm;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    move v1, v0

    .line 653
    goto :goto_1

    :cond_4
    if-nez v3, :cond_1

    :cond_5
    move v1, v2

    .line 658
    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public M()Ljava/lang/String;
    .locals 2

    .prologue
    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 715
    iget-object v1, p0, Lbfd;->d:Ljava/lang/String;

    invoke-static {v1}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 776
    invoke-direct {p0}, Lbfd;->W()Z

    move-result v1

    if-nez v1, :cond_1

    .line 777
    const/4 v0, 0x0

    .line 788
    :cond_0
    :goto_0
    return v0

    .line 780
    :cond_1
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v1

    const-string v2, "gv_emergency_dialing_supported"

    invoke-interface {v1, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 781
    invoke-static {}, Lbfd;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    :cond_2
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v1

    const-string v2, "is_gv_calling_available"

    invoke-interface {v1, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 784
    const/4 v0, 0x1

    goto :goto_0

    .line 785
    :cond_3
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v1

    const-string v2, "gv_should_show_voice_tos"

    invoke-interface {v1, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public O()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 793
    invoke-direct {p0}, Lbfd;->W()Z

    move-result v2

    if-nez v2, :cond_1

    .line 797
    :cond_0
    :goto_0
    return v0

    .line 796
    :cond_1
    invoke-virtual {p0}, Lbfd;->N()I

    move-result v2

    .line 797
    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public P()Ljava/lang/String;
    .locals 2

    .prologue
    .line 802
    invoke-direct {p0}, Lbfd;->W()Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    const/4 v0, 0x0

    .line 805
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    const-string v1, "gv_account_balance"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Q()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 813
    invoke-direct {p0}, Lbfd;->W()Z

    move-result v1

    if-nez v1, :cond_1

    .line 817
    :cond_0
    :goto_0
    return v0

    .line 816
    :cond_1
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v1

    const-string v2, "gv_emergency_dialing_supported"

    invoke-interface {v1, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    invoke-static {}, Lbfd;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public R()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lbfd;->b:Lawo;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->f(I)Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 2

    .prologue
    .line 833
    invoke-virtual {p0}, Lbfd;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbhh;->b:Lbhh;

    .line 834
    invoke-static {p0, v0}, Laal;->a(Lbfd;Lbhh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6440
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    const-string v1, "gv_sms_integration_shown"

    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    .line 835
    if-nez v0, :cond_0

    .line 836
    invoke-virtual {p0}, Lbfd;->x()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public T()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 840
    invoke-virtual {p0}, Lbfd;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 842
    const-string v2, "babel_enable_plus_page_video"

    .line 841
    invoke-static {v1, v2, v0}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public U()Ljava/lang/String;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lbfd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0}, Lbfd;->L()I

    move-result v0

    .line 671
    if-nez v0, :cond_1

    .line 672
    invoke-static {p1}, Laal;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    :goto_0
    return p1

    .line 675
    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lbfd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lczb;)Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lbfd;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbfd;->g:Lczb;

    invoke-virtual {v0, p1}, Lczb;->a(Lczb;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    invoke-static {v0}, Lbff;->a(Lhqb;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkc;

    .line 344
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldkc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lczb;
    .locals 4

    .prologue
    .line 143
    invoke-virtual {p0}, Lbfd;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "Babel"

    iget-object v1, p0, Lbfd;->d:Ljava/lang/String;

    .line 147
    invoke-static {v1}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x49

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mParticipantId id not yet set for account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- account not yet signed in?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 144
    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mParticipantId id not yet set, account not yet signed in?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lbfd;->g:Lczb;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    invoke-static {v0}, Lbff;->a(Lhqb;)Ljava/util/Map;

    move-result-object v0

    .line 395
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkc;

    .line 396
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldkc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lbfd;->b:Lawo;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0}, Lbfd;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbfd;->g:Lczb;

    iget-object v1, v1, Lczb;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lbfd;->f()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 185
    iget-object v1, p0, Lbfd;->g:Lczb;

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v1

    .line 192
    const-string v2, "gaia_id"

    invoke-interface {v1, v2}, Lhqb;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "chat_id"

    invoke-interface {v1, v2}, Lhqb;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    :cond_2
    new-instance v2, Lczb;

    const-string v3, "gaia_id"

    .line 195
    invoke-interface {v1, v3}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "chat_id"

    invoke-interface {v1, v4}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lczb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lbfd;->g:Lczb;

    .line 197
    :cond_3
    iget-object v1, p0, Lbfd;->g:Lczb;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 692
    if-nez p1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    instance-of v1, p1, Lbfd;

    if-eqz v1, :cond_0

    .line 697
    check-cast p1, Lbfd;

    .line 698
    iget-object v1, p0, Lbfd;->d:Ljava/lang/String;

    iget-object v2, p1, Lbfd;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbfd;->e:Ljava/lang/String;

    iget-object v2, p1, Lbfd;->e:Ljava/lang/String;

    .line 699
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0}, Lbfd;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbfd;->g:Lczb;

    iget-object v2, v2, Lczb;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 1256
    :cond_1
    iget-object v2, p0, Lbfd;->b:Lawo;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v3

    invoke-interface {v2, v3}, Lawo;->k(I)Z

    move-result v2

    .line 209
    if-eqz v2, :cond_3

    .line 1327
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v2

    const-string v3, "chat_archive_enabled"

    invoke-interface {v2, v3, v1}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1328
    invoke-virtual {p0}, Lbfd;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move v2, v1

    .line 209
    :goto_1
    if-eqz v2, :cond_3

    .line 2265
    iget-object v2, p0, Lbfd;->b:Lawo;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v3

    invoke-interface {v2, v3}, Lawo;->m(I)Z

    move-result v2

    .line 209
    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v0

    .line 1328
    goto :goto_1
.end method

.method public g()I
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lbfd;->a:Lhpz;

    iget-object v1, p0, Lbfd;->d:Ljava/lang/String;

    iget-object v2, p0, Lbfd;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lhpz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 217
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 218
    const-string v1, "Babel"

    const-string v2, "Returning invalid account ID"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_0
    return v0
.end method

.method public h()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lbfd;->b:Lawo;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->q(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lbfd;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 684
    iget-object v1, p0, Lbfd;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 685
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbfd;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 687
    :cond_0
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lbfd;->b:Lawo;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lbfd;->b:Lawo;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->l(I)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lbfd;->b:Lawo;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->g(I)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lbfd;->b:Lawo;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->h(I)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lbfd;->b:Lawo;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->i(I)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lbfd;->c:Leot;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Leot;->c(I)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 311
    iget-boolean v1, p0, Lbfd;->f:Z

    if-nez v1, :cond_0

    .line 312
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v1

    const-string v2, "allowed_for_domain"

    invoke-interface {v1, v2, v0}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lbfd;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    const-string v1, "profile_photo_url"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 352
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    invoke-static {v0}, Lbff;->a(Lhqb;)Ljava/util/Map;

    move-result-object v0

    .line 356
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkc;

    .line 357
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldkc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 361
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    invoke-static {v0}, Lbff;->a(Lhqb;)Ljava/util/Map;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkc;

    .line 373
    invoke-virtual {v0}, Ldkc;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    invoke-virtual {v0}, Ldkc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_1
    return-object v1
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lbfd;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 705
    iget-object v0, p0, Lbfd;->d:Ljava/lang/String;

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lbfd;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 706
    const-string v2, "-"

    iget-object v0, p0, Lbfd;->e:Ljava/lang/String;

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 406
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    invoke-static {v0}, Lbff;->a(Lhqb;)Ljava/util/Map;

    move-result-object v0

    .line 407
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkc;

    .line 409
    invoke-virtual {v0}, Ldkc;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ldkc;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {v0}, Ldkc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    .line 3036
    :cond_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 413
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->jK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 418
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    invoke-static {v0}, Lbff;->a(Lhqb;)Ljava/util/Map;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkc;

    .line 421
    invoke-virtual {v0}, Ldkc;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ldkc;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {v0}, Ldkc;->a()Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 432
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    const-string v1, "can_opt_into_gv_sms_integration"

    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lbfd;->b:Lawo;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->e(I)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lbfd;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 463
    invoke-direct {p0}, Lbfd;->V()Lhqb;

    move-result-object v0

    const-string v1, "is_business_features_eligible"

    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
