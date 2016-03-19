.class public final Llsu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llsu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Llsu;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Llyb;-><init>()V

    .line 29
    const/high16 v0, -0x80000000

    iput v0, p0, Llsu;->a:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Llsu;->eD:Llyd;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Llsu;->eE:I

    .line 32
    return-void
.end method

.method public static d()[Llsu;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llsu;->b:[Llsu;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llsu;->b:[Llsu;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llsu;

    sput-object v0, Llsu;->b:[Llsu;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llsu;->b:[Llsu;

    return-object v0

    .line 18
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
    .line 1058
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1059
    sparse-switch v0, :sswitch_data_0

    .line 1063
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    :sswitch_0
    return-object p0

    .line 1069
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1070
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1074
    :pswitch_0
    iput v0, p0, Llsu;->a:I

    goto :goto_0

    .line 1059
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 1070
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
    .line 37
    iget v0, p0, Llsu;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 38
    const/4 v0, 0x1

    iget v1, p0, Llsu;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 40
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 41
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 46
    iget v1, p0, Llsu;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 47
    const/4 v1, 0x1

    iget v2, p0, Llsu;->a:I

    .line 48
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_0
    return v0
.end method
