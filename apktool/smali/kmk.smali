.class public final Lkmk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkmk;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Lkmi;",
            "Lkmk;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[Lkmk;


# instance fields
.field public b:Llyt;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 156
    const-class v0, Lkmk;

    const-wide/32 v2, 0x2e58344a

    .line 157
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lkmk;->a:Llyc;

    .line 162
    const/4 v0, 0x0

    new-array v0, v0, [Lkmk;

    sput-object v0, Lkmk;->d:[Lkmk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1180
    iput-object v0, p0, Lkmk;->b:Llyt;

    .line 1181
    iput-object v0, p0, Lkmk;->c:Ljava/lang/String;

    .line 1182
    iput-object v0, p0, Lkmk;->eD:Llyd;

    .line 1183
    const/4 v0, -0x1

    iput v0, p0, Lkmk;->eE:I

    .line 177
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1218
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1219
    sparse-switch v0, :sswitch_data_0

    .line 1223
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    :sswitch_0
    return-object p0

    .line 1229
    :sswitch_1
    iget-object v0, p0, Lkmk;->b:Llyt;

    if-nez v0, :cond_1

    .line 1230
    new-instance v0, Llyt;

    invoke-direct {v0}, Llyt;-><init>()V

    iput-object v0, p0, Lkmk;->b:Llyt;

    .line 1232
    :cond_1
    iget-object v0, p0, Lkmk;->b:Llyt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1236
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkmk;->c:Ljava/lang/String;

    goto :goto_0

    .line 1219
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
    .line 190
    iget-object v0, p0, Lkmk;->b:Llyt;

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    iget-object v1, p0, Lkmk;->b:Llyt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lkmk;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 194
    const/4 v0, 0x2

    iget-object v1, p0, Lkmk;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 196
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 197
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 202
    iget-object v1, p0, Lkmk;->b:Llyt;

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x1

    iget-object v2, p0, Lkmk;->b:Llyt;

    .line 204
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_0
    iget-object v1, p0, Lkmk;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 207
    const/4 v1, 0x2

    iget-object v2, p0, Lkmk;->c:Ljava/lang/String;

    .line 208
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_1
    return v0
.end method
