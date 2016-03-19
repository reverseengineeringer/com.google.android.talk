.class public final Ljav;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljav;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljav;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3798
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4803
    iput-object v0, p0, Ljav;->a:Ljava/lang/Integer;

    .line 4804
    iput-object v0, p0, Ljav;->b:Ljava/lang/Float;

    .line 4805
    iput-object v0, p0, Ljav;->eD:Llyd;

    .line 4806
    const/4 v0, -0x1

    iput v0, p0, Ljav;->eE:I

    .line 3800
    return-void
.end method

.method public static d()[Ljav;
    .locals 2

    .prologue
    .line 3779
    sget-object v0, Ljav;->c:[Ljav;

    if-nez v0, :cond_1

    .line 3780
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3782
    :try_start_0
    sget-object v0, Ljav;->c:[Ljav;

    if-nez v0, :cond_0

    .line 3783
    const/4 v0, 0x0

    new-array v0, v0, [Ljav;

    sput-object v0, Ljav;->c:[Ljav;

    .line 3785
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3787
    :cond_1
    sget-object v0, Ljav;->c:[Ljav;

    return-object v0

    .line 3785
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5841
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5842
    sparse-switch v0, :sswitch_data_0

    .line 5846
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5847
    :sswitch_0
    return-object p0

    .line 5852
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5853
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5861
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljav;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 5867
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljav;->b:Ljava/lang/Float;

    goto :goto_0

    .line 5842
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch

    .line 5853
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 3813
    iget-object v0, p0, Ljav;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3814
    const/4 v0, 0x1

    iget-object v1, p0, Ljav;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3816
    :cond_0
    iget-object v0, p0, Ljav;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 3817
    const/4 v0, 0x2

    iget-object v1, p0, Ljav;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 3819
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3820
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3824
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3825
    iget-object v1, p0, Ljav;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3826
    const/4 v1, 0x1

    iget-object v2, p0, Ljav;->a:Ljava/lang/Integer;

    .line 3827
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3829
    :cond_0
    iget-object v1, p0, Ljav;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 3830
    const/4 v1, 0x2

    iget-object v2, p0, Ljav;->b:Ljava/lang/Float;

    .line 3831
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 5569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 3831
    add-int/2addr v0, v1

    .line 3833
    :cond_1
    return v0
.end method
