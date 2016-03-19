.class public final Ljap;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljap;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbo;

.field public b:Ljbq;

.field public c:Ljat;

.field public d:Ljch;

.field public e:Ljch;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field public h:Ljbh;

.field public i:Ljca;

.field public j:Ljby;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8992
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9997
    iput-object v0, p0, Ljap;->a:Ljbo;

    .line 9998
    iput-object v0, p0, Ljap;->b:Ljbq;

    .line 9999
    iput-object v0, p0, Ljap;->c:Ljat;

    .line 10000
    iput-object v0, p0, Ljap;->d:Ljch;

    .line 10001
    iput-object v0, p0, Ljap;->e:Ljch;

    .line 10002
    iput-object v0, p0, Ljap;->f:Ljava/lang/String;

    .line 10003
    iput-object v0, p0, Ljap;->g:Ljava/lang/Boolean;

    .line 10004
    iput-object v0, p0, Ljap;->h:Ljbh;

    .line 10005
    iput-object v0, p0, Ljap;->i:Ljca;

    .line 10006
    iput-object v0, p0, Ljap;->j:Ljby;

    .line 10007
    iput-object v0, p0, Ljap;->eD:Llyd;

    .line 10008
    const/4 v0, -0x1

    iput v0, p0, Ljap;->eE:I

    .line 8994
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 11099
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11100
    sparse-switch v0, :sswitch_data_0

    .line 11104
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11105
    :sswitch_0
    return-object p0

    .line 11110
    :sswitch_1
    iget-object v0, p0, Ljap;->b:Ljbq;

    if-nez v0, :cond_1

    .line 11111
    new-instance v0, Ljbq;

    invoke-direct {v0}, Ljbq;-><init>()V

    iput-object v0, p0, Ljap;->b:Ljbq;

    .line 11113
    :cond_1
    iget-object v0, p0, Ljap;->b:Ljbq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11117
    :sswitch_2
    iget-object v0, p0, Ljap;->c:Ljat;

    if-nez v0, :cond_2

    .line 11118
    new-instance v0, Ljat;

    invoke-direct {v0}, Ljat;-><init>()V

    iput-object v0, p0, Ljap;->c:Ljat;

    .line 11120
    :cond_2
    iget-object v0, p0, Ljap;->c:Ljat;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11124
    :sswitch_3
    iget-object v0, p0, Ljap;->d:Ljch;

    if-nez v0, :cond_3

    .line 11125
    new-instance v0, Ljch;

    invoke-direct {v0}, Ljch;-><init>()V

    iput-object v0, p0, Ljap;->d:Ljch;

    .line 11127
    :cond_3
    iget-object v0, p0, Ljap;->d:Ljch;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11131
    :sswitch_4
    iget-object v0, p0, Ljap;->e:Ljch;

    if-nez v0, :cond_4

    .line 11132
    new-instance v0, Ljch;

    invoke-direct {v0}, Ljch;-><init>()V

    iput-object v0, p0, Ljap;->e:Ljch;

    .line 11134
    :cond_4
    iget-object v0, p0, Ljap;->e:Ljch;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11138
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljap;->f:Ljava/lang/String;

    goto :goto_0

    .line 11142
    :sswitch_6
    iget-object v0, p0, Ljap;->h:Ljbh;

    if-nez v0, :cond_5

    .line 11143
    new-instance v0, Ljbh;

    invoke-direct {v0}, Ljbh;-><init>()V

    iput-object v0, p0, Ljap;->h:Ljbh;

    .line 11145
    :cond_5
    iget-object v0, p0, Ljap;->h:Ljbh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11149
    :sswitch_7
    iget-object v0, p0, Ljap;->i:Ljca;

    if-nez v0, :cond_6

    .line 11150
    new-instance v0, Ljca;

    invoke-direct {v0}, Ljca;-><init>()V

    iput-object v0, p0, Ljap;->i:Ljca;

    .line 11152
    :cond_6
    iget-object v0, p0, Ljap;->i:Ljca;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11156
    :sswitch_8
    iget-object v0, p0, Ljap;->j:Ljby;

    if-nez v0, :cond_7

    .line 11157
    new-instance v0, Ljby;

    invoke-direct {v0}, Ljby;-><init>()V

    iput-object v0, p0, Ljap;->j:Ljby;

    .line 11159
    :cond_7
    iget-object v0, p0, Ljap;->j:Ljby;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 11163
    :sswitch_9
    iget-object v0, p0, Ljap;->a:Ljbo;

    if-nez v0, :cond_8

    .line 11164
    new-instance v0, Ljbo;

    invoke-direct {v0}, Ljbo;-><init>()V

    iput-object v0, p0, Ljap;->a:Ljbo;

    .line 11166
    :cond_8
    iget-object v0, p0, Ljap;->a:Ljbo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 11170
    :sswitch_a
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljap;->g:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 11100
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 9015
    iget-object v0, p0, Ljap;->b:Ljbq;

    if-eqz v0, :cond_0

    .line 9016
    const/4 v0, 0x1

    iget-object v1, p0, Ljap;->b:Ljbq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9018
    :cond_0
    iget-object v0, p0, Ljap;->c:Ljat;

    if-eqz v0, :cond_1

    .line 9019
    const/4 v0, 0x2

    iget-object v1, p0, Ljap;->c:Ljat;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9021
    :cond_1
    iget-object v0, p0, Ljap;->d:Ljch;

    if-eqz v0, :cond_2

    .line 9022
    const/4 v0, 0x3

    iget-object v1, p0, Ljap;->d:Ljch;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9024
    :cond_2
    iget-object v0, p0, Ljap;->e:Ljch;

    if-eqz v0, :cond_3

    .line 9025
    const/4 v0, 0x4

    iget-object v1, p0, Ljap;->e:Ljch;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9027
    :cond_3
    iget-object v0, p0, Ljap;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 9028
    const/4 v0, 0x5

    iget-object v1, p0, Ljap;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9030
    :cond_4
    iget-object v0, p0, Ljap;->h:Ljbh;

    if-eqz v0, :cond_5

    .line 9031
    const/4 v0, 0x6

    iget-object v1, p0, Ljap;->h:Ljbh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9033
    :cond_5
    iget-object v0, p0, Ljap;->i:Ljca;

    if-eqz v0, :cond_6

    .line 9034
    const/4 v0, 0x7

    iget-object v1, p0, Ljap;->i:Ljca;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9036
    :cond_6
    iget-object v0, p0, Ljap;->j:Ljby;

    if-eqz v0, :cond_7

    .line 9037
    const/16 v0, 0x8

    iget-object v1, p0, Ljap;->j:Ljby;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9039
    :cond_7
    iget-object v0, p0, Ljap;->a:Ljbo;

    if-eqz v0, :cond_8

    .line 9040
    const/16 v0, 0x9

    iget-object v1, p0, Ljap;->a:Ljbo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9042
    :cond_8
    iget-object v0, p0, Ljap;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 9043
    const/16 v0, 0xa

    iget-object v1, p0, Ljap;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 9045
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9046
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9050
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9051
    iget-object v1, p0, Ljap;->b:Ljbq;

    if-eqz v1, :cond_0

    .line 9052
    const/4 v1, 0x1

    iget-object v2, p0, Ljap;->b:Ljbq;

    .line 9053
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9055
    :cond_0
    iget-object v1, p0, Ljap;->c:Ljat;

    if-eqz v1, :cond_1

    .line 9056
    const/4 v1, 0x2

    iget-object v2, p0, Ljap;->c:Ljat;

    .line 9057
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9059
    :cond_1
    iget-object v1, p0, Ljap;->d:Ljch;

    if-eqz v1, :cond_2

    .line 9060
    const/4 v1, 0x3

    iget-object v2, p0, Ljap;->d:Ljch;

    .line 9061
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9063
    :cond_2
    iget-object v1, p0, Ljap;->e:Ljch;

    if-eqz v1, :cond_3

    .line 9064
    const/4 v1, 0x4

    iget-object v2, p0, Ljap;->e:Ljch;

    .line 9065
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9067
    :cond_3
    iget-object v1, p0, Ljap;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 9068
    const/4 v1, 0x5

    iget-object v2, p0, Ljap;->f:Ljava/lang/String;

    .line 9069
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9071
    :cond_4
    iget-object v1, p0, Ljap;->h:Ljbh;

    if-eqz v1, :cond_5

    .line 9072
    const/4 v1, 0x6

    iget-object v2, p0, Ljap;->h:Ljbh;

    .line 9073
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9075
    :cond_5
    iget-object v1, p0, Ljap;->i:Ljca;

    if-eqz v1, :cond_6

    .line 9076
    const/4 v1, 0x7

    iget-object v2, p0, Ljap;->i:Ljca;

    .line 9077
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9079
    :cond_6
    iget-object v1, p0, Ljap;->j:Ljby;

    if-eqz v1, :cond_7

    .line 9080
    const/16 v1, 0x8

    iget-object v2, p0, Ljap;->j:Ljby;

    .line 9081
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9083
    :cond_7
    iget-object v1, p0, Ljap;->a:Ljbo;

    if-eqz v1, :cond_8

    .line 9084
    const/16 v1, 0x9

    iget-object v2, p0, Ljap;->a:Ljbo;

    .line 9085
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9087
    :cond_8
    iget-object v1, p0, Ljap;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 9088
    const/16 v1, 0xa

    iget-object v2, p0, Ljap;->g:Ljava/lang/Boolean;

    .line 9089
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9089
    add-int/2addr v0, v1

    .line 9091
    :cond_9
    return v0
.end method
