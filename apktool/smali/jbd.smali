.class public final Ljbd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbd;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljbd;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljbe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4133
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5138
    iput-object v0, p0, Ljbd;->a:Ljava/lang/String;

    .line 5139
    iput-object v0, p0, Ljbd;->b:Ljbe;

    .line 5140
    iput-object v0, p0, Ljbd;->eD:Llyd;

    .line 5141
    const/4 v0, -0x1

    iput v0, p0, Ljbd;->eE:I

    .line 4135
    return-void
.end method

.method public static d()[Ljbd;
    .locals 2

    .prologue
    .line 4114
    sget-object v0, Ljbd;->c:[Ljbd;

    if-nez v0, :cond_1

    .line 4115
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4117
    :try_start_0
    sget-object v0, Ljbd;->c:[Ljbd;

    if-nez v0, :cond_0

    .line 4118
    const/4 v0, 0x0

    new-array v0, v0, [Ljbd;

    sput-object v0, Ljbd;->c:[Ljbd;

    .line 4120
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4122
    :cond_1
    sget-object v0, Ljbd;->c:[Ljbd;

    return-object v0

    .line 4120
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
    .line 5176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5177
    sparse-switch v0, :sswitch_data_0

    .line 5181
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5182
    :sswitch_0
    return-object p0

    .line 5187
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbd;->a:Ljava/lang/String;

    goto :goto_0

    .line 5191
    :sswitch_2
    iget-object v0, p0, Ljbd;->b:Ljbe;

    if-nez v0, :cond_1

    .line 5192
    new-instance v0, Ljbe;

    invoke-direct {v0}, Ljbe;-><init>()V

    iput-object v0, p0, Ljbd;->b:Ljbe;

    .line 5194
    :cond_1
    iget-object v0, p0, Ljbd;->b:Ljbe;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5177
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 4148
    iget-object v0, p0, Ljbd;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4149
    const/4 v0, 0x1

    iget-object v1, p0, Ljbd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4151
    :cond_0
    iget-object v0, p0, Ljbd;->b:Ljbe;

    if-eqz v0, :cond_1

    .line 4152
    const/4 v0, 0x2

    iget-object v1, p0, Ljbd;->b:Ljbe;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4154
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4155
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4159
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4160
    iget-object v1, p0, Ljbd;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4161
    const/4 v1, 0x1

    iget-object v2, p0, Ljbd;->a:Ljava/lang/String;

    .line 4162
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4164
    :cond_0
    iget-object v1, p0, Ljbd;->b:Ljbe;

    if-eqz v1, :cond_1

    .line 4165
    const/4 v1, 0x2

    iget-object v2, p0, Ljbd;->b:Ljbe;

    .line 4166
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4168
    :cond_1
    return v0
.end method
