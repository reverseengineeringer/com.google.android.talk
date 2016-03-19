.class public final Ljdy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljdy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Double;

.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/Double;

.field public d:Ljava/lang/Double;

.field public e:Ljava/lang/Double;

.field public f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9810
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10815
    iput-object v0, p0, Ljdy;->a:Ljava/lang/Double;

    .line 10816
    iput-object v0, p0, Ljdy;->b:Ljava/lang/Double;

    .line 10817
    iput-object v0, p0, Ljdy;->c:Ljava/lang/Double;

    .line 10818
    iput-object v0, p0, Ljdy;->d:Ljava/lang/Double;

    .line 10819
    iput-object v0, p0, Ljdy;->e:Ljava/lang/Double;

    .line 10820
    iput-object v0, p0, Ljdy;->f:Ljava/lang/Boolean;

    .line 10821
    iput-object v0, p0, Ljdy;->eD:Llyd;

    .line 10822
    const/4 v0, -0x1

    iput v0, p0, Ljdy;->eE:I

    .line 9812
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 15877
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 15878
    sparse-switch v0, :sswitch_data_0

    .line 15882
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15883
    :sswitch_0
    return-object p0

    .line 15888
    :sswitch_1
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljdy;->a:Ljava/lang/Double;

    goto :goto_0

    .line 15892
    :sswitch_2
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljdy;->b:Ljava/lang/Double;

    goto :goto_0

    .line 15896
    :sswitch_3
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljdy;->c:Ljava/lang/Double;

    goto :goto_0

    .line 15900
    :sswitch_4
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljdy;->d:Ljava/lang/Double;

    goto :goto_0

    .line 15904
    :sswitch_5
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljdy;->e:Ljava/lang/Double;

    goto :goto_0

    .line 15908
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljdy;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 15878
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
        0x21 -> :sswitch_4
        0x29 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 9829
    const/4 v0, 0x1

    iget-object v1, p0, Ljdy;->a:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 9830
    const/4 v0, 0x2

    iget-object v1, p0, Ljdy;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 9831
    iget-object v0, p0, Ljdy;->c:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 9832
    const/4 v0, 0x3

    iget-object v1, p0, Ljdy;->c:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 9834
    :cond_0
    iget-object v0, p0, Ljdy;->d:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 9835
    const/4 v0, 0x4

    iget-object v1, p0, Ljdy;->d:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 9837
    :cond_1
    iget-object v0, p0, Ljdy;->e:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 9838
    const/4 v0, 0x5

    iget-object v1, p0, Ljdy;->e:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 9840
    :cond_2
    iget-object v0, p0, Ljdy;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 9841
    const/4 v0, 0x6

    iget-object v1, p0, Ljdy;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 9843
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9844
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9848
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9849
    const/4 v1, 0x1

    iget-object v2, p0, Ljdy;->a:Ljava/lang/Double;

    .line 9850
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 11561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 9850
    add-int/2addr v0, v1

    .line 9851
    const/4 v1, 0x2

    iget-object v2, p0, Ljdy;->b:Ljava/lang/Double;

    .line 9852
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 12561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 9852
    add-int/2addr v0, v1

    .line 9853
    iget-object v1, p0, Ljdy;->c:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 9854
    const/4 v1, 0x3

    iget-object v2, p0, Ljdy;->c:Ljava/lang/Double;

    .line 9855
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 13561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 9855
    add-int/2addr v0, v1

    .line 9857
    :cond_0
    iget-object v1, p0, Ljdy;->d:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 9858
    const/4 v1, 0x4

    iget-object v2, p0, Ljdy;->d:Ljava/lang/Double;

    .line 9859
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 14561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 9859
    add-int/2addr v0, v1

    .line 9861
    :cond_1
    iget-object v1, p0, Ljdy;->e:Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 9862
    const/4 v1, 0x5

    iget-object v2, p0, Ljdy;->e:Ljava/lang/Double;

    .line 9863
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 15561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 9863
    add-int/2addr v0, v1

    .line 9865
    :cond_2
    iget-object v1, p0, Ljdy;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 9866
    const/4 v1, 0x6

    iget-object v2, p0, Ljdy;->f:Ljava/lang/Boolean;

    .line 9867
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9867
    add-int/2addr v0, v1

    .line 9869
    :cond_3
    return v0
.end method
