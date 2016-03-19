.class public final Ljev;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljev;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Ljev;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    const/high16 v0, -0x80000000

    iput v0, p0, Ljev;->a:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Ljev;->eD:Llyd;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Ljev;->eE:I

    .line 41
    return-void
.end method

.method public static d()[Ljev;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Ljev;->b:[Ljev;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Ljev;->b:[Ljev;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Ljev;

    sput-object v0, Ljev;->b:[Ljev;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Ljev;->b:[Ljev;

    return-object v0

    .line 27
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
    .line 1067
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1068
    sparse-switch v0, :sswitch_data_0

    .line 1072
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    :sswitch_0
    return-object p0

    .line 1078
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1079
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1085
    :pswitch_0
    iput v0, p0, Ljev;->a:I

    goto :goto_0

    .line 1068
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 1079
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Ljev;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 47
    const/4 v0, 0x1

    iget v1, p0, Ljev;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 49
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 50
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 55
    iget v1, p0, Ljev;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 56
    const/4 v1, 0x1

    iget v2, p0, Ljev;->a:I

    .line 57
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_0
    return v0
.end method
