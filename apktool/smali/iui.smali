.class public final Liui;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liui;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 693
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1698
    iput-object v0, p0, Liui;->a:Ljava/lang/String;

    .line 1699
    iput-object v0, p0, Liui;->b:Ljava/lang/String;

    .line 1700
    iput-object v0, p0, Liui;->c:Ljava/lang/String;

    .line 1701
    iput-object v0, p0, Liui;->d:Ljava/lang/String;

    .line 1702
    iput-object v0, p0, Liui;->e:Ljava/lang/String;

    .line 1703
    iput-object v0, p0, Liui;->f:Ljava/lang/Long;

    .line 1704
    iput-object v0, p0, Liui;->g:Ljava/lang/Long;

    .line 1705
    iput-object v0, p0, Liui;->eD:Llyd;

    .line 1706
    const/4 v0, -0x1

    iput v0, p0, Liui;->eE:I

    .line 695
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1776
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1777
    sparse-switch v0, :sswitch_data_0

    .line 1781
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1782
    :sswitch_0
    return-object p0

    .line 1787
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liui;->a:Ljava/lang/String;

    goto :goto_0

    .line 1791
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liui;->b:Ljava/lang/String;

    goto :goto_0

    .line 1795
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liui;->c:Ljava/lang/String;

    goto :goto_0

    .line 1799
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liui;->d:Ljava/lang/String;

    goto :goto_0

    .line 1803
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liui;->e:Ljava/lang/String;

    goto :goto_0

    .line 1807
    :sswitch_6
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Liui;->f:Ljava/lang/Long;

    goto :goto_0

    .line 1811
    :sswitch_7
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Liui;->g:Ljava/lang/Long;

    goto :goto_0

    .line 1777
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 713
    iget-object v0, p0, Liui;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 714
    const/4 v0, 0x1

    iget-object v1, p0, Liui;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 716
    :cond_0
    iget-object v0, p0, Liui;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 717
    const/4 v0, 0x2

    iget-object v1, p0, Liui;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 719
    :cond_1
    iget-object v0, p0, Liui;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 720
    const/4 v0, 0x3

    iget-object v1, p0, Liui;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 722
    :cond_2
    iget-object v0, p0, Liui;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 723
    const/4 v0, 0x4

    iget-object v1, p0, Liui;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 725
    :cond_3
    iget-object v0, p0, Liui;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 726
    const/4 v0, 0x5

    iget-object v1, p0, Liui;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 728
    :cond_4
    iget-object v0, p0, Liui;->f:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 729
    const/4 v0, 0x6

    iget-object v1, p0, Liui;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 731
    :cond_5
    iget-object v0, p0, Liui;->g:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 732
    const/4 v0, 0x7

    iget-object v1, p0, Liui;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 734
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 735
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 739
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 740
    iget-object v1, p0, Liui;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 741
    const/4 v1, 0x1

    iget-object v2, p0, Liui;->a:Ljava/lang/String;

    .line 742
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 744
    :cond_0
    iget-object v1, p0, Liui;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 745
    const/4 v1, 0x2

    iget-object v2, p0, Liui;->b:Ljava/lang/String;

    .line 746
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 748
    :cond_1
    iget-object v1, p0, Liui;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 749
    const/4 v1, 0x3

    iget-object v2, p0, Liui;->c:Ljava/lang/String;

    .line 750
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 752
    :cond_2
    iget-object v1, p0, Liui;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 753
    const/4 v1, 0x4

    iget-object v2, p0, Liui;->d:Ljava/lang/String;

    .line 754
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 756
    :cond_3
    iget-object v1, p0, Liui;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 757
    const/4 v1, 0x5

    iget-object v2, p0, Liui;->e:Ljava/lang/String;

    .line 758
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 760
    :cond_4
    iget-object v1, p0, Liui;->f:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 761
    const/4 v1, 0x6

    iget-object v2, p0, Liui;->f:Ljava/lang/Long;

    .line 762
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    :cond_5
    iget-object v1, p0, Liui;->g:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 765
    const/4 v1, 0x7

    iget-object v2, p0, Liui;->g:Ljava/lang/Long;

    .line 766
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 768
    :cond_6
    return v0
.end method
