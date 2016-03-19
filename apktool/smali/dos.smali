.class public Ldos;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 716
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 717
    invoke-static {p1}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 718
    iput-object p1, p0, Ldos;->j:Ljava/lang/String;

    .line 719
    iput p2, p0, Ldos;->a:I

    .line 720
    iput p3, p0, Ldos;->b:I

    .line 721
    iput-object p4, p0, Ldos;->c:Ljava/lang/String;

    .line 722
    iput-object p5, p0, Ldos;->d:Ljava/util/List;

    .line 723
    iput-object p6, p0, Ldos;->k:Ljava/lang/String;

    .line 1730
    const/4 v1, 0x0

    .line 1731
    iget-object v0, p0, Ldos;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 1732
    iget-object v3, v0, Lcyx;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, v0, Lcyx;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1733
    const-string v0, "CCR invitee should not have empty fallback name."

    .line 1743
    :goto_0
    if-eqz v0, :cond_7

    .line 1744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1745
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    const-string v0, "Invitees: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    iget-object v0, p0, Ldos;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 1748
    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    const-string v1, "g:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcyx;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    const-string v1, "ch:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcyx;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    const-string v1, "ci:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcyx;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    const-string v1, "p:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v0, Lcyx;->c:Ljava/lang/String;

    .line 1769
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1757
    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    const-string v1, "fallback:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcyx;->g:Ljava/lang/String;

    .line 1760
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "unset"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1736
    :cond_1
    invoke-virtual {v0}, Lcyx;->b()Ljava/lang/String;

    move-result-object v0

    .line 1737
    if-eqz v0, :cond_0

    const-string v3, "g:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1738
    const-string v0, "CCR invitee gaiaId should not start with g:."

    goto/16 :goto_0

    .line 1775
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1776
    const/4 v6, 0x4

    if-lt v6, v5, :cond_3

    .line 1779
    const-string v1, "x"

    invoke-static {v1, v5}, Laal;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1782
    :cond_3
    const-string v6, "x"

    add-int/lit8 v7, v5, -0x4

    invoke-static {v6, v7}, Laal;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v5, -0x4

    .line 1783
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1760
    :cond_5
    const-string v0, "set"

    goto :goto_3

    .line 1763
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 726
    :cond_7
    return-void

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 710
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Ldos;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 712
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    const-string v0, "event_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 790
    const-string v0, "Babel_RequestWriter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    const-string v1, "Babel_RequestWriter"

    const-string v2, "ConversationRequest build protobuf: name="

    iget-object v0, p0, Ldos;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    :cond_0
    new-instance v5, Ljye;

    invoke-direct {v5}, Ljye;-><init>()V

    .line 795
    iget-object v0, p0, Ldos;->h:Lfak;

    invoke-static {p1, p2, p3, v0}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v5, Ljye;->requestHeader:Lkdo;

    .line 797
    iget v0, p0, Ldos;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Ljye;->a:Ljava/lang/Integer;

    .line 798
    iget-object v0, p0, Ldos;->j:Ljava/lang/String;

    .line 799
    invoke-static {v0}, Lbfz;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Ljye;->c:Ljava/lang/Long;

    .line 803
    iget-object v0, p0, Ldos;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Ldos;->c:Ljava/lang/String;

    iput-object v0, v5, Ljye;->d:Ljava/lang/String;

    .line 807
    :cond_1
    iget-object v0, p0, Ldos;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldos;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 808
    :goto_1
    if-lez v0, :cond_b

    .line 809
    new-array v0, v0, [Lkbi;

    iput-object v0, v5, Ljye;->f:[Lkbi;

    .line 811
    iget-object v0, p0, Ldos;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 812
    iget v1, p0, Ldos;->b:I

    invoke-static {v0, v1}, Laal;->a(Lcyx;I)Lkbi;

    move-result-object v7

    .line 816
    iget-object v1, v0, Lcyx;->B:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 817
    iget-object v1, v0, Lcyx;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    .line 819
    :goto_3
    iget-object v4, v0, Lcyx;->A:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 820
    iget-object v4, v0, Lcyx;->A:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 823
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 825
    if-lez v1, :cond_8

    .line 826
    new-array v1, v1, [Lkbj;

    iput-object v1, v7, Lkbi;->f:[Lkbj;

    .line 828
    iget-object v1, v0, Lcyx;->B:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 829
    iget-object v1, v0, Lcyx;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v3

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 830
    iget-object v9, v7, Lkbi;->f:[Lkbj;

    new-instance v10, Lkbj;

    invoke-direct {v10}, Lkbj;-><init>()V

    aput-object v10, v9, v4

    .line 831
    iget-object v9, v7, Lkbi;->f:[Lkbj;

    aget-object v9, v9, v4

    new-instance v10, Lkbk;

    invoke-direct {v10}, Lkbk;-><init>()V

    iput-object v10, v9, Lkbj;->b:Lkbk;

    .line 832
    iget-object v9, v7, Lkbi;->f:[Lkbj;

    aget-object v9, v9, v4

    iget-object v9, v9, Lkbj;->b:Lkbk;

    iput-object v1, v9, Lkbk;->a:Ljava/lang/String;

    .line 833
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    .line 834
    goto :goto_4

    .line 791
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 807
    goto :goto_1

    :cond_5
    move v4, v3

    .line 836
    :cond_6
    iget-object v1, v0, Lcyx;->A:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 837
    iget-object v1, v0, Lcyx;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 838
    iget-object v9, v7, Lkbi;->f:[Lkbj;

    new-instance v10, Lkbj;

    invoke-direct {v10}, Lkbj;-><init>()V

    aput-object v10, v9, v4

    .line 839
    iget-object v9, v7, Lkbi;->f:[Lkbj;

    aget-object v9, v9, v4

    new-instance v10, Lkbm;

    invoke-direct {v10}, Lkbm;-><init>()V

    iput-object v10, v9, Lkbj;->a:Lkbm;

    .line 840
    iget-object v9, v7, Lkbi;->f:[Lkbj;

    aget-object v9, v9, v4

    iget-object v9, v9, Lkbj;->a:Lkbm;

    new-instance v10, Llcf;

    invoke-direct {v10}, Llcf;-><init>()V

    iput-object v10, v9, Lkbm;->a:Llcf;

    .line 841
    iget-object v9, v7, Lkbi;->f:[Lkbj;

    aget-object v9, v9, v4

    iget-object v9, v9, Lkbj;->a:Lkbm;

    iget-object v9, v9, Lkbm;->a:Llcf;

    iput-object v1, v9, Llcf;->a:Ljava/lang/String;

    .line 842
    add-int/lit8 v4, v4, 0x1

    .line 843
    goto :goto_5

    .line 845
    :cond_7
    iget-object v1, v7, Lkbi;->f:[Lkbj;

    new-instance v8, Lkbj;

    invoke-direct {v8}, Lkbj;-><init>()V

    aput-object v8, v1, v4

    .line 846
    iget-object v1, v7, Lkbi;->f:[Lkbj;

    aget-object v1, v1, v4

    new-instance v8, Lkbl;

    invoke-direct {v8}, Lkbl;-><init>()V

    iput-object v8, v1, Lkbj;->c:Lkbl;

    .line 847
    iget-object v1, v0, Lcyx;->C:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 848
    iget-object v1, v7, Lkbi;->f:[Lkbj;

    aget-object v1, v1, v4

    iget-object v1, v1, Lkbj;->c:Lkbl;

    iget-object v0, v0, Lcyx;->C:Ljava/lang/String;

    iput-object v0, v1, Lkbl;->a:Ljava/lang/String;

    .line 858
    :cond_8
    :goto_6
    iget-object v0, v5, Ljye;->f:[Lkbi;

    aput-object v7, v0, v2

    .line 859
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 860
    goto/16 :goto_2

    .line 849
    :cond_9
    iget-object v1, v0, Lcyx;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 850
    iget-object v1, v7, Lkbi;->f:[Lkbj;

    aget-object v1, v1, v4

    iget-object v1, v1, Lkbj;->c:Lkbl;

    iget-object v0, v0, Lcyx;->e:Ljava/lang/String;

    iput-object v0, v1, Lkbl;->a:Ljava/lang/String;

    goto :goto_6

    .line 853
    :cond_a
    iget-object v0, v7, Lkbi;->f:[Lkbj;

    aget-object v0, v0, v4

    iget-object v0, v0, Lkbj;->c:Lkbl;

    const-string v1, "unknown person"

    iput-object v1, v0, Lkbl;->a:Ljava/lang/String;

    goto :goto_6

    .line 863
    :cond_b
    iget-object v0, p0, Ldos;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 864
    new-instance v0, Lkbf;

    invoke-direct {v0}, Lkbf;-><init>()V

    .line 865
    iget-object v1, p0, Ldos;->k:Ljava/lang/String;

    iput-object v1, v0, Lkbf;->a:Ljava/lang/String;

    .line 866
    iput-object v0, v5, Ljye;->h:Lkbf;

    .line 868
    :cond_c
    return-object v5

    :cond_d
    move v1, v3

    goto/16 :goto_3
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 2

    .prologue
    .line 889
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 891
    :goto_0
    iget-object v1, p0, Ldos;->j:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;Z)I

    .line 892
    return-void

    .line 889
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;II)Lcom/google/api/client/http/HttpContent;
    .locals 2

    .prologue
    .line 874
    invoke-virtual {p0, p1, p2, p3}, Ldos;->a(Ljava/lang/String;II)Llyi;

    move-result-object v0

    .line 875
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0}, Llyi;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldos;->i:Ljava/lang/String;

    .line 878
    :cond_0
    new-instance v1, Ldnd;

    invoke-direct {v1, v0}, Ldnd;-><init>(Llyi;)V

    return-object v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    const-string v0, "conversations/createconversation"

    return-object v0
.end method
