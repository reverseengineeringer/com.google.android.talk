.class public final Llva;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llva;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;

.field public e:Ljava/lang/Float;

.field public f:Ljava/lang/Float;

.field public g:Ljava/lang/Float;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 752
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1757
    iput-object v0, p0, Llva;->a:Ljava/lang/Float;

    .line 1758
    iput-object v0, p0, Llva;->b:Ljava/lang/Float;

    .line 1759
    iput-object v0, p0, Llva;->c:Ljava/lang/Float;

    .line 1760
    iput-object v0, p0, Llva;->d:Ljava/lang/Float;

    .line 1761
    iput-object v0, p0, Llva;->e:Ljava/lang/Float;

    .line 1762
    iput-object v0, p0, Llva;->f:Ljava/lang/Float;

    .line 1763
    iput-object v0, p0, Llva;->g:Ljava/lang/Float;

    .line 1764
    iput-object v0, p0, Llva;->h:Ljava/lang/Float;

    .line 1765
    iput-object v0, p0, Llva;->i:Ljava/lang/Float;

    .line 1766
    iput-object v0, p0, Llva;->eD:Llyd;

    .line 1767
    const/4 v0, -0x1

    iput v0, p0, Llva;->eE:I

    .line 754
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 10815
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10816
    sparse-switch v0, :sswitch_data_0

    .line 10820
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10821
    :sswitch_0
    return-object p0

    .line 10826
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llva;->a:Ljava/lang/Float;

    goto :goto_0

    .line 10830
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llva;->b:Ljava/lang/Float;

    goto :goto_0

    .line 10834
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llva;->c:Ljava/lang/Float;

    goto :goto_0

    .line 10838
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llva;->d:Ljava/lang/Float;

    goto :goto_0

    .line 10842
    :sswitch_5
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llva;->e:Ljava/lang/Float;

    goto :goto_0

    .line 10846
    :sswitch_6
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llva;->f:Ljava/lang/Float;

    goto :goto_0

    .line 10850
    :sswitch_7
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llva;->g:Ljava/lang/Float;

    goto :goto_0

    .line 10854
    :sswitch_8
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llva;->h:Ljava/lang/Float;

    goto :goto_0

    .line 10858
    :sswitch_9
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llva;->i:Ljava/lang/Float;

    goto :goto_0

    .line 10816
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 774
    const/4 v0, 0x1

    iget-object v1, p0, Llva;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 775
    const/4 v0, 0x2

    iget-object v1, p0, Llva;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 776
    const/4 v0, 0x3

    iget-object v1, p0, Llva;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 777
    const/4 v0, 0x4

    iget-object v1, p0, Llva;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 778
    const/4 v0, 0x5

    iget-object v1, p0, Llva;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 779
    const/4 v0, 0x6

    iget-object v1, p0, Llva;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 780
    const/4 v0, 0x7

    iget-object v1, p0, Llva;->g:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 781
    const/16 v0, 0x8

    iget-object v1, p0, Llva;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 782
    const/16 v0, 0x9

    iget-object v1, p0, Llva;->i:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 783
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 784
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 788
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 789
    const/4 v1, 0x1

    iget-object v2, p0, Llva;->a:Ljava/lang/Float;

    .line 790
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 790
    add-int/2addr v0, v1

    .line 791
    const/4 v1, 0x2

    iget-object v2, p0, Llva;->b:Ljava/lang/Float;

    .line 792
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 792
    add-int/2addr v0, v1

    .line 793
    const/4 v1, 0x3

    iget-object v2, p0, Llva;->c:Ljava/lang/Float;

    .line 794
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 794
    add-int/2addr v0, v1

    .line 795
    const/4 v1, 0x4

    iget-object v2, p0, Llva;->d:Ljava/lang/Float;

    .line 796
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 5569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 796
    add-int/2addr v0, v1

    .line 797
    const/4 v1, 0x5

    iget-object v2, p0, Llva;->e:Ljava/lang/Float;

    .line 798
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 6569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 798
    add-int/2addr v0, v1

    .line 799
    const/4 v1, 0x6

    iget-object v2, p0, Llva;->f:Ljava/lang/Float;

    .line 800
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 7569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 800
    add-int/2addr v0, v1

    .line 801
    const/4 v1, 0x7

    iget-object v2, p0, Llva;->g:Ljava/lang/Float;

    .line 802
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 8569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 802
    add-int/2addr v0, v1

    .line 803
    const/16 v1, 0x8

    iget-object v2, p0, Llva;->h:Ljava/lang/Float;

    .line 804
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 9569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 804
    add-int/2addr v0, v1

    .line 805
    const/16 v1, 0x9

    iget-object v2, p0, Llva;->i:Ljava/lang/Float;

    .line 806
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 10569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 806
    add-int/2addr v0, v1

    .line 807
    return v0
.end method
