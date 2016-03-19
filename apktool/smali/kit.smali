.class public final Lkit;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkit;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lkit;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2077
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3082
    iput-object v0, p0, Lkit;->a:Ljava/lang/Integer;

    .line 3083
    iput-object v0, p0, Lkit;->b:Ljava/lang/String;

    .line 3084
    iput-object v0, p0, Lkit;->c:Ljava/lang/String;

    .line 3085
    iput-object v0, p0, Lkit;->d:Ljava/lang/Integer;

    .line 3086
    iput-object v0, p0, Lkit;->eD:Llyd;

    .line 3087
    const/4 v0, -0x1

    iput v0, p0, Lkit;->eE:I

    .line 2079
    return-void
.end method

.method public static d()[Lkit;
    .locals 2

    .prologue
    .line 2052
    sget-object v0, Lkit;->e:[Lkit;

    if-nez v0, :cond_1

    .line 2053
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2055
    :try_start_0
    sget-object v0, Lkit;->e:[Lkit;

    if-nez v0, :cond_0

    .line 2056
    const/4 v0, 0x0

    new-array v0, v0, [Lkit;

    sput-object v0, Lkit;->e:[Lkit;

    .line 2058
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2060
    :cond_1
    sget-object v0, Lkit;->e:[Lkit;

    return-object v0

    .line 2058
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
    .line 3136
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3137
    sparse-switch v0, :sswitch_data_0

    .line 3141
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3142
    :sswitch_0
    return-object p0

    .line 3147
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3148
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3151
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkit;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3157
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkit;->b:Ljava/lang/String;

    goto :goto_0

    .line 3161
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkit;->c:Ljava/lang/String;

    goto :goto_0

    .line 3165
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkit;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 3137
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 3148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2094
    iget-object v0, p0, Lkit;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2095
    const/4 v0, 0x1

    iget-object v1, p0, Lkit;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2097
    :cond_0
    iget-object v0, p0, Lkit;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2098
    const/4 v0, 0x2

    iget-object v1, p0, Lkit;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2100
    :cond_1
    iget-object v0, p0, Lkit;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2101
    const/4 v0, 0x3

    iget-object v1, p0, Lkit;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2103
    :cond_2
    iget-object v0, p0, Lkit;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 2104
    const/4 v0, 0x4

    iget-object v1, p0, Lkit;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2106
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2107
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2111
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2112
    iget-object v1, p0, Lkit;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2113
    const/4 v1, 0x1

    iget-object v2, p0, Lkit;->a:Ljava/lang/Integer;

    .line 2114
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2116
    :cond_0
    iget-object v1, p0, Lkit;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2117
    const/4 v1, 0x2

    iget-object v2, p0, Lkit;->b:Ljava/lang/String;

    .line 2118
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2120
    :cond_1
    iget-object v1, p0, Lkit;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2121
    const/4 v1, 0x3

    iget-object v2, p0, Lkit;->c:Ljava/lang/String;

    .line 2122
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2124
    :cond_2
    iget-object v1, p0, Lkit;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 2125
    const/4 v1, 0x4

    iget-object v2, p0, Lkit;->d:Ljava/lang/Integer;

    .line 2126
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2128
    :cond_3
    return v0
.end method
