.class public final Lkkp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 985
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1990
    iput-object v0, p0, Lkkp;->a:Ljava/lang/Long;

    .line 1991
    iput-object v0, p0, Lkkp;->b:Ljava/lang/String;

    .line 1992
    iput-object v0, p0, Lkkp;->c:Ljava/lang/Long;

    .line 1993
    iput-object v0, p0, Lkkp;->d:Ljava/lang/Long;

    .line 1994
    iput-object v0, p0, Lkkp;->e:Ljava/lang/Integer;

    .line 1995
    iput-object v0, p0, Lkkp;->f:Ljava/lang/Integer;

    .line 1996
    iput-object v0, p0, Lkkp;->g:Ljava/lang/Integer;

    .line 1997
    iput-object v0, p0, Lkkp;->eD:Llyd;

    .line 1998
    const/4 v0, -0x1

    iput v0, p0, Lkkp;->eE:I

    .line 987
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2068
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2069
    sparse-switch v0, :sswitch_data_0

    .line 2073
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2074
    :sswitch_0
    return-object p0

    .line 2079
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkkp;->a:Ljava/lang/Long;

    goto :goto_0

    .line 2083
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkkp;->b:Ljava/lang/String;

    goto :goto_0

    .line 2087
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkkp;->c:Ljava/lang/Long;

    goto :goto_0

    .line 2091
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkkp;->d:Ljava/lang/Long;

    goto :goto_0

    .line 2095
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2096
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2107
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkkp;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 2113
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2114
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2119
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkkp;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 2125
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2126
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2131
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkkp;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 2069
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch

    .line 2096
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
    .end packed-switch

    .line 2114
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2126
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 1005
    iget-object v0, p0, Lkkp;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1006
    const/4 v0, 0x1

    iget-object v1, p0, Lkkp;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 1008
    :cond_0
    iget-object v0, p0, Lkkp;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1009
    const/4 v0, 0x2

    iget-object v1, p0, Lkkp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1011
    :cond_1
    iget-object v0, p0, Lkkp;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 1012
    const/4 v0, 0x3

    iget-object v1, p0, Lkkp;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 1014
    :cond_2
    iget-object v0, p0, Lkkp;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 1015
    const/4 v0, 0x4

    iget-object v1, p0, Lkkp;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 1017
    :cond_3
    iget-object v0, p0, Lkkp;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1018
    const/4 v0, 0x5

    iget-object v1, p0, Lkkp;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1020
    :cond_4
    iget-object v0, p0, Lkkp;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1021
    const/4 v0, 0x6

    iget-object v1, p0, Lkkp;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1023
    :cond_5
    iget-object v0, p0, Lkkp;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1024
    const/4 v0, 0x7

    iget-object v1, p0, Lkkp;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1026
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1027
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1031
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1032
    iget-object v1, p0, Lkkp;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1033
    const/4 v1, 0x1

    iget-object v2, p0, Lkkp;->a:Ljava/lang/Long;

    .line 1034
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1036
    :cond_0
    iget-object v1, p0, Lkkp;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1037
    const/4 v1, 0x2

    iget-object v2, p0, Lkkp;->b:Ljava/lang/String;

    .line 1038
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1040
    :cond_1
    iget-object v1, p0, Lkkp;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 1041
    const/4 v1, 0x3

    iget-object v2, p0, Lkkp;->c:Ljava/lang/Long;

    .line 1042
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1044
    :cond_2
    iget-object v1, p0, Lkkp;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 1045
    const/4 v1, 0x4

    iget-object v2, p0, Lkkp;->d:Ljava/lang/Long;

    .line 1046
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1048
    :cond_3
    iget-object v1, p0, Lkkp;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1049
    const/4 v1, 0x5

    iget-object v2, p0, Lkkp;->e:Ljava/lang/Integer;

    .line 1050
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1052
    :cond_4
    iget-object v1, p0, Lkkp;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 1053
    const/4 v1, 0x6

    iget-object v2, p0, Lkkp;->f:Ljava/lang/Integer;

    .line 1054
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1056
    :cond_5
    iget-object v1, p0, Lkkp;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 1057
    const/4 v1, 0x7

    iget-object v2, p0, Lkkp;->g:Ljava/lang/Integer;

    .line 1058
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1060
    :cond_6
    return v0
.end method
