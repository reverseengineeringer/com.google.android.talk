.class public final Llve;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llve;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Llve;


# instance fields
.field public a:[B

.field public b:Ljava/lang/Integer;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Llyb;-><init>()V

    .line 46
    iput-object v1, p0, Llve;->a:[B

    .line 47
    iput-object v1, p0, Llve;->b:Ljava/lang/Integer;

    .line 48
    const/high16 v0, -0x80000000

    iput v0, p0, Llve;->c:I

    .line 49
    iput-object v1, p0, Llve;->eD:Llyd;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Llve;->eE:I

    .line 51
    return-void
.end method

.method public static d()[Llve;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Llve;->d:[Llve;

    if-nez v0, :cond_1

    .line 24
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Llve;->d:[Llve;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Llve;

    sput-object v0, Llve;->d:[Llve;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Llve;->d:[Llve;

    return-object v0

    .line 29
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
    .line 1091
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1092
    sparse-switch v0, :sswitch_data_0

    .line 1096
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    :sswitch_0
    return-object p0

    .line 1102
    :sswitch_1
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Llve;->a:[B

    goto :goto_0

    .line 1106
    :sswitch_2
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llve;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1110
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1111
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1119
    :pswitch_1
    iput v0, p0, Llve;->c:I

    goto :goto_0

    .line 1092
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 1111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Llve;->a:[B

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iget-object v1, p0, Llve;->a:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 59
    :cond_0
    iget-object v0, p0, Llve;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x2

    iget-object v1, p0, Llve;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 62
    :cond_1
    iget v0, p0, Llve;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 63
    const/4 v0, 0x3

    iget v1, p0, Llve;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 65
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 66
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 71
    iget-object v1, p0, Llve;->a:[B

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x1

    iget-object v2, p0, Llve;->a:[B

    .line 73
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_0
    iget-object v1, p0, Llve;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 76
    const/4 v1, 0x2

    iget-object v2, p0, Llve;->b:Ljava/lang/Integer;

    .line 77
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_1
    iget v1, p0, Llve;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 80
    const/4 v1, 0x3

    iget v2, p0, Llve;->c:I

    .line 81
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_2
    return v0
.end method
