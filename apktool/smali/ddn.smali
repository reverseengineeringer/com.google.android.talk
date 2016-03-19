.class public final Lddn;
.super Lbyp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbyp",
        "<",
        "Ldpa;",
        "Ldrb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lddn;->d:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-direct {p0}, Lbyp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Leau;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 666
    invoke-super {p0, p1}, Lbyp;->a(Leau;)V

    .line 668
    invoke-virtual {p1}, Leau;->c()Ldqf;

    move-result-object v0

    check-cast v0, Ldrb;

    .line 670
    invoke-virtual {v0}, Ldrb;->k()Ljava/util/List;

    move-result-object v6

    .line 671
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 672
    :goto_0
    iget-object v0, p0, Lddn;->d:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 3068
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->p:[Ljava/lang/String;

    .line 672
    array-length v0, v0

    if-eq v1, v0, :cond_1

    .line 673
    const-string v0, "Babel_GatewayActivity"

    const-string v1, "BabelGatewayActivity: Entity lookup returned wrong number of entities"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    iget-object v0, p0, Lddn;->d:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->bZ:I

    .line 4068
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->d(I)V

    .line 693
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 671
    goto :goto_0

    .line 678
    :cond_1
    iget-object v0, p0, Lddn;->d:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    new-array v4, v1, [Ljava/lang/String;

    .line 5068
    iput-object v4, v0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    move v5, v2

    .line 679
    :goto_2
    if-ge v5, v1, :cond_7

    .line 680
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyu;

    .line 681
    if-nez v0, :cond_2

    move-object v4, v3

    .line 683
    :goto_3
    if-eqz v4, :cond_3

    aget-object v0, v4, v2

    .line 684
    :goto_4
    if-nez v0, :cond_4

    .line 685
    const-string v0, "Babel_GatewayActivity"

    const-string v1, "BabelGatewayActivity: Could not resolve some gaiaId\'s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    iget-object v0, p0, Lddn;->d:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->bZ:I

    .line 6068
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->d(I)V

    goto :goto_1

    .line 682
    :cond_2
    iget-object v0, v0, Leyu;->b:Ljava/io/Serializable;

    check-cast v0, [Lcyx;

    move-object v4, v0

    goto :goto_3

    :cond_3
    move-object v0, v3

    .line 683
    goto :goto_4

    .line 689
    :cond_4
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v4}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 690
    iget-object v4, p0, Lddn;->d:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 7068
    iget-object v4, v4, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    .line 7702
    iget-object v7, v0, Lcyx;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 7703
    iget-object v0, v0, Lcyx;->e:Ljava/lang/String;

    .line 690
    :goto_5
    aput-object v0, v4, v5

    .line 679
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 7705
    :cond_5
    iget-object v7, v0, Lcyx;->f:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 7706
    iget-object v0, v0, Lcyx;->f:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object v0, v3

    .line 7708
    goto :goto_5

    .line 692
    :cond_7
    iget-object v0, p0, Lddn;->d:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 8068
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->j()V

    goto :goto_1
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 697
    invoke-super {p0, p1}, Lbyp;->a(Ljava/lang/Exception;)V

    .line 698
    iget-object v0, p0, Lddn;->d:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->bZ:I

    .line 9068
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->d(I)V

    .line 699
    return-void
.end method

.method public b()I
    .locals 5

    .prologue
    .line 656
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 657
    iget-object v0, p0, Lddn;->d:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 1068
    iget-object v2, v0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->p:[Ljava/lang/String;

    .line 657
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 658
    invoke-static {v4}, Ldtt;->a(Ljava/lang/String;)Ldtt;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lddn;->d:Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    .line 2068
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    .line 661
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 660
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/util/ArrayList;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldpa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    const-class v0, Ldpa;

    return-object v0
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldrb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    const-class v0, Ldrb;

    return-object v0
.end method
