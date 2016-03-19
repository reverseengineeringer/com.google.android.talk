.class public final Ljjo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmem;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3035
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4040
    iput-object v0, p0, Ljjo;->a:Lmem;

    .line 4041
    iput-object v0, p0, Ljjo;->b:Ljava/lang/String;

    .line 4042
    iput-object v0, p0, Ljjo;->c:Ljava/lang/String;

    .line 4043
    iput-object v0, p0, Ljjo;->d:Ljava/lang/String;

    .line 4044
    iput-object v0, p0, Ljjo;->e:Ljava/lang/Integer;

    .line 4045
    iput-object v0, p0, Ljjo;->f:Ljava/lang/String;

    .line 4046
    iput-object v0, p0, Ljjo;->eD:Llyd;

    .line 4047
    const/4 v0, -0x1

    iput v0, p0, Ljjo;->eE:I

    .line 3037
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4111
    sparse-switch v0, :sswitch_data_0

    .line 4115
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4116
    :sswitch_0
    return-object p0

    .line 4121
    :sswitch_1
    iget-object v0, p0, Ljjo;->a:Lmem;

    if-nez v0, :cond_1

    .line 4122
    new-instance v0, Lmem;

    invoke-direct {v0}, Lmem;-><init>()V

    iput-object v0, p0, Ljjo;->a:Lmem;

    .line 4124
    :cond_1
    iget-object v0, p0, Ljjo;->a:Lmem;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4128
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjo;->b:Ljava/lang/String;

    goto :goto_0

    .line 4132
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjo;->c:Ljava/lang/String;

    goto :goto_0

    .line 4136
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjo;->d:Ljava/lang/String;

    goto :goto_0

    .line 4140
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjo;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 4144
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjo;->f:Ljava/lang/String;

    goto :goto_0

    .line 4111
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3054
    iget-object v0, p0, Ljjo;->a:Lmem;

    if-eqz v0, :cond_0

    .line 3055
    const/4 v0, 0x1

    iget-object v1, p0, Ljjo;->a:Lmem;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3057
    :cond_0
    iget-object v0, p0, Ljjo;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3058
    const/4 v0, 0x2

    iget-object v1, p0, Ljjo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3060
    :cond_1
    iget-object v0, p0, Ljjo;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3061
    const/4 v0, 0x3

    iget-object v1, p0, Ljjo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3063
    :cond_2
    iget-object v0, p0, Ljjo;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3064
    const/4 v0, 0x4

    iget-object v1, p0, Ljjo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3066
    :cond_3
    iget-object v0, p0, Ljjo;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 3067
    const/4 v0, 0x5

    iget-object v1, p0, Ljjo;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3069
    :cond_4
    iget-object v0, p0, Ljjo;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 3070
    const/4 v0, 0x6

    iget-object v1, p0, Ljjo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3072
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3073
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3077
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3078
    iget-object v1, p0, Ljjo;->a:Lmem;

    if-eqz v1, :cond_0

    .line 3079
    const/4 v1, 0x1

    iget-object v2, p0, Ljjo;->a:Lmem;

    .line 3080
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3082
    :cond_0
    iget-object v1, p0, Ljjo;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3083
    const/4 v1, 0x2

    iget-object v2, p0, Ljjo;->b:Ljava/lang/String;

    .line 3084
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3086
    :cond_1
    iget-object v1, p0, Ljjo;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3087
    const/4 v1, 0x3

    iget-object v2, p0, Ljjo;->c:Ljava/lang/String;

    .line 3088
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3090
    :cond_2
    iget-object v1, p0, Ljjo;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3091
    const/4 v1, 0x4

    iget-object v2, p0, Ljjo;->d:Ljava/lang/String;

    .line 3092
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3094
    :cond_3
    iget-object v1, p0, Ljjo;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 3095
    const/4 v1, 0x5

    iget-object v2, p0, Ljjo;->e:Ljava/lang/Integer;

    .line 3096
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3098
    :cond_4
    iget-object v1, p0, Ljjo;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3099
    const/4 v1, 0x6

    iget-object v2, p0, Ljjo;->f:Ljava/lang/String;

    .line 3100
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3102
    :cond_5
    return v0
.end method
