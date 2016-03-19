.class public final Ljcf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljao;

.field public d:Ljap;

.field public e:Ljcp;

.field public f:Ljbt;

.field public g:Ljava/lang/String;

.field public h:Ljce;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9969
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10974
    iput-object v0, p0, Ljcf;->a:Ljava/lang/String;

    .line 10975
    iput-object v0, p0, Ljcf;->b:Ljava/lang/Integer;

    .line 10976
    iput-object v0, p0, Ljcf;->c:Ljao;

    .line 10977
    iput-object v0, p0, Ljcf;->d:Ljap;

    .line 10978
    iput-object v0, p0, Ljcf;->e:Ljcp;

    .line 10979
    iput-object v0, p0, Ljcf;->f:Ljbt;

    .line 10980
    iput-object v0, p0, Ljcf;->g:Ljava/lang/String;

    .line 10981
    iput-object v0, p0, Ljcf;->h:Ljce;

    .line 10982
    iput-object v0, p0, Ljcf;->i:Ljava/lang/String;

    .line 10983
    iput-object v0, p0, Ljcf;->eD:Llyd;

    .line 10984
    const/4 v0, -0x1

    iput v0, p0, Ljcf;->eE:I

    .line 9971
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 11068
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11069
    sparse-switch v0, :sswitch_data_0

    .line 11073
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11074
    :sswitch_0
    return-object p0

    .line 11079
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcf;->a:Ljava/lang/String;

    goto :goto_0

    .line 11083
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 11084
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11088
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljcf;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 11094
    :sswitch_3
    iget-object v0, p0, Ljcf;->c:Ljao;

    if-nez v0, :cond_1

    .line 11095
    new-instance v0, Ljao;

    invoke-direct {v0}, Ljao;-><init>()V

    iput-object v0, p0, Ljcf;->c:Ljao;

    .line 11097
    :cond_1
    iget-object v0, p0, Ljcf;->c:Ljao;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11101
    :sswitch_4
    iget-object v0, p0, Ljcf;->d:Ljap;

    if-nez v0, :cond_2

    .line 11102
    new-instance v0, Ljap;

    invoke-direct {v0}, Ljap;-><init>()V

    iput-object v0, p0, Ljcf;->d:Ljap;

    .line 11104
    :cond_2
    iget-object v0, p0, Ljcf;->d:Ljap;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11108
    :sswitch_5
    iget-object v0, p0, Ljcf;->e:Ljcp;

    if-nez v0, :cond_3

    .line 11109
    new-instance v0, Ljcp;

    invoke-direct {v0}, Ljcp;-><init>()V

    iput-object v0, p0, Ljcf;->e:Ljcp;

    .line 11111
    :cond_3
    iget-object v0, p0, Ljcf;->e:Ljcp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11115
    :sswitch_6
    iget-object v0, p0, Ljcf;->f:Ljbt;

    if-nez v0, :cond_4

    .line 11116
    new-instance v0, Ljbt;

    invoke-direct {v0}, Ljbt;-><init>()V

    iput-object v0, p0, Ljcf;->f:Ljbt;

    .line 11118
    :cond_4
    iget-object v0, p0, Ljcf;->f:Ljbt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11122
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcf;->g:Ljava/lang/String;

    goto :goto_0

    .line 11126
    :sswitch_8
    iget-object v0, p0, Ljcf;->h:Ljce;

    if-nez v0, :cond_5

    .line 11127
    new-instance v0, Ljce;

    invoke-direct {v0}, Ljce;-><init>()V

    iput-object v0, p0, Ljcf;->h:Ljce;

    .line 11129
    :cond_5
    iget-object v0, p0, Ljcf;->h:Ljce;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11133
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcf;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 11069
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch

    .line 11084
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
    .line 9991
    iget-object v0, p0, Ljcf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9992
    const/4 v0, 0x1

    iget-object v1, p0, Ljcf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9994
    :cond_0
    iget-object v0, p0, Ljcf;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 9995
    const/4 v0, 0x2

    iget-object v1, p0, Ljcf;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9997
    :cond_1
    iget-object v0, p0, Ljcf;->c:Ljao;

    if-eqz v0, :cond_2

    .line 9998
    const/4 v0, 0x3

    iget-object v1, p0, Ljcf;->c:Ljao;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10000
    :cond_2
    iget-object v0, p0, Ljcf;->d:Ljap;

    if-eqz v0, :cond_3

    .line 10001
    const/4 v0, 0x4

    iget-object v1, p0, Ljcf;->d:Ljap;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10003
    :cond_3
    iget-object v0, p0, Ljcf;->e:Ljcp;

    if-eqz v0, :cond_4

    .line 10004
    const/4 v0, 0x5

    iget-object v1, p0, Ljcf;->e:Ljcp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10006
    :cond_4
    iget-object v0, p0, Ljcf;->f:Ljbt;

    if-eqz v0, :cond_5

    .line 10007
    const/4 v0, 0x6

    iget-object v1, p0, Ljcf;->f:Ljbt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10009
    :cond_5
    iget-object v0, p0, Ljcf;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 10010
    const/4 v0, 0x7

    iget-object v1, p0, Ljcf;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10012
    :cond_6
    iget-object v0, p0, Ljcf;->h:Ljce;

    if-eqz v0, :cond_7

    .line 10013
    const/16 v0, 0x8

    iget-object v1, p0, Ljcf;->h:Ljce;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10015
    :cond_7
    iget-object v0, p0, Ljcf;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 10016
    const/16 v0, 0x9

    iget-object v1, p0, Ljcf;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10018
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10019
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 10023
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10024
    iget-object v1, p0, Ljcf;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10025
    const/4 v1, 0x1

    iget-object v2, p0, Ljcf;->a:Ljava/lang/String;

    .line 10026
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10028
    :cond_0
    iget-object v1, p0, Ljcf;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 10029
    const/4 v1, 0x2

    iget-object v2, p0, Ljcf;->b:Ljava/lang/Integer;

    .line 10030
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10032
    :cond_1
    iget-object v1, p0, Ljcf;->c:Ljao;

    if-eqz v1, :cond_2

    .line 10033
    const/4 v1, 0x3

    iget-object v2, p0, Ljcf;->c:Ljao;

    .line 10034
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10036
    :cond_2
    iget-object v1, p0, Ljcf;->d:Ljap;

    if-eqz v1, :cond_3

    .line 10037
    const/4 v1, 0x4

    iget-object v2, p0, Ljcf;->d:Ljap;

    .line 10038
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10040
    :cond_3
    iget-object v1, p0, Ljcf;->e:Ljcp;

    if-eqz v1, :cond_4

    .line 10041
    const/4 v1, 0x5

    iget-object v2, p0, Ljcf;->e:Ljcp;

    .line 10042
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10044
    :cond_4
    iget-object v1, p0, Ljcf;->f:Ljbt;

    if-eqz v1, :cond_5

    .line 10045
    const/4 v1, 0x6

    iget-object v2, p0, Ljcf;->f:Ljbt;

    .line 10046
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10048
    :cond_5
    iget-object v1, p0, Ljcf;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 10049
    const/4 v1, 0x7

    iget-object v2, p0, Ljcf;->g:Ljava/lang/String;

    .line 10050
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10052
    :cond_6
    iget-object v1, p0, Ljcf;->h:Ljce;

    if-eqz v1, :cond_7

    .line 10053
    const/16 v1, 0x8

    iget-object v2, p0, Ljcf;->h:Ljce;

    .line 10054
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10056
    :cond_7
    iget-object v1, p0, Ljcf;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 10057
    const/16 v1, 0x9

    iget-object v2, p0, Ljcf;->i:Ljava/lang/String;

    .line 10058
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10060
    :cond_8
    return v0
.end method
