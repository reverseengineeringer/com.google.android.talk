.class public final Llja;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llja;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1005
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2010
    iput-object v0, p0, Llja;->a:Ljava/lang/Long;

    .line 2011
    iput-object v0, p0, Llja;->b:Ljava/lang/Long;

    .line 2012
    iput-object v0, p0, Llja;->c:Ljava/lang/Long;

    .line 2013
    iput-object v0, p0, Llja;->d:Ljava/lang/String;

    .line 2014
    iput-object v0, p0, Llja;->e:Ljava/lang/Integer;

    .line 2015
    iput-object v0, p0, Llja;->eD:Llyd;

    .line 2016
    const/4 v0, -0x1

    iput v0, p0, Llja;->eE:I

    .line 1007
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2072
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2073
    sparse-switch v0, :sswitch_data_0

    .line 2077
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2078
    :sswitch_0
    return-object p0

    .line 2083
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llja;->a:Ljava/lang/Long;

    goto :goto_0

    .line 2087
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llja;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2091
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llja;->d:Ljava/lang/String;

    goto :goto_0

    .line 2095
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llja;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 2099
    :sswitch_5
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llja;->c:Ljava/lang/Long;

    goto :goto_0

    .line 2073
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 1023
    iget-object v0, p0, Llja;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1024
    const/4 v0, 0x1

    iget-object v1, p0, Llja;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 1026
    :cond_0
    iget-object v0, p0, Llja;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1027
    const/4 v0, 0x2

    iget-object v1, p0, Llja;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 1029
    :cond_1
    iget-object v0, p0, Llja;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1030
    const/4 v0, 0x3

    iget-object v1, p0, Llja;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1032
    :cond_2
    iget-object v0, p0, Llja;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1033
    const/4 v0, 0x4

    iget-object v1, p0, Llja;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1035
    :cond_3
    iget-object v0, p0, Llja;->c:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 1036
    const/4 v0, 0x5

    iget-object v1, p0, Llja;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 1038
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1039
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1043
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1044
    iget-object v1, p0, Llja;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1045
    const/4 v1, 0x1

    iget-object v2, p0, Llja;->a:Ljava/lang/Long;

    .line 1046
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1048
    :cond_0
    iget-object v1, p0, Llja;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 1049
    const/4 v1, 0x2

    iget-object v2, p0, Llja;->b:Ljava/lang/Long;

    .line 1050
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1052
    :cond_1
    iget-object v1, p0, Llja;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1053
    const/4 v1, 0x3

    iget-object v2, p0, Llja;->d:Ljava/lang/String;

    .line 1054
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1056
    :cond_2
    iget-object v1, p0, Llja;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 1057
    const/4 v1, 0x4

    iget-object v2, p0, Llja;->e:Ljava/lang/Integer;

    .line 1058
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1060
    :cond_3
    iget-object v1, p0, Llja;->c:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 1061
    const/4 v1, 0x5

    iget-object v2, p0, Llja;->c:Ljava/lang/Long;

    .line 1062
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1064
    :cond_4
    return v0
.end method
