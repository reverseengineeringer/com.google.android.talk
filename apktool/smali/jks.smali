.class public final Ljks;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljks;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7560
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8565
    iput-object v0, p0, Ljks;->a:Ljava/lang/String;

    .line 8566
    iput-object v0, p0, Ljks;->eD:Llyd;

    .line 8567
    const/4 v0, -0x1

    iput v0, p0, Ljks;->eE:I

    .line 7562
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 8595
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8596
    sparse-switch v0, :sswitch_data_0

    .line 8600
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8601
    :sswitch_0
    return-object p0

    .line 8606
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljks;->a:Ljava/lang/String;

    goto :goto_0

    .line 8596
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 7574
    iget-object v0, p0, Ljks;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7575
    const/4 v0, 0x1

    iget-object v1, p0, Ljks;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7577
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7578
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 7582
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7583
    iget-object v1, p0, Ljks;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7584
    const/4 v1, 0x1

    iget-object v2, p0, Ljks;->a:Ljava/lang/String;

    .line 7585
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7587
    :cond_0
    return v0
.end method
