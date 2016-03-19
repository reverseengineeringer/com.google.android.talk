.class public final Lkcp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31705
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32710
    iput-object v0, p0, Lkcp;->a:Ljava/lang/Integer;

    .line 32711
    iput-object v0, p0, Lkcp;->b:Ljava/lang/String;

    .line 32712
    iput-object v0, p0, Lkcp;->c:Ljava/lang/String;

    .line 32713
    iput-object v0, p0, Lkcp;->eD:Llyd;

    .line 32714
    const/4 v0, -0x1

    iput v0, p0, Lkcp;->eE:I

    .line 31707
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 32756
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 32757
    sparse-switch v0, :sswitch_data_0

    .line 32761
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32762
    :sswitch_0
    return-object p0

    .line 32767
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 32768
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 32771
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcp;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 32777
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkcp;->b:Ljava/lang/String;

    goto :goto_0

    .line 32781
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkcp;->c:Ljava/lang/String;

    goto :goto_0

    .line 32757
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 32768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 31721
    iget-object v0, p0, Lkcp;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 31722
    const/4 v0, 0x1

    iget-object v1, p0, Lkcp;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 31724
    :cond_0
    iget-object v0, p0, Lkcp;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 31725
    const/4 v0, 0x2

    iget-object v1, p0, Lkcp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 31727
    :cond_1
    iget-object v0, p0, Lkcp;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 31728
    const/4 v0, 0x3

    iget-object v1, p0, Lkcp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 31730
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 31731
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 31735
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 31736
    iget-object v1, p0, Lkcp;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 31737
    const/4 v1, 0x1

    iget-object v2, p0, Lkcp;->a:Ljava/lang/Integer;

    .line 31738
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 31740
    :cond_0
    iget-object v1, p0, Lkcp;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 31741
    const/4 v1, 0x2

    iget-object v2, p0, Lkcp;->b:Ljava/lang/String;

    .line 31742
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31744
    :cond_1
    iget-object v1, p0, Lkcp;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 31745
    const/4 v1, 0x3

    iget-object v2, p0, Lkcp;->c:Ljava/lang/String;

    .line 31746
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31748
    :cond_2
    return v0
.end method
