.class public final Lcap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1043
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 703
    iget-object v2, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getActivity()Lba;

    move-result-object v6

    .line 704
    packed-switch v0, :pswitch_data_0

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 706
    :pswitch_0
    iget-object v0, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 1252
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getFragmentManager()Lbg;

    move-result-object v2

    invoke-virtual {v2}, Lbg;->a()Lbz;

    move-result-object v2

    .line 1255
    iget-object v3, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->d:Ljava/lang/String;

    .line 2023
    new-instance v5, Lcde;

    invoke-direct {v5}, Lcde;-><init>()V

    .line 2026
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2027
    const-string v7, "name"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    invoke-virtual {v5, v6}, Lcde;->setArguments(Landroid/os/Bundle;)V

    .line 1257
    invoke-virtual {v5, v0, v4}, Lcde;->setTargetFragment(Lav;I)V

    .line 1258
    invoke-virtual {v5, v2, v1}, Lcde;->a(Lbz;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    :pswitch_1
    iget-object v0, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 2068
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a()V

    goto :goto_0

    .line 714
    :pswitch_2
    iget-object v0, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 3068
    iget-boolean v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->g:Z

    .line 714
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 4068
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    .line 714
    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 5068
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a:Lhpu;

    .line 716
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iget-object v1, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 6068
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    .line 717
    iget-object v1, v1, Lcyx;->b:Lczb;

    iget-object v1, v1, Lczb;->a:Ljava/lang/String;

    iget-object v2, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 7068
    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    .line 718
    iget-object v2, v2, Lcyx;->b:Lczb;

    iget-object v2, v2, Lczb;->b:Ljava/lang/String;

    iget-object v3, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 8068
    iget-object v3, v3, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    .line 719
    iget-object v3, v3, Lcyx;->e:Ljava/lang/String;

    .line 715
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 722
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->iM:I

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 9068
    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    .line 723
    iget-object v2, v2, Lcyx;->e:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 722
    invoke-virtual {v6, v0, v1}, Lba;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-static {v6, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 726
    iget-object v0, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 10068
    iput-boolean v4, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->g:Z

    .line 728
    iget-object v0, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 11068
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    .line 728
    if-eqz v0, :cond_1

    .line 729
    invoke-static {}, Lgw;->a()Lgw;

    move-result-object v0

    .line 730
    iget-object v1, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 12068
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    .line 730
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->ar:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 13068
    iget-object v5, v5, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    .line 731
    iget-object v5, v5, Lcyx;->e:Ljava/lang/String;

    sget-object v7, Lhh;->e:Lhg;

    invoke-virtual {v0, v5, v7}, Lgw;->a(Ljava/lang/String;Lhg;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 730
    invoke-virtual {v6, v2, v3}, Lba;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccw;->a:Ljava/lang/String;

    .line 734
    iget-object v0, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 14068
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    .line 734
    iget-object v0, v0, Lccw;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 15068
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    .line 735
    iget-object v0, v0, Lccw;->g:Landroid/view/View;

    sget v1, Laen;->gM:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 736
    iget-object v1, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 16068
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    .line 736
    iget-object v1, v1, Lccw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 739
    :cond_1
    const-string v0, "Babel"

    const-string v1, "no participants found when trying to unblock"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 743
    :cond_2
    iget-object v2, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 17210
    iget-object v0, v2, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    if-eqz v0, :cond_4

    .line 17211
    iget-object v0, v2, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    iget-object v0, v0, Lcyx;->e:Ljava/lang/String;

    invoke-static {v0}, Lezc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17213
    :goto_1
    iget v3, v2, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c:I

    if-ne v3, v5, :cond_3

    .line 17214
    iget-boolean v1, v2, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->h:Z

    if-eqz v1, :cond_5

    .line 17215
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->hK:I

    invoke-virtual {v2, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 17222
    :cond_3
    :goto_2
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->hO:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    .line 17224
    invoke-virtual {v2, v3, v5}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->hM:I

    .line 17226
    invoke-virtual {v2, v3}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->U:I

    .line 17227
    invoke-virtual {v2, v5}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Laal;->hS:I

    .line 17223
    invoke-static {v0, v1, v3, v5, v6}, Likt;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)Likt;

    move-result-object v0

    .line 17231
    invoke-virtual {v0, v2, v4}, Likt;->setTargetFragment(Lav;I)V

    .line 17232
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getFragmentManager()Lbg;

    move-result-object v1

    const-string v3, "block_user"

    invoke-virtual {v0, v1, v3}, Likt;->a(Lbg;Ljava/lang/String;)V

    .line 17233
    iget-object v0, v2, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    const/16 v1, 0x71a

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 17211
    goto :goto_1

    .line 17216
    :cond_5
    iget-boolean v1, v2, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->i:Z

    if-eqz v1, :cond_6

    .line 17217
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->hL:I

    invoke-virtual {v2, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 17219
    :cond_6
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->hN:I

    invoke-virtual {v2, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 748
    :pswitch_3
    iget-object v0, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->eH:I

    .line 749
    invoke-virtual {v6, v1}, Lba;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 18068
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b()Landroid/net/Uri;

    move-result-object v2

    .line 750
    iget-object v3, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 19068
    invoke-virtual {v3}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c()Landroid/net/Uri;

    move-result-object v3

    .line 751
    const/16 v4, 0x67

    const/4 v5, 0x2

    .line 748
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;II)V

    goto/16 :goto_0

    .line 755
    :pswitch_4
    iget-object v0, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->eE:I

    .line 756
    invoke-virtual {v6, v1}, Lba;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 20068
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e()Landroid/net/Uri;

    move-result-object v2

    .line 757
    iget-object v3, p0, Lcap;->a:Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;

    .line 21068
    invoke-virtual {v3}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->d()Landroid/net/Uri;

    move-result-object v3

    .line 758
    const/16 v4, 0x66

    .line 755
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;II)V

    goto/16 :goto_0

    .line 704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
