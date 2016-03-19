.class final Ldbn;
.super Lebh;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldbh;


# direct methods
.method constructor <init>(Ldbh;)V
    .locals 1

    .prologue
    .line 557
    iput-object p1, p0, Ldbn;->a:Ldbh;

    .line 1100
    iget-object v0, p1, Ldbh;->context:Lill;

    .line 558
    invoke-direct {p0, v0}, Lebh;-><init>(Landroid/content/Context;)V

    .line 559
    return-void
.end method

.method private static a([Lcyx;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcyx;",
            "Ljava/util/List",
            "<",
            "Lbdy;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 632
    array-length v3, p0

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p0, v0

    .line 633
    if-eqz v4, :cond_0

    iget-boolean v5, v4, Lcyx;->z:Z

    if-nez v5, :cond_0

    iget-object v5, v4, Lcyx;->c:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 634
    iget-object v4, v4, Lcyx;->c:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_1
    const/4 v0, 0x1

    .line 639
    array-length v4, p0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, p0, v3

    .line 640
    if-eqz v5, :cond_2

    iget-boolean v6, v5, Lcyx;->z:Z

    if-eqz v6, :cond_2

    .line 641
    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_2
    invoke-static {v5, v0, v2}, Lbea;->a(Lcyx;Ljava/util/List;Z)Lbea;

    move-result-object v0

    .line 643
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 639
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 642
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 647
    :cond_4
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 596
    invoke-static {p1, p2}, Ldtt;->a(Ljava/lang/String;Ljava/lang/String;)Ldtt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v1, p0, Ldbn;->a:Ldbh;

    .line 7100
    iget-object v1, v1, Ldbh;->f:Lbfd;

    .line 598
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/util/ArrayList;Ljava/lang/String;Z)I

    move-result v0

    .line 599
    invoke-virtual {p0, v0}, Ldbn;->a(I)V

    .line 600
    return-void
.end method


# virtual methods
.method protected a(Leau;)V
    .locals 3

    .prologue
    .line 604
    invoke-virtual {p1}, Leau;->c()Ldqf;

    move-result-object v0

    check-cast v0, Ldrb;

    .line 606
    invoke-virtual {v0}, Ldrb;->k()Ljava/util/List;

    move-result-object v0

    .line 607
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 609
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyu;

    .line 610
    iget-object v0, v0, Leyu;->b:Ljava/io/Serializable;

    check-cast v0, [Lcyx;

    invoke-static {v0, v2}, Ldbn;->a([Lcyx;Ljava/util/List;)V

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Ldbn;->a:Ldbh;

    .line 8100
    iget-boolean v0, v0, Ldbh;->i:Z

    .line 613
    if-nez v0, :cond_2

    .line 615
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 616
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdy;

    .line 617
    invoke-virtual {v0}, Lbdy;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 615
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 623
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 624
    iget-object v0, p0, Ldbn;->a:Ldbh;

    .line 9100
    iget-object v0, v0, Ldbh;->d:Ldas;

    .line 624
    invoke-virtual {v0, v2}, Ldas;->a(Ljava/util/List;)V

    .line 626
    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 562
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Ldbn;->a:Ldbh;

    .line 2100
    iget-boolean v0, v0, Ldbh;->i:Z

    .line 563
    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Lbeb;

    invoke-direct {v0}, Lbeb;-><init>()V

    .line 565
    invoke-virtual {v0, p1}, Lbeb;->a(Ljava/lang/String;)Lbeb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbeb;->e(Ljava/lang/String;)Lbeb;

    move-result-object v0

    invoke-virtual {v0}, Lbeb;->a()Lbea;

    move-result-object v0

    .line 566
    iget-object v1, p0, Ldbn;->a:Ldbh;

    .line 3100
    iget-object v1, v1, Ldbh;->d:Ldas;

    .line 566
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldas;->a(Ljava/util/List;)V

    .line 569
    :cond_0
    invoke-direct {p0, p1, v4}, Ldbn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_0
    return-void

    .line 573
    :cond_1
    invoke-static {p1}, Lezm;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    if-nez v0, :cond_2

    iget-object v1, p0, Ldbn;->a:Ldbh;

    .line 4100
    iget-object v1, v1, Ldbh;->context:Lill;

    .line 575
    const-string v2, "babel_use_loose_number_match"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    invoke-static {p1}, Lezm;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    invoke-static {p1}, Lezm;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    :cond_2
    if-eqz v0, :cond_3

    .line 583
    new-instance v1, Lbeb;

    invoke-direct {v1}, Lbeb;-><init>()V

    .line 584
    invoke-virtual {v1, p1}, Lbeb;->a(Ljava/lang/String;)Lbeb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbeb;->f(Ljava/lang/String;)Lbeb;

    move-result-object v1

    invoke-virtual {v1}, Lbeb;->a()Lbea;

    move-result-object v1

    .line 585
    iget-object v2, p0, Ldbn;->a:Ldbh;

    .line 5100
    iget-object v2, v2, Ldbh;->d:Ldas;

    .line 585
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldas;->a(Ljava/util/List;)V

    .line 587
    invoke-direct {p0, v4, v0}, Ldbn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_3
    iget-object v0, p0, Ldbn;->a:Ldbh;

    .line 6100
    iget-object v0, v0, Ldbh;->d:Ldas;

    .line 591
    invoke-virtual {v0, v4}, Ldas;->a(Ljava/util/List;)V

    goto :goto_0
.end method
