.class public final Ljxl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Ljxl;


# instance fields
.field public a:Ljxj;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22103
    invoke-direct {p0}, Llyb;-><init>()V

    .line 23108
    iput-object v0, p0, Ljxl;->a:Ljxj;

    .line 23109
    iput-object v0, p0, Ljxl;->b:Ljava/lang/Integer;

    .line 23110
    iput-object v0, p0, Ljxl;->c:Ljava/lang/Long;

    .line 23111
    iput-object v0, p0, Ljxl;->eD:Llyd;

    .line 23112
    const/4 v0, -0x1

    iput v0, p0, Ljxl;->eE:I

    .line 22105
    return-void
.end method

.method public static d()[Ljxl;
    .locals 2

    .prologue
    .line 22081
    sget-object v0, Ljxl;->d:[Ljxl;

    if-nez v0, :cond_1

    .line 22082
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22084
    :try_start_0
    sget-object v0, Ljxl;->d:[Ljxl;

    if-nez v0, :cond_0

    .line 22085
    const/4 v0, 0x0

    new-array v0, v0, [Ljxl;

    sput-object v0, Ljxl;->d:[Ljxl;

    .line 22087
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22089
    :cond_1
    sget-object v0, Ljxl;->d:[Ljxl;

    return-object v0

    .line 22087
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
    .locals 2

    .prologue
    .line 23154
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 23155
    sparse-switch v0, :sswitch_data_0

    .line 23159
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23160
    :sswitch_0
    return-object p0

    .line 23165
    :sswitch_1
    iget-object v0, p0, Ljxl;->a:Ljxj;

    if-nez v0, :cond_1

    .line 23166
    new-instance v0, Ljxj;

    invoke-direct {v0}, Ljxj;-><init>()V

    iput-object v0, p0, Ljxl;->a:Ljxj;

    .line 23168
    :cond_1
    iget-object v0, p0, Ljxl;->a:Ljxj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 23172
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 23173
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 23179
    :sswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljxl;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 23185
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljxl;->c:Ljava/lang/Long;

    goto :goto_0

    .line 23155
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_4
    .end sparse-switch

    .line 23173
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0xa -> :sswitch_3
        0x14 -> :sswitch_3
        0x1e -> :sswitch_3
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 22119
    iget-object v0, p0, Ljxl;->a:Ljxj;

    if-eqz v0, :cond_0

    .line 22120
    const/4 v0, 0x1

    iget-object v1, p0, Ljxl;->a:Ljxj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 22122
    :cond_0
    iget-object v0, p0, Ljxl;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 22123
    const/4 v0, 0x2

    iget-object v1, p0, Ljxl;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 22125
    :cond_1
    iget-object v0, p0, Ljxl;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 22126
    const/4 v0, 0x3

    iget-object v1, p0, Ljxl;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 22128
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 22129
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 22133
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 22134
    iget-object v1, p0, Ljxl;->a:Ljxj;

    if-eqz v1, :cond_0

    .line 22135
    const/4 v1, 0x1

    iget-object v2, p0, Ljxl;->a:Ljxj;

    .line 22136
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22138
    :cond_0
    iget-object v1, p0, Ljxl;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 22139
    const/4 v1, 0x2

    iget-object v2, p0, Ljxl;->b:Ljava/lang/Integer;

    .line 22140
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22142
    :cond_1
    iget-object v1, p0, Ljxl;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 22143
    const/4 v1, 0x3

    iget-object v2, p0, Ljxl;->c:Ljava/lang/Long;

    .line 22144
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22146
    :cond_2
    return v0
.end method
