.class public final Lleh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lleh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Llew;

.field public c:Lled;

.field public d:Lldt;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1858
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2863
    iput-object v0, p0, Lleh;->a:Ljava/lang/Integer;

    .line 2864
    iput-object v0, p0, Lleh;->b:Llew;

    .line 2865
    iput-object v0, p0, Lleh;->c:Lled;

    .line 2866
    iput-object v0, p0, Lleh;->d:Lldt;

    .line 2867
    iput-object v0, p0, Lleh;->e:Ljava/lang/Boolean;

    .line 2868
    iput-object v0, p0, Lleh;->eD:Llyd;

    .line 2869
    const/4 v0, -0x1

    iput v0, p0, Lleh;->eE:I

    .line 1860
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3925
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3926
    sparse-switch v0, :sswitch_data_0

    .line 3930
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3931
    :sswitch_0
    return-object p0

    .line 3936
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3937
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3957
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lleh;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3963
    :sswitch_2
    iget-object v0, p0, Lleh;->b:Llew;

    if-nez v0, :cond_1

    .line 3964
    new-instance v0, Llew;

    invoke-direct {v0}, Llew;-><init>()V

    iput-object v0, p0, Lleh;->b:Llew;

    .line 3966
    :cond_1
    iget-object v0, p0, Lleh;->b:Llew;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3970
    :sswitch_3
    iget-object v0, p0, Lleh;->c:Lled;

    if-nez v0, :cond_2

    .line 3971
    new-instance v0, Lled;

    invoke-direct {v0}, Lled;-><init>()V

    iput-object v0, p0, Lleh;->c:Lled;

    .line 3973
    :cond_2
    iget-object v0, p0, Lleh;->c:Lled;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3977
    :sswitch_4
    iget-object v0, p0, Lleh;->d:Lldt;

    if-nez v0, :cond_3

    .line 3978
    new-instance v0, Lldt;

    invoke-direct {v0}, Lldt;-><init>()V

    iput-object v0, p0, Lleh;->d:Lldt;

    .line 3980
    :cond_3
    iget-object v0, p0, Lleh;->d:Lldt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3984
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lleh;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 3926
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 3937
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
    .line 1876
    iget-object v0, p0, Lleh;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1877
    const/4 v0, 0x1

    iget-object v1, p0, Lleh;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1879
    :cond_0
    iget-object v0, p0, Lleh;->b:Llew;

    if-eqz v0, :cond_1

    .line 1880
    const/4 v0, 0x2

    iget-object v1, p0, Lleh;->b:Llew;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1882
    :cond_1
    iget-object v0, p0, Lleh;->c:Lled;

    if-eqz v0, :cond_2

    .line 1883
    const/4 v0, 0x3

    iget-object v1, p0, Lleh;->c:Lled;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1885
    :cond_2
    iget-object v0, p0, Lleh;->d:Lldt;

    if-eqz v0, :cond_3

    .line 1886
    const/4 v0, 0x4

    iget-object v1, p0, Lleh;->d:Lldt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1888
    :cond_3
    iget-object v0, p0, Lleh;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 1889
    const/4 v0, 0x5

    iget-object v1, p0, Lleh;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1891
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1892
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1896
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1897
    iget-object v1, p0, Lleh;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1898
    const/4 v1, 0x1

    iget-object v2, p0, Lleh;->a:Ljava/lang/Integer;

    .line 1899
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1901
    :cond_0
    iget-object v1, p0, Lleh;->b:Llew;

    if-eqz v1, :cond_1

    .line 1902
    const/4 v1, 0x2

    iget-object v2, p0, Lleh;->b:Llew;

    .line 1903
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1905
    :cond_1
    iget-object v1, p0, Lleh;->c:Lled;

    if-eqz v1, :cond_2

    .line 1906
    const/4 v1, 0x3

    iget-object v2, p0, Lleh;->c:Lled;

    .line 1907
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1909
    :cond_2
    iget-object v1, p0, Lleh;->d:Lldt;

    if-eqz v1, :cond_3

    .line 1910
    const/4 v1, 0x4

    iget-object v2, p0, Lleh;->d:Lldt;

    .line 1911
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1913
    :cond_3
    iget-object v1, p0, Lleh;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 1914
    const/4 v1, 0x5

    iget-object v2, p0, Lleh;->e:Ljava/lang/Boolean;

    .line 1915
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1915
    add-int/2addr v0, v1

    .line 1917
    :cond_4
    return v0
.end method
