.class public final Lker;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lker;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Lkcr;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11957
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12962
    iput-object v0, p0, Lker;->a:Ljxw;

    .line 12963
    iput-object v0, p0, Lker;->b:Lkcr;

    .line 12964
    iput-object v0, p0, Lker;->c:Ljava/lang/Long;

    .line 12965
    iput-object v0, p0, Lker;->d:Ljava/lang/Integer;

    .line 12966
    iput-object v0, p0, Lker;->eD:Llyd;

    .line 12967
    const/4 v0, -0x1

    iput v0, p0, Lker;->eE:I

    .line 11959
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 13016
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 13017
    sparse-switch v0, :sswitch_data_0

    .line 13021
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13022
    :sswitch_0
    return-object p0

    .line 13027
    :sswitch_1
    iget-object v0, p0, Lker;->a:Ljxw;

    if-nez v0, :cond_1

    .line 13028
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lker;->a:Ljxw;

    .line 13030
    :cond_1
    iget-object v0, p0, Lker;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 13034
    :sswitch_2
    iget-object v0, p0, Lker;->b:Lkcr;

    if-nez v0, :cond_2

    .line 13035
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Lker;->b:Lkcr;

    .line 13037
    :cond_2
    iget-object v0, p0, Lker;->b:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 13041
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lker;->c:Ljava/lang/Long;

    goto :goto_0

    .line 13045
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 13046
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 13050
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lker;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 13017
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 13046
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 11974
    iget-object v0, p0, Lker;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 11975
    const/4 v0, 0x1

    iget-object v1, p0, Lker;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11977
    :cond_0
    iget-object v0, p0, Lker;->b:Lkcr;

    if-eqz v0, :cond_1

    .line 11978
    const/4 v0, 0x2

    iget-object v1, p0, Lker;->b:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11980
    :cond_1
    iget-object v0, p0, Lker;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 11981
    const/4 v0, 0x3

    iget-object v1, p0, Lker;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 11983
    :cond_2
    iget-object v0, p0, Lker;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 11984
    const/4 v0, 0x4

    iget-object v1, p0, Lker;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 11986
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11987
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 11991
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11992
    iget-object v1, p0, Lker;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 11993
    const/4 v1, 0x1

    iget-object v2, p0, Lker;->a:Ljxw;

    .line 11994
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11996
    :cond_0
    iget-object v1, p0, Lker;->b:Lkcr;

    if-eqz v1, :cond_1

    .line 11997
    const/4 v1, 0x2

    iget-object v2, p0, Lker;->b:Lkcr;

    .line 11998
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12000
    :cond_1
    iget-object v1, p0, Lker;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 12001
    const/4 v1, 0x3

    iget-object v2, p0, Lker;->c:Ljava/lang/Long;

    .line 12002
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12004
    :cond_2
    iget-object v1, p0, Lker;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 12005
    const/4 v1, 0x4

    iget-object v2, p0, Lker;->d:Ljava/lang/Integer;

    .line 12006
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12008
    :cond_3
    return v0
.end method
