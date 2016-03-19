.class public final Ljzb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Integer;

.field public h:[B

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26899
    invoke-direct {p0}, Llyb;-><init>()V

    .line 27904
    iput-object v0, p0, Ljzb;->a:Ljava/lang/Boolean;

    .line 27905
    iput-object v0, p0, Ljzb;->b:Ljava/lang/Boolean;

    .line 27906
    iput-object v0, p0, Ljzb;->c:Ljava/lang/Boolean;

    .line 27907
    iput-object v0, p0, Ljzb;->d:Ljava/lang/Boolean;

    .line 27908
    iput-object v0, p0, Ljzb;->e:Ljava/lang/String;

    .line 27909
    iput-object v0, p0, Ljzb;->f:Ljava/lang/Boolean;

    .line 27910
    iput-object v0, p0, Ljzb;->g:Ljava/lang/Integer;

    .line 27911
    iput-object v0, p0, Ljzb;->h:[B

    .line 27912
    iput-object v0, p0, Ljzb;->i:Ljava/lang/Integer;

    .line 27913
    iput-object v0, p0, Ljzb;->j:Ljava/lang/Integer;

    .line 27914
    iput-object v0, p0, Ljzb;->k:Ljava/lang/Integer;

    .line 27915
    iput-object v0, p0, Ljzb;->l:Ljava/lang/Boolean;

    .line 27916
    iput-object v0, p0, Ljzb;->eD:Llyd;

    .line 27917
    const/4 v0, -0x1

    iput v0, p0, Ljzb;->eE:I

    .line 26901
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 34022
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 34023
    sparse-switch v0, :sswitch_data_0

    .line 34027
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34028
    :sswitch_0
    return-object p0

    .line 34033
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzb;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 34037
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzb;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 34041
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzb;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 34045
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzb;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 34049
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljzb;->e:Ljava/lang/String;

    goto :goto_0

    .line 34053
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzb;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 34057
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 34058
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 34063
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzb;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 34069
    :sswitch_8
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljzb;->h:[B

    goto :goto_0

    .line 34073
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 34074
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 34078
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzb;->i:Ljava/lang/Integer;

    goto :goto_0

    .line 34084
    :sswitch_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 34085
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 34089
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzb;->j:Ljava/lang/Integer;

    goto :goto_0

    .line 34095
    :sswitch_b
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 34096
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 34100
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzb;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 34106
    :sswitch_c
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzb;->l:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 34023
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch

    .line 34058
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 34074
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 34085
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 34096
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 26924
    iget-object v0, p0, Ljzb;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 26925
    const/4 v0, 0x1

    iget-object v1, p0, Ljzb;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 26927
    :cond_0
    iget-object v0, p0, Ljzb;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 26928
    const/4 v0, 0x2

    iget-object v1, p0, Ljzb;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 26930
    :cond_1
    iget-object v0, p0, Ljzb;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 26931
    const/4 v0, 0x3

    iget-object v1, p0, Ljzb;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 26933
    :cond_2
    iget-object v0, p0, Ljzb;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 26934
    const/4 v0, 0x4

    iget-object v1, p0, Ljzb;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 26936
    :cond_3
    iget-object v0, p0, Ljzb;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 26937
    const/4 v0, 0x5

    iget-object v1, p0, Ljzb;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 26939
    :cond_4
    iget-object v0, p0, Ljzb;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 26940
    const/4 v0, 0x6

    iget-object v1, p0, Ljzb;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 26942
    :cond_5
    iget-object v0, p0, Ljzb;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 26943
    const/4 v0, 0x7

    iget-object v1, p0, Ljzb;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 26945
    :cond_6
    iget-object v0, p0, Ljzb;->h:[B

    if-eqz v0, :cond_7

    .line 26946
    const/16 v0, 0x8

    iget-object v1, p0, Ljzb;->h:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 26948
    :cond_7
    iget-object v0, p0, Ljzb;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 26949
    const/16 v0, 0x9

    iget-object v1, p0, Ljzb;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 26951
    :cond_8
    iget-object v0, p0, Ljzb;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 26952
    const/16 v0, 0xa

    iget-object v1, p0, Ljzb;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 26954
    :cond_9
    iget-object v0, p0, Ljzb;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 26955
    const/16 v0, 0xb

    iget-object v1, p0, Ljzb;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 26957
    :cond_a
    iget-object v0, p0, Ljzb;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 26958
    const/16 v0, 0xc

    iget-object v1, p0, Ljzb;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 26960
    :cond_b
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 26961
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 26965
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 26966
    iget-object v1, p0, Ljzb;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 26967
    const/4 v1, 0x1

    iget-object v2, p0, Ljzb;->a:Ljava/lang/Boolean;

    .line 26968
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 26968
    add-int/2addr v0, v1

    .line 26970
    :cond_0
    iget-object v1, p0, Ljzb;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 26971
    const/4 v1, 0x2

    iget-object v2, p0, Ljzb;->b:Ljava/lang/Boolean;

    .line 26972
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 26972
    add-int/2addr v0, v1

    .line 26974
    :cond_1
    iget-object v1, p0, Ljzb;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 26975
    const/4 v1, 0x3

    iget-object v2, p0, Ljzb;->c:Ljava/lang/Boolean;

    .line 26976
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 26976
    add-int/2addr v0, v1

    .line 26978
    :cond_2
    iget-object v1, p0, Ljzb;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 26979
    const/4 v1, 0x4

    iget-object v2, p0, Ljzb;->d:Ljava/lang/Boolean;

    .line 26980
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 26980
    add-int/2addr v0, v1

    .line 26982
    :cond_3
    iget-object v1, p0, Ljzb;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 26983
    const/4 v1, 0x5

    iget-object v2, p0, Ljzb;->e:Ljava/lang/String;

    .line 26984
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26986
    :cond_4
    iget-object v1, p0, Ljzb;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 26987
    const/4 v1, 0x6

    iget-object v2, p0, Ljzb;->f:Ljava/lang/Boolean;

    .line 26988
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 26988
    add-int/2addr v0, v1

    .line 26990
    :cond_5
    iget-object v1, p0, Ljzb;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 26991
    const/4 v1, 0x7

    iget-object v2, p0, Ljzb;->g:Ljava/lang/Integer;

    .line 26992
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26994
    :cond_6
    iget-object v1, p0, Ljzb;->h:[B

    if-eqz v1, :cond_7

    .line 26995
    const/16 v1, 0x8

    iget-object v2, p0, Ljzb;->h:[B

    .line 26996
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 26998
    :cond_7
    iget-object v1, p0, Ljzb;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 26999
    const/16 v1, 0x9

    iget-object v2, p0, Ljzb;->i:Ljava/lang/Integer;

    .line 27000
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27002
    :cond_8
    iget-object v1, p0, Ljzb;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 27003
    const/16 v1, 0xa

    iget-object v2, p0, Ljzb;->j:Ljava/lang/Integer;

    .line 27004
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27006
    :cond_9
    iget-object v1, p0, Ljzb;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 27007
    const/16 v1, 0xb

    iget-object v2, p0, Ljzb;->k:Ljava/lang/Integer;

    .line 27008
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27010
    :cond_a
    iget-object v1, p0, Ljzb;->l:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 27011
    const/16 v1, 0xc

    iget-object v2, p0, Ljzb;->l:Ljava/lang/Boolean;

    .line 27012
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 27012
    add-int/2addr v0, v1

    .line 27014
    :cond_b
    return v0
.end method
