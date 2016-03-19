.class final Ldai;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldad;


# direct methods
.method constructor <init>(Ldad;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Ldai;->a:Ldad;

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILbfd;Ldwd;Leau;I)V
    .locals 7

    .prologue
    .line 536
    invoke-super/range {p0 .. p5}, Leap;->a(ILbfd;Ldwd;Leau;I)V

    .line 538
    iget-object v0, p0, Ldai;->a:Ldad;

    .line 1065
    iget v0, v0, Ldad;->al:I

    .line 538
    if-eq p1, v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 544
    :cond_0
    :try_start_0
    iget-object v0, p0, Ldai;->a:Ldad;

    invoke-virtual {v0}, Ldad;->getActivity()Lba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Ldai;->a:Ldad;

    .line 2065
    iget-object v0, v0, Ldad;->e:Leap;

    .line 561
    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    goto :goto_0

    .line 547
    :cond_1
    :try_start_1
    invoke-virtual {p4}, Leau;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 548
    sget-object v0, Ldhm;->e:Ldhm;

    iget-object v1, p0, Ldai;->a:Ldad;

    .line 3065
    iget-object v1, v1, Ldad;->ak:Ldhm;

    .line 548
    invoke-static {v0, v1}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 549
    sget-object v0, Ldhm;->f:Ldhm;

    iget-object v1, p0, Ldai;->a:Ldad;

    .line 4065
    iget-object v1, v1, Ldad;->ak:Ldhm;

    .line 549
    invoke-static {v0, v1}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Ldai;->a:Ldad;

    .line 5065
    iget-object v0, v0, Ldad;->b:Lcau;

    .line 550
    iget-object v1, p3, Ldwd;->a:Ljava/lang/String;

    iget v2, p3, Ldwd;->b:I

    iget-boolean v3, p3, Ldwd;->c:Z

    iget-object v4, p0, Ldai;->a:Ldad;

    .line 6065
    iget-object v4, v4, Ldad;->c:Laxq;

    .line 554
    invoke-virtual {v4}, Laxq;->a()Lihb;

    move-result-object v4

    .line 550
    invoke-interface {v0, v1, v2, v3, v4}, Lcau;->a(Ljava/lang/String;IZLihb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    :goto_1
    iget-object v0, p0, Ldai;->a:Ldad;

    .line 7065
    iget-object v0, v0, Ldad;->e:Leap;

    .line 561
    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    goto :goto_0

    .line 556
    :cond_2
    :try_start_2
    const-string v1, "Babel"

    .line 557
    invoke-virtual {p4}, Leau;->b()I

    move-result v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_3

    .line 558
    iget-object v0, p3, Ldwd;->a:Ljava/lang/String;

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x37

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "couldn\'t create conversation; error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 556
    invoke-static {v1, v0, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 561
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldai;->a:Ldad;

    .line 8065
    iget-object v1, v1, Ldad;->e:Leap;

    .line 561
    invoke-static {v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    throw v0

    .line 558
    :cond_3
    :try_start_3
    const-string v0, "NULL"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
