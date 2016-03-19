.class final Lbnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbmx;

.field private b:Ljava/lang/CharSequence;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lbmx;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lbnd;->a:Lbmx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lbnd;->b:Ljava/lang/CharSequence;

    .line 79
    iput p2, p0, Lbnd;->c:I

    .line 80
    iput p3, p0, Lbnd;->d:I

    .line 81
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1388

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 85
    iget-object v3, p0, Lbnd;->a:Lbmx;

    iget-object v4, p0, Lbnd;->b:Ljava/lang/CharSequence;

    iget v2, p0, Lbnd;->c:I

    iget v5, p0, Lbnd;->d:I

    .line 1528
    iget-object v6, v3, Lbmx;->h:Lbjc;

    if-eqz v6, :cond_0

    iget-object v6, v3, Lbmx;->i:Lbjb;

    if-nez v6, :cond_3

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lbnd;->a:Lbmx;

    invoke-virtual {v0}, Lbmx;->a()V

    .line 87
    iget-object v0, p0, Lbnd;->a:Lbmx;

    .line 2384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2385
    iget-object v4, v0, Lbmx;->b:Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;

    invoke-virtual {v4}, Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2386
    iget v5, v0, Lbmx;->d:I

    packed-switch v5, :pswitch_data_0

    .line 2411
    :cond_1
    :goto_1
    iget v4, v0, Lbmx;->d:I

    if-ne v4, v1, :cond_2

    .line 2412
    iget-object v1, v0, Lbmx;->j:Ljava/lang/Runnable;

    .line 3089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2413
    iget-object v1, v0, Lbmx;->j:Ljava/lang/Runnable;

    invoke-static {v1, v10, v11}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 2414
    iput-wide v2, v0, Lbmx;->e:J

    .line 88
    :cond_2
    return-void

    .line 1531
    :cond_3
    iget-object v6, v3, Lbmx;->c:Lbnc;

    if-eqz v6, :cond_0

    iget-object v6, v3, Lbmx;->i:Lbjb;

    iget v6, v6, Lbjb;->b:I

    .line 1532
    invoke-static {v6}, Laal;->f(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1535
    iget-object v6, v3, Lbmx;->g:Leoo;

    invoke-virtual {v6}, Leoo;->c()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1539
    if-le v2, v5, :cond_7

    move v2, v1

    .line 1540
    :goto_2
    if-eqz v2, :cond_0

    .line 1545
    :cond_4
    invoke-static {v4, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    .line 1552
    aget v4, v2, v0

    .line 1553
    aget v5, v2, v8

    .line 1555
    invoke-static {}, Lemy;->a()Laei;

    move-result-object v6

    invoke-virtual {v6}, Laei;->p()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1556
    invoke-static {}, Lemy;->a()Laei;

    move-result-object v6

    invoke-virtual {v6}, Laei;->q()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1560
    iget-object v6, v3, Lbmx;->g:Leoo;

    if-le v4, v1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v6, v0}, Leoo;->b(Z)V

    .line 1567
    :goto_3
    invoke-static {}, Lemy;->a()Laei;

    move-result-object v0

    invoke-virtual {v0}, Laei;->c()I

    move-result v0

    .line 1568
    if-lez v0, :cond_0

    .line 1569
    aget v2, v2, v1

    .line 1581
    add-int v4, v2, v5

    const/16 v5, 0x8c

    if-ge v4, v5, :cond_6

    .line 1582
    div-int/lit8 v0, v0, 0x2

    .line 1584
    :cond_6
    if-le v2, v0, :cond_0

    .line 1585
    iget-object v0, v3, Lbmx;->g:Leoo;

    invoke-virtual {v0, v1}, Leoo;->b(Z)V

    goto/16 :goto_0

    :cond_7
    move v2, v0

    .line 1539
    goto :goto_2

    .line 1562
    :cond_8
    invoke-static {}, Lemy;->a()Laei;

    move-result-object v6

    invoke-virtual {v6}, Laei;->b()I

    move-result v6

    .line 1563
    iget-object v7, v3, Lbmx;->g:Leoo;

    if-lez v6, :cond_9

    if-le v4, v6, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {v7, v0}, Leoo;->b(Z)V

    goto :goto_3

    .line 2388
    :pswitch_0
    if-lez v4, :cond_1

    .line 2389
    iput v1, v0, Lbmx;->d:I

    .line 2390
    iget v4, v0, Lbmx;->d:I

    invoke-virtual {v0, v4}, Lbmx;->a(I)V

    goto/16 :goto_1

    .line 2394
    :pswitch_1
    if-nez v4, :cond_a

    .line 2395
    iput v9, v0, Lbmx;->d:I

    goto/16 :goto_1

    .line 2397
    :cond_a
    iput v1, v0, Lbmx;->d:I

    .line 2398
    iget v4, v0, Lbmx;->d:I

    invoke-virtual {v0, v4}, Lbmx;->a(I)V

    goto/16 :goto_1

    .line 2402
    :pswitch_2
    if-nez v4, :cond_b

    .line 2403
    iput v9, v0, Lbmx;->d:I

    .line 2404
    iget v4, v0, Lbmx;->d:I

    invoke-virtual {v0, v4}, Lbmx;->a(I)V

    goto/16 :goto_1

    .line 2405
    :cond_b
    iget-wide v4, v0, Lbmx;->e:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_1

    .line 2406
    iput v8, v0, Lbmx;->d:I

    .line 2407
    iget v4, v0, Lbmx;->d:I

    invoke-virtual {v0, v4}, Lbmx;->a(I)V

    goto/16 :goto_1

    .line 2386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
