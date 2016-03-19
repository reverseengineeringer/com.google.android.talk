.class final Ldae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjq;


# instance fields
.field final synthetic a:Ldad;


# direct methods
.method constructor <init>(Ldad;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Ldae;->a:Ldad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-object v0, p0, Ldae;->a:Ldad;

    .line 4065
    iget-object v0, v0, Ldad;->c:Laxq;

    .line 111
    invoke-virtual {v0}, Laxq;->b()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 112
    const/4 v0, 0x2

    .line 114
    :goto_0
    iget-object v2, p0, Ldae;->a:Ldad;

    .line 5065
    iget-object v2, v2, Ldad;->b:Lcau;

    .line 114
    iget-object v3, p0, Ldae;->a:Ldad;

    .line 6065
    iget-object v3, v3, Ldad;->i:Lbkw;

    .line 117
    sget-object v4, Lbkw;->d:Lbkw;

    if-ne v3, v4, :cond_1

    :goto_1
    iget-object v3, p0, Ldae;->a:Ldad;

    .line 7065
    iget-object v3, v3, Ldad;->c:Laxq;

    .line 118
    invoke-virtual {v3}, Laxq;->a()Lihb;

    move-result-object v3

    .line 114
    invoke-interface {v2, p1, v0, v1, v3}, Lcau;->a(Ljava/lang/String;IZLihb;)V

    .line 119
    return-void

    :cond_0
    move v0, v1

    .line 113
    goto :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Ldae;->a:Ldad;

    .line 1065
    invoke-virtual {v0}, Ldad;->b()Z

    move-result v0

    .line 103
    if-nez v0, :cond_0

    iget-object v0, p0, Ldae;->a:Ldad;

    .line 2065
    iget-object v0, v0, Ldad;->c:Laxq;

    .line 103
    invoke-virtual {v0}, Laxq;->b()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 104
    iget-object v3, p0, Ldae;->a:Ldad;

    .line 3442
    sget-object v0, Ldag;->b:[I

    iget-object v4, v3, Ldad;->ak:Ldhm;

    invoke-virtual {v4}, Ldhm;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 3470
    const-string v0, "Babel"

    iget-object v2, v3, Ldad;->ak:Ldhm;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xe

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Audience mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3471
    const-string v0, "Unknown audience mode"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 3468
    :cond_0
    :goto_0
    return-void

    .line 3445
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v3, Ldad;->c:Laxq;

    .line 3446
    invoke-virtual {v0}, Laxq;->e()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3447
    iget-object v0, v3, Ldad;->c:Laxq;

    invoke-virtual {v0}, Laxq;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxt;

    .line 3448
    invoke-virtual {v0}, Laxt;->h()Lcyx;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3451
    :cond_1
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcfc;->b(Ljava/util/List;)V

    .line 3452
    iget-object v0, v3, Ldad;->b:Lcau;

    invoke-interface {v0}, Lcau;->a()V

    goto :goto_0

    .line 3512
    :pswitch_1
    iget-object v0, v3, Ldad;->i:Lbkw;

    sget-object v4, Lbkw;->d:Lbkw;

    if-eq v0, v4, :cond_2

    iget-object v0, v3, Ldad;->i:Lbkw;

    sget-object v4, Lbkw;->c:Lbkw;

    if-ne v0, v4, :cond_5

    :cond_2
    move v0, v2

    .line 3514
    :goto_2
    iget-object v4, v3, Ldad;->ak:Ldhm;

    sget-object v5, Ldhm;->b:Ldhm;

    if-eq v4, v5, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    .line 3516
    :cond_4
    if-eqz v1, :cond_6

    .line 3517
    sget-object v0, Lbfw;->a:Lbfw;

    .line 3520
    :goto_3
    iget-object v1, v3, Ldad;->f:Lbjp;

    const/16 v2, 0x663

    invoke-interface {v1, v0, v2}, Lbjp;->a(Lbfw;I)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 3512
    goto :goto_2

    .line 3517
    :cond_6
    sget-object v0, Lbfw;->c:Lbfw;

    goto :goto_3

    .line 3461
    :pswitch_2
    iget-object v0, v3, Ldad;->aj:Ljava/lang/String;

    .line 3525
    iget-object v1, v3, Ldad;->a:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 3526
    iget-object v2, v3, Ldad;->e:Leap;

    invoke-static {v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    .line 3527
    iget-object v2, v3, Ldad;->c:Laxq;

    .line 3528
    invoke-virtual {v2}, Laxq;->a()Lihb;

    move-result-object v2

    .line 3527
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Lihb;Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Ldad;->al:I

    goto :goto_0

    .line 3464
    :pswitch_3
    iget-object v0, v3, Ldad;->a:Lhpu;

    .line 3465
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iget-object v1, v3, Ldad;->aj:Ljava/lang/String;

    iget-object v2, v3, Ldad;->c:Laxq;

    .line 3466
    invoke-virtual {v2}, Laxq;->a()Lihb;

    move-result-object v2

    .line 3464
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;Lihb;)I

    .line 3467
    iget-object v0, v3, Ldad;->b:Lcau;

    invoke-interface {v0}, Lcau;->a()V

    goto/16 :goto_0

    .line 3442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
