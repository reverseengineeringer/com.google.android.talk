.class public final Llls;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llls;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Lllp;

.field public e:Lllr;

.field public f:Lllt;

.field public g:Lllq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3891
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4896
    iput-object v0, p0, Llls;->a:Ljava/lang/Integer;

    .line 4897
    iput-object v0, p0, Llls;->b:Ljava/lang/Integer;

    .line 4898
    iput-object v0, p0, Llls;->c:Ljava/lang/Integer;

    .line 4899
    iput-object v0, p0, Llls;->d:Lllp;

    .line 4900
    iput-object v0, p0, Llls;->e:Lllr;

    .line 4901
    iput-object v0, p0, Llls;->f:Lllt;

    .line 4902
    iput-object v0, p0, Llls;->g:Lllq;

    .line 4903
    iput-object v0, p0, Llls;->eD:Llyd;

    .line 4904
    const/4 v0, -0x1

    iput v0, p0, Llls;->eE:I

    .line 3893
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4974
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4975
    sparse-switch v0, :sswitch_data_0

    .line 4979
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4980
    :sswitch_0
    return-object p0

    .line 4985
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llls;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4989
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llls;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 4993
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4994
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5009
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llls;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 5015
    :sswitch_4
    iget-object v0, p0, Llls;->d:Lllp;

    if-nez v0, :cond_1

    .line 5016
    new-instance v0, Lllp;

    invoke-direct {v0}, Lllp;-><init>()V

    iput-object v0, p0, Llls;->d:Lllp;

    .line 5018
    :cond_1
    iget-object v0, p0, Llls;->d:Lllp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5022
    :sswitch_5
    iget-object v0, p0, Llls;->e:Lllr;

    if-nez v0, :cond_2

    .line 5023
    new-instance v0, Lllr;

    invoke-direct {v0}, Lllr;-><init>()V

    iput-object v0, p0, Llls;->e:Lllr;

    .line 5025
    :cond_2
    iget-object v0, p0, Llls;->e:Lllr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5029
    :sswitch_6
    iget-object v0, p0, Llls;->f:Lllt;

    if-nez v0, :cond_3

    .line 5030
    new-instance v0, Lllt;

    invoke-direct {v0}, Lllt;-><init>()V

    iput-object v0, p0, Llls;->f:Lllt;

    .line 5032
    :cond_3
    iget-object v0, p0, Llls;->f:Lllt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5036
    :sswitch_7
    iget-object v0, p0, Llls;->g:Lllq;

    if-nez v0, :cond_4

    .line 5037
    new-instance v0, Lllq;

    invoke-direct {v0}, Lllq;-><init>()V

    iput-object v0, p0, Llls;->g:Lllq;

    .line 5039
    :cond_4
    iget-object v0, p0, Llls;->g:Lllq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4975
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    .line 4994
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3911
    iget-object v0, p0, Llls;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3912
    const/4 v0, 0x1

    iget-object v1, p0, Llls;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3914
    :cond_0
    iget-object v0, p0, Llls;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3915
    const/4 v0, 0x2

    iget-object v1, p0, Llls;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3917
    :cond_1
    iget-object v0, p0, Llls;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 3918
    const/4 v0, 0x3

    iget-object v1, p0, Llls;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3920
    :cond_2
    iget-object v0, p0, Llls;->d:Lllp;

    if-eqz v0, :cond_3

    .line 3921
    const/4 v0, 0x4

    iget-object v1, p0, Llls;->d:Lllp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3923
    :cond_3
    iget-object v0, p0, Llls;->e:Lllr;

    if-eqz v0, :cond_4

    .line 3924
    const/4 v0, 0x5

    iget-object v1, p0, Llls;->e:Lllr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3926
    :cond_4
    iget-object v0, p0, Llls;->f:Lllt;

    if-eqz v0, :cond_5

    .line 3927
    const/4 v0, 0x6

    iget-object v1, p0, Llls;->f:Lllt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3929
    :cond_5
    iget-object v0, p0, Llls;->g:Lllq;

    if-eqz v0, :cond_6

    .line 3930
    const/4 v0, 0x7

    iget-object v1, p0, Llls;->g:Lllq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3932
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3933
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3937
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3938
    iget-object v1, p0, Llls;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3939
    const/4 v1, 0x1

    iget-object v2, p0, Llls;->a:Ljava/lang/Integer;

    .line 3940
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3942
    :cond_0
    iget-object v1, p0, Llls;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3943
    const/4 v1, 0x2

    iget-object v2, p0, Llls;->b:Ljava/lang/Integer;

    .line 3944
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3946
    :cond_1
    iget-object v1, p0, Llls;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 3947
    const/4 v1, 0x3

    iget-object v2, p0, Llls;->c:Ljava/lang/Integer;

    .line 3948
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3950
    :cond_2
    iget-object v1, p0, Llls;->d:Lllp;

    if-eqz v1, :cond_3

    .line 3951
    const/4 v1, 0x4

    iget-object v2, p0, Llls;->d:Lllp;

    .line 3952
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3954
    :cond_3
    iget-object v1, p0, Llls;->e:Lllr;

    if-eqz v1, :cond_4

    .line 3955
    const/4 v1, 0x5

    iget-object v2, p0, Llls;->e:Lllr;

    .line 3956
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3958
    :cond_4
    iget-object v1, p0, Llls;->f:Lllt;

    if-eqz v1, :cond_5

    .line 3959
    const/4 v1, 0x6

    iget-object v2, p0, Llls;->f:Lllt;

    .line 3960
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3962
    :cond_5
    iget-object v1, p0, Llls;->g:Lllq;

    if-eqz v1, :cond_6

    .line 3963
    const/4 v1, 0x7

    iget-object v2, p0, Llls;->g:Lllq;

    .line 3964
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3966
    :cond_6
    return v0
.end method
