.class public final Lkia;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkia;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/String;

.field public d:Lkii;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2946
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3951
    iput-object v0, p0, Lkia;->responseHeader:Lkdp;

    .line 3952
    iput-object v0, p0, Lkia;->a:Ljava/lang/String;

    .line 3953
    iput-object v0, p0, Lkia;->b:Ljava/lang/Integer;

    .line 3954
    iput-object v0, p0, Lkia;->c:Ljava/lang/String;

    .line 3955
    iput-object v0, p0, Lkia;->d:Lkii;

    .line 3956
    iput-object v0, p0, Lkia;->eD:Llyd;

    .line 3957
    const/4 v0, -0x1

    iput v0, p0, Lkia;->eE:I

    .line 2948
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4013
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4014
    sparse-switch v0, :sswitch_data_0

    .line 4018
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4019
    :sswitch_0
    return-object p0

    .line 4024
    :sswitch_1
    iget-object v0, p0, Lkia;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 4025
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkia;->responseHeader:Lkdp;

    .line 4027
    :cond_1
    iget-object v0, p0, Lkia;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4031
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkia;->a:Ljava/lang/String;

    goto :goto_0

    .line 4035
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4036
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4040
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkia;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 4046
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkia;->c:Ljava/lang/String;

    goto :goto_0

    .line 4050
    :sswitch_5
    iget-object v0, p0, Lkia;->d:Lkii;

    if-nez v0, :cond_2

    .line 4051
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkia;->d:Lkii;

    .line 4053
    :cond_2
    iget-object v0, p0, Lkia;->d:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4014
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 4036
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2964
    iget-object v0, p0, Lkia;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 2965
    const/4 v0, 0x1

    iget-object v1, p0, Lkia;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2967
    :cond_0
    iget-object v0, p0, Lkia;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2968
    const/4 v0, 0x2

    iget-object v1, p0, Lkia;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2970
    :cond_1
    iget-object v0, p0, Lkia;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2971
    const/4 v0, 0x3

    iget-object v1, p0, Lkia;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2973
    :cond_2
    iget-object v0, p0, Lkia;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2974
    const/4 v0, 0x4

    iget-object v1, p0, Lkia;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2976
    :cond_3
    iget-object v0, p0, Lkia;->d:Lkii;

    if-eqz v0, :cond_4

    .line 2977
    const/4 v0, 0x5

    iget-object v1, p0, Lkia;->d:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2979
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2980
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2984
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2985
    iget-object v1, p0, Lkia;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 2986
    const/4 v1, 0x1

    iget-object v2, p0, Lkia;->responseHeader:Lkdp;

    .line 2987
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2989
    :cond_0
    iget-object v1, p0, Lkia;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2990
    const/4 v1, 0x2

    iget-object v2, p0, Lkia;->a:Ljava/lang/String;

    .line 2991
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2993
    :cond_1
    iget-object v1, p0, Lkia;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2994
    const/4 v1, 0x3

    iget-object v2, p0, Lkia;->b:Ljava/lang/Integer;

    .line 2995
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2997
    :cond_2
    iget-object v1, p0, Lkia;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2998
    const/4 v1, 0x4

    iget-object v2, p0, Lkia;->c:Ljava/lang/String;

    .line 2999
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3001
    :cond_3
    iget-object v1, p0, Lkia;->d:Lkii;

    if-eqz v1, :cond_4

    .line 3002
    const/4 v1, 0x5

    iget-object v2, p0, Lkia;->d:Lkii;

    .line 3003
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3005
    :cond_4
    return v0
.end method
