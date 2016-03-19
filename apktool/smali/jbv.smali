.class public final Ljbv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Ljbv;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5082
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6087
    iput-object v0, p0, Ljbv;->a:Ljava/lang/Integer;

    .line 6088
    iput-object v0, p0, Ljbv;->eD:Llyd;

    .line 6089
    const/4 v0, -0x1

    iput v0, p0, Ljbv;->eE:I

    .line 5084
    return-void
.end method

.method public static d()[Ljbv;
    .locals 2

    .prologue
    .line 5066
    sget-object v0, Ljbv;->b:[Ljbv;

    if-nez v0, :cond_1

    .line 5067
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5069
    :try_start_0
    sget-object v0, Ljbv;->b:[Ljbv;

    if-nez v0, :cond_0

    .line 5070
    const/4 v0, 0x0

    new-array v0, v0, [Ljbv;

    sput-object v0, Ljbv;->b:[Ljbv;

    .line 5072
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5074
    :cond_1
    sget-object v0, Ljbv;->b:[Ljbv;

    return-object v0

    .line 5072
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6118
    sparse-switch v0, :sswitch_data_0

    .line 6122
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6123
    :sswitch_0
    return-object p0

    .line 6128
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6129
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6134
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbv;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 6118
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 6129
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 5096
    iget-object v0, p0, Ljbv;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5097
    const/4 v0, 0x1

    iget-object v1, p0, Ljbv;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5099
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5100
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 5104
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5105
    iget-object v1, p0, Ljbv;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 5106
    const/4 v1, 0x1

    iget-object v2, p0, Ljbv;->a:Ljava/lang/Integer;

    .line 5107
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5109
    :cond_0
    return v0
.end method
