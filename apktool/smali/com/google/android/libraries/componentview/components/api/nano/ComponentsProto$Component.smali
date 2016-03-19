.class public final Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;


# instance fields
.field public a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

.field public b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

.field public c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Llyb;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->e:I

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->f:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->g:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 89
    iput-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    .line 90
    iput-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;

    .line 91
    iput-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->eD:Llyd;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->eE:I

    .line 93
    return-void
.end method

.method public static d()[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->d:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->d:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    sput-object v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->d:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->d:[Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    return-object v0

    .line 22
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
    .line 1147
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1148
    sparse-switch v0, :sswitch_data_0

    .line 1152
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    :sswitch_0
    return-object p0

    .line 1158
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->f:Ljava/lang/String;

    .line 1159
    iget v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->e:I

    goto :goto_0

    .line 1163
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->g:Ljava/lang/String;

    .line 1164
    iget v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->e:I

    goto :goto_0

    .line 1168
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-nez v0, :cond_1

    .line 1169
    new-instance v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1175
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    if-nez v0, :cond_2

    .line 1176
    new-instance v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    .line 1178
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1182
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;

    if-nez v0, :cond_3

    .line 1183
    new-instance v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;

    .line 1185
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1148
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 101
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-eqz v0, :cond_2

    .line 105
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    if-eqz v0, :cond_3

    .line 108
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;

    if-eqz v0, :cond_4

    .line 111
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 113
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 114
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 119
    iget v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->f:Ljava/lang/String;

    .line 121
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 124
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->g:Ljava/lang/String;

    .line 125
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-eqz v1, :cond_2

    .line 128
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 129
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    if-eqz v1, :cond_3

    .line 132
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    .line 133
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;

    if-eqz v1, :cond_4

    .line 136
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;

    .line 137
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_4
    return v0
.end method
