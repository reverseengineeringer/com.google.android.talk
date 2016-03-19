.class public final Leey;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;)V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 564
    iput-object p1, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    .line 565
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 570
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 571
    iget-object v0, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leez;->a(Landroid/content/Context;)Leez;

    move-result-object v0

    iget-object v1, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-virtual {v0, v1}, Leez;->a(Leer;)V

    .line 1208
    sget-boolean v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    .line 573
    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    const-string v1, "MSG_LOAD"

    .line 2208
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15208
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    .line 652
    if-eqz v0, :cond_1

    .line 653
    const-string v0, "Babel_RequestWriter"

    iget-object v1, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    const-string v2, "Looper release"

    .line 16208
    invoke-virtual {v1, v2}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    :cond_1
    iget-object v0, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->d()V

    .line 656
    :goto_1
    return-void

    .line 577
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 578
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 579
    if-eqz v6, :cond_11

    .line 580
    const-string v0, "account_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 581
    iget-object v0, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    .line 582
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leez;->a(Landroid/content/Context;)Leez;

    move-result-object v0

    .line 581
    invoke-static {v6, v0, v2}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Landroid/os/Bundle;Leez;I)Lcwf;

    move-result-object v3

    .line 585
    if-eqz v3, :cond_a

    .line 586
    iget-object v0, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->f()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 587
    invoke-interface {v0, v2}, Lhpz;->c(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 588
    const-string v0, "Babel_RequestWriter"

    iget-object v1, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3208
    invoke-virtual {v1, v2}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 588
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4208
    sget-boolean v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    .line 652
    if-eqz v0, :cond_3

    .line 653
    const-string v0, "Babel_RequestWriter"

    iget-object v1, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    const-string v2, "Looper release"

    .line 5208
    invoke-virtual {v1, v2}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    :cond_3
    iget-object v0, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->d()V

    goto :goto_1

    .line 592
    :cond_4
    :try_start_2
    const-string v0, "server_request"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 593
    iget-object v0, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leez;->a(Landroid/content/Context;)Leez;

    move-result-object v0

    .line 594
    invoke-virtual {v0, v3}, Leez;->b(Lcwf;)J

    move-result-wide v0

    .line 6208
    sget-boolean v4, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    .line 595
    if-eqz v4, :cond_5

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x38

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Handling EXTRA_WRITABLE_REQUEST for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 600
    :cond_5
    invoke-virtual {v3}, Lcwf;->a()Lcwi;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 6663
    instance-of v1, v0, Lecg;

    if-eqz v1, :cond_6

    .line 6666
    check-cast v0, Lecg;

    .line 6667
    invoke-virtual {v0}, Lecg;->f()Leff;

    move-result-object v0

    .line 6668
    instance-of v1, v0, Ldpo;

    if-eqz v1, :cond_9

    .line 6669
    check-cast v0, Ldpo;

    .line 6670
    iget-object v1, v0, Ldpo;->j:Ljava/lang/String;

    .line 6671
    iget-object v0, v0, Ldpo;->c:Ljava/lang/String;

    .line 7219
    :goto_2
    new-instance v6, Lcsn;

    .line 8040
    invoke-direct {v6}, Lcsn;-><init>()V

    .line 6681
    invoke-virtual {v6, v1}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v1

    .line 6682
    invoke-virtual {v1, v0}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v0

    .line 6683
    const/16 v1, 0xa

    const/16 v6, 0xca

    .line 6687
    invoke-virtual {v0, v6}, Lcsn;->a(I)Lcsn;

    move-result-object v6

    .line 6683
    invoke-static {v2, v4, v5, v1, v6}, Laen;->a(IJILcsn;)V

    .line 6690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v1, 0xa

    const/16 v6, 0xcb

    .line 6692
    invoke-virtual {v0, v6}, Lcsn;->a(I)Lcsn;

    move-result-object v0

    .line 6688
    invoke-static {v2, v4, v5, v1, v0}, Laen;->a(IJILcsn;)V

    .line 601
    :cond_6
    iget-object v0, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Lcwf;)V

    .line 13208
    :cond_7
    :goto_3
    sget-boolean v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    .line 645
    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    const-string v1, "MSG_INTENT"

    .line 14208
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 652
    :catchall_0
    move-exception v0

    .line 17208
    sget-boolean v1, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    .line 652
    if-eqz v1, :cond_8

    .line 653
    const-string v1, "Babel_RequestWriter"

    iget-object v2, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    const-string v3, "Looper release"

    .line 18208
    invoke-virtual {v2, v3}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 653
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    :cond_8
    iget-object v1, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->d()V

    throw v0

    .line 6672
    :cond_9
    :try_start_3
    instance-of v1, v0, Lbvx;

    if-eqz v1, :cond_6

    .line 6673
    check-cast v0, Lbvx;

    .line 6675
    invoke-virtual {v0}, Lbvx;->a()Ljava/lang/String;

    move-result-object v1

    .line 6676
    invoke-virtual {v0}, Lbvx;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 602
    :cond_a
    const-string v0, "cancel_request"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 603
    const-string v0, "cancel_request"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8208
    sget-boolean v1, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    .line 604
    if-eqz v1, :cond_b

    .line 605
    const-string v1, "Handling EXTRA_CANCEL_STRING for "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 607
    :cond_b
    :goto_4
    iget-object v1, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    const-string v2, "cancel_class"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9208
    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 605
    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 608
    :cond_d
    const-string v0, "sms_send_result"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 609
    const-string v0, "sms_request_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 10208
    sget-boolean v2, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    .line 610
    if-eqz v2, :cond_e

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x37

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Handling EXTRA_SMS_SEND_RESULT for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 613
    :cond_e
    const-string v2, "sms_send_result"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lenw;->a(JI)V

    goto/16 :goto_3

    .line 614
    :cond_f
    const-string v0, "mms_sent_result"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 615
    iget-object v0, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Leni;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leni;

    .line 617
    const-string v0, "mms_request_id"

    const-wide/16 v2, -0x1

    .line 618
    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "mms_sent_result"

    .line 619
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "mms_sent_http_status"

    .line 620
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "mms_sent_response_data"

    .line 621
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 617
    invoke-virtual/range {v1 .. v6}, Leni;->a(JII[B)V

    goto/16 :goto_3

    .line 622
    :cond_10
    const-string v0, "mms_download_result"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 623
    iget-object v0, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lenb;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lenb;

    .line 625
    const-string v1, "mms_request_id"

    const-wide/16 v2, -0x1

    .line 626
    invoke-virtual {v6, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v1, "mms_download_result"

    .line 627
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "mms_download_http_status"

    .line 628
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 625
    invoke-virtual {v0, v2, v3, v1, v4}, Lenb;->a(JII)V

    goto/16 :goto_3

    .line 633
    :cond_11
    iget-object v1, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    .line 11208
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->j()Z

    .line 634
    const-string v1, "backoff_period"

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 12208
    sget-boolean v2, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    .line 636
    if-eqz v2, :cond_12

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "RequestWriter.handleMessage. resumeAllQueues "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 643
    :cond_12
    iget-object v2, p0, Leey;->a:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method
