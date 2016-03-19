.class final Ldbs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lck",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldbh;


# direct methods
.method constructor <init>(Ldbh;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Ldbs;->a:Ldbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 653
    packed-switch p1, :pswitch_data_0

    .line 689
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 655
    :pswitch_0
    iget-object v0, p0, Ldbs;->a:Ldbh;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1100
    iput-wide v2, v0, Ldbh;->a:J

    .line 656
    sget-object v0, Lctr;->d:Landroid/net/Uri;

    .line 657
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 658
    const-string v0, "account_id"

    iget-object v1, p0, Ldbs;->a:Ldbh;

    .line 2100
    iget-object v1, v1, Ldbh;->c:Lhpu;

    .line 659
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 660
    const-string v0, "conversation_type"

    iget-object v1, p0, Ldbs;->a:Ldbh;

    .line 3100
    iget-object v1, v1, Ldbh;->h:Lbkw;

    .line 661
    invoke-virtual {v1}, Lbkw;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 662
    const-string v0, "is_frequent"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 664
    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 4100
    iget-object v0, v0, Ldbh;->g:Laxq;

    .line 664
    invoke-virtual {v0}, Laxq;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    const-string v0, "query"

    iget-object v1, p0, Ldbs;->a:Ldbh;

    .line 5100
    iget-object v1, v1, Ldbh;->g:Laxq;

    .line 666
    invoke-virtual {v1}, Laxq;->g()Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 668
    :cond_0
    new-instance v0, Lez;

    iget-object v1, p0, Ldbs;->a:Ldbh;

    invoke-virtual {v1}, Ldbh;->getActivity()Lba;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lctr;->g:[Ljava/lang/String;

    const-string v6, "UPPER(display_name)"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lez;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :goto_0
    return-object v0

    .line 673
    :pswitch_1
    iget-object v0, p0, Ldbs;->a:Ldbh;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 6100
    iput-wide v2, v0, Ldbh;->b:J

    .line 674
    sget-object v0, Lctr;->d:Landroid/net/Uri;

    .line 675
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 676
    const-string v0, "account_id"

    iget-object v1, p0, Ldbs;->a:Ldbh;

    .line 7100
    iget-object v1, v1, Ldbh;->c:Lhpu;

    .line 677
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 678
    const-string v0, "conversation_type"

    iget-object v1, p0, Ldbs;->a:Ldbh;

    .line 8100
    iget-object v1, v1, Ldbh;->h:Lbkw;

    .line 679
    invoke-virtual {v1}, Lbkw;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 680
    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 9100
    iget-object v0, v0, Ldbh;->g:Laxq;

    .line 680
    invoke-virtual {v0}, Laxq;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 681
    const-string v0, "query"

    iget-object v1, p0, Ldbs;->a:Ldbh;

    .line 10100
    iget-object v1, v1, Ldbh;->g:Laxq;

    .line 682
    invoke-virtual {v1}, Laxq;->g()Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 684
    :cond_1
    new-instance v0, Lez;

    iget-object v1, p0, Ldbs;->a:Ldbh;

    invoke-virtual {v1}, Ldbh;->getActivity()Lba;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lctr;->g:[Ljava/lang/String;

    const-string v6, "UPPER(display_name)"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lez;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v1, 0x0

    .line 650
    check-cast p2, Landroid/database/Cursor;

    .line 13695
    iget-object v2, p0, Ldbs;->a:Ldbh;

    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 14100
    iget-object v0, v0, Ldbh;->f:Lbfd;

    .line 13695
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 15100
    iget-object v0, v0, Ldbh;->f:Lbfd;

    .line 13695
    invoke-virtual {v0}, Lbfd;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 16100
    :goto_0
    iput-boolean v0, v2, Ldbh;->am:Z

    .line 13697
    invoke-virtual {p1}, Lfe;->o()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 13719
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lfe;->o()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unknown loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    move v0, v1

    .line 13695
    goto :goto_0

    .line 13699
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 17100
    iget-wide v4, v0, Ldbh;->a:J

    .line 13699
    sub-long/2addr v2, v4

    .line 13700
    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    .line 13701
    const-string v0, "Babel"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x35

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Frequent contacts loader took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13703
    :cond_2
    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 18100
    iget-object v0, v0, Ldbh;->context:Lill;

    .line 13703
    sget v1, Laen;->jw:I

    invoke-virtual {v0, v1}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13705
    new-instance v1, Lcts;

    invoke-direct {v1, v0, p2}, Lcts;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 13707
    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 19100
    iget-object v0, v0, Ldbh;->d:Ldas;

    .line 13707
    invoke-virtual {v0, v1}, Ldas;->a(Lbec;)V

    .line 13722
    :goto_1
    iget-object v0, p0, Ldbs;->a:Ldbh;

    iget-object v1, p0, Ldbs;->a:Ldbh;

    invoke-virtual {v1}, Ldbh;->getView()Landroid/view/View;

    move-result-object v1

    .line 23100
    invoke-virtual {v0, v1}, Ldbh;->a(Landroid/view/View;)V

    .line 650
    return-void

    .line 13710
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 20100
    iget-wide v4, v0, Ldbh;->b:J

    .line 13710
    sub-long/2addr v2, v4

    .line 13711
    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    .line 13712
    const-string v0, "Babel"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x33

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Merged contacts loader took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13714
    :cond_3
    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 21100
    iget-object v0, v0, Ldbh;->context:Lill;

    .line 13714
    sget v1, Laen;->jB:I

    invoke-virtual {v0, v1}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13715
    new-instance v1, Lcts;

    invoke-direct {v1, v0, p2}, Lcts;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 13716
    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 22100
    iget-object v0, v0, Ldbh;->d:Ldas;

    .line 13716
    invoke-virtual {v0, v1}, Ldas;->b(Lbec;)V

    goto :goto_1

    .line 13697
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoaderReset(Lfe;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 731
    invoke-virtual {p1}, Lfe;->o()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 739
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lfe;->o()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unknown loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 733
    :pswitch_0
    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 11100
    iget-object v0, v0, Ldbh;->d:Ldas;

    .line 733
    invoke-virtual {v0, v1}, Ldas;->a(Lbec;)V

    .line 741
    :goto_0
    iget-object v0, p0, Ldbs;->a:Ldbh;

    iget-object v1, p0, Ldbs;->a:Ldbh;

    invoke-virtual {v1}, Ldbh;->getView()Landroid/view/View;

    move-result-object v1

    .line 13100
    invoke-virtual {v0, v1}, Ldbh;->a(Landroid/view/View;)V

    .line 742
    return-void

    .line 736
    :pswitch_1
    iget-object v0, p0, Ldbs;->a:Ldbh;

    .line 12100
    iget-object v0, v0, Ldbh;->d:Ldas;

    .line 736
    invoke-virtual {v0, v1}, Ldas;->b(Lbec;)V

    goto :goto_0

    .line 731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
