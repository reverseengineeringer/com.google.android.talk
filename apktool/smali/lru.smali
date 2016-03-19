.class public final Llru;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llru;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Llru;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Llyb;-><init>()V

    .line 43
    iput-object v1, p0, Llru;->a:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Llru;->b:Ljava/lang/String;

    .line 45
    const/high16 v0, -0x80000000

    iput v0, p0, Llru;->c:I

    .line 46
    iput-object v1, p0, Llru;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Llru;->eE:I

    .line 48
    return-void
.end method

.method public static d()[Llru;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Llru;->d:[Llru;

    if-nez v0, :cond_1

    .line 21
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Llru;->d:[Llru;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Llru;

    sput-object v0, Llru;->d:[Llru;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Llru;->d:[Llru;

    return-object v0

    .line 26
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
    .line 1088
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1089
    sparse-switch v0, :sswitch_data_0

    .line 1093
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    :sswitch_0
    return-object p0

    .line 1099
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llru;->a:Ljava/lang/String;

    goto :goto_0

    .line 1103
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llru;->b:Ljava/lang/String;

    goto :goto_0

    .line 1107
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1108
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1113
    :pswitch_0
    iput v0, p0, Llru;->c:I

    goto :goto_0

    .line 1089
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 1108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Llru;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Llru;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 56
    :cond_0
    iget-object v0, p0, Llru;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iget-object v1, p0, Llru;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 59
    :cond_1
    iget v0, p0, Llru;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 60
    const/4 v0, 0x3

    iget v1, p0, Llru;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 62
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 63
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 68
    iget-object v1, p0, Llru;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x1

    iget-object v2, p0, Llru;->a:Ljava/lang/String;

    .line 70
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_0
    iget-object v1, p0, Llru;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 73
    const/4 v1, 0x2

    iget-object v2, p0, Llru;->b:Ljava/lang/String;

    .line 74
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_1
    iget v1, p0, Llru;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 77
    const/4 v1, 0x3

    iget v2, p0, Llru;->c:I

    .line 78
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_2
    return v0
.end method
