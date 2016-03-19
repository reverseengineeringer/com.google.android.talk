.class public final Lldq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lldq;


# instance fields
.field public a:I

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Llyb;-><init>()V

    .line 45
    const/high16 v0, -0x80000000

    iput v0, p0, Lldq;->a:I

    .line 46
    iput-object v1, p0, Lldq;->b:Ljava/lang/Float;

    .line 47
    iput-object v1, p0, Lldq;->c:Ljava/lang/Float;

    .line 48
    iput-object v1, p0, Lldq;->eD:Llyd;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lldq;->eE:I

    .line 50
    return-void
.end method

.method public static d()[Lldq;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lldq;->d:[Lldq;

    if-nez v0, :cond_1

    .line 23
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lldq;->d:[Lldq;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lldq;

    sput-object v0, Lldq;->d:[Lldq;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lldq;->d:[Lldq;

    return-object v0

    .line 28
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
    .line 3090
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3091
    sparse-switch v0, :sswitch_data_0

    .line 3095
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3096
    :sswitch_0
    return-object p0

    .line 3101
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3102
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3106
    :pswitch_0
    iput v0, p0, Lldq;->a:I

    goto :goto_0

    .line 3112
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lldq;->b:Ljava/lang/Float;

    goto :goto_0

    .line 3116
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lldq;->c:Ljava/lang/Float;

    goto :goto_0

    .line 3091
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
    .end sparse-switch

    .line 3102
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
    .line 55
    iget v0, p0, Lldq;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 56
    const/4 v0, 0x1

    iget v1, p0, Lldq;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 58
    :cond_0
    iget-object v0, p0, Lldq;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 59
    const/4 v0, 0x2

    iget-object v1, p0, Lldq;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 61
    :cond_1
    iget-object v0, p0, Lldq;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 62
    const/4 v0, 0x3

    iget-object v1, p0, Lldq;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 64
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 65
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 70
    iget v1, p0, Lldq;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 71
    const/4 v1, 0x1

    iget v2, p0, Lldq;->a:I

    .line 72
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_0
    iget-object v1, p0, Lldq;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 75
    const/4 v1, 0x2

    iget-object v2, p0, Lldq;->b:Ljava/lang/Float;

    .line 76
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 76
    add-int/2addr v0, v1

    .line 78
    :cond_1
    iget-object v1, p0, Lldq;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 79
    const/4 v1, 0x3

    iget-object v2, p0, Lldq;->c:Ljava/lang/Float;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 80
    add-int/2addr v0, v1

    .line 82
    :cond_2
    return v0
.end method
