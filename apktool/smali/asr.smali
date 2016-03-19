.class final Lasr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lahw;

.field private final b:Laik;

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Last;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Lahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lahu",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lass;

.field private j:Z

.field private k:Lass;

.field private l:Landroid/graphics/Bitmap;

.field private m:Lajd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lahw;Laik;Lahu;Lajd;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahu",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lasr;->e:Ljava/util/List;

    .line 39
    iput-boolean v1, p0, Lasr;->f:Z

    .line 40
    iput-boolean v1, p0, Lasr;->g:Z

    .line 65
    iput-object p2, p0, Lasr;->a:Lahw;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lasu;

    .line 3228
    invoke-direct {v2, p0}, Lasu;-><init>(Lasr;)V

    .line 67
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 69
    iput-object p1, p0, Lasr;->d:Landroid/content/Context;

    .line 70
    iput-object v0, p0, Lasr;->c:Landroid/os/Handler;

    .line 71
    iput-object p4, p0, Lasr;->h:Lahu;

    .line 73
    iput-object p3, p0, Lasr;->b:Laik;

    .line 75
    invoke-virtual {p0, p5, p6}, Lasr;->a(Lajd;Landroid/graphics/Bitmap;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laik;IILajd;Landroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Laik;",
            "II",
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2068
    sget-object v0, Latr;->a:Latr;

    .line 1419
    invoke-virtual {v0, p1}, Latr;->a(Landroid/content/Context;)Lahw;

    move-result-object v2

    .line 3068
    sget-object v0, Latr;->a:Latr;

    .line 2419
    invoke-virtual {v0, p1}, Latr;->a(Landroid/content/Context;)Lahw;

    move-result-object v0

    .line 2272
    invoke-virtual {v0}, Lahw;->g()Lahu;

    move-result-object v1

    sget-object v0, Lakr;->b:Lakr;

    .line 2273
    invoke-static {v0}, Lauk;->b(Lakr;)Lauk;

    move-result-object v0

    invoke-virtual {v0}, Lauk;->a()Laug;

    move-result-object v0

    check-cast v0, Lauk;

    invoke-virtual {v0, p3, p4}, Lauk;->a(II)Laug;

    move-result-object v0

    .line 2272
    invoke-virtual {v1, v0}, Lahu;->a(Laug;)Lahu;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    move-object v6, p6

    .line 54
    invoke-direct/range {v0 .. v6}, Lasr;-><init>(Landroid/content/Context;Lahw;Laik;Lahu;Lajd;Landroid/graphics/Bitmap;)V

    .line 59
    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    .line 181
    iget-boolean v0, p0, Lasr;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lasr;->g:Z

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lasr;->g:Z

    .line 187
    iget-object v0, p0, Lasr;->b:Laik;

    invoke-virtual {v0}, Laik;->c()I

    move-result v0

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 190
    iget-object v2, p0, Lasr;->b:Laik;

    invoke-virtual {v2}, Laik;->b()V

    .line 191
    new-instance v2, Lass;

    iget-object v3, p0, Lasr;->c:Landroid/os/Handler;

    iget-object v4, p0, Lasr;->b:Laik;

    invoke-virtual {v4}, Laik;->e()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lass;-><init>(Landroid/os/Handler;IJ)V

    iput-object v2, p0, Lasr;->k:Lass;

    .line 192
    iget-object v0, p0, Lasr;->h:Lahu;

    invoke-virtual {v0}, Lahu;->a()Lahu;

    move-result-object v0

    new-instance v1, Lasv;

    invoke-direct {v1}, Lasv;-><init>()V

    invoke-static {v1}, Lauk;->b(Laiw;)Lauk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lahu;->a(Laug;)Lahu;

    move-result-object v0

    iget-object v1, p0, Lasr;->b:Laik;

    invoke-virtual {v0, v1}, Lahu;->a(Ljava/lang/Object;)Lahu;

    move-result-object v0

    iget-object v1, p0, Lasr;->k:Lass;

    invoke-virtual {v0, v1}, Lahu;->a(Lauw;)Lauw;

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lasr;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lasr;->d:Landroid/content/Context;

    invoke-static {v0}, Lahk;->a(Landroid/content/Context;)Lahk;

    move-result-object v0

    invoke-virtual {v0}, Lahk;->a()Lamd;

    move-result-object v0

    iget-object v1, p0, Lasr;->l:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lamd;->a(Landroid/graphics/Bitmap;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lasr;->l:Landroid/graphics/Bitmap;

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lasr;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method a(Lajd;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    check-cast v0, Lajd;

    iput-object v0, p0, Lasr;->m:Lajd;

    .line 5023
    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lasr;->l:Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lasr;->h:Lahu;

    new-instance v1, Lauk;

    invoke-direct {v1}, Lauk;-><init>()V

    iget-object v2, p0, Lasr;->d:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lauk;->a(Landroid/content/Context;Lajd;)Laug;

    move-result-object v1

    invoke-virtual {v0, v1}, Lahu;->a(Laug;)Lahu;

    move-result-object v0

    iput-object v0, p0, Lasr;->h:Lahu;

    .line 82
    return-void
.end method

.method a(Lass;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 204
    iget-boolean v0, p0, Lasr;->j:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lasr;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 226
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Lass;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    invoke-direct {p0}, Lasr;->k()V

    .line 211
    iget-object v2, p0, Lasr;->i:Lass;

    .line 212
    iput-object p1, p0, Lasr;->i:Lass;

    .line 215
    iget-object v0, p0, Lasr;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 216
    iget-object v0, p0, Lasr;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Last;

    .line 217
    invoke-interface {v0}, Last;->f()V

    .line 215
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 219
    :cond_1
    if-eqz v2, :cond_2

    .line 220
    iget-object v0, p0, Lasr;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasr;->g:Z

    .line 225
    invoke-direct {p0}, Lasr;->j()V

    goto :goto_0
.end method

.method a(Last;)V
    .locals 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lasr;->j:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a cleared frame loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lasr;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 97
    iget-object v1, p0, Lasr;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe twice in a row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    iget-object v1, p0, Lasr;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    if-eqz v0, :cond_2

    .line 5147
    iget-boolean v0, p0, Lasr;->f:Z

    if-nez v0, :cond_2

    .line 5150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lasr;->f:Z

    .line 5151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasr;->j:Z

    .line 5153
    invoke-direct {p0}, Lasr;->j()V

    .line 104
    :cond_2
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lasr;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method b(Last;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lasr;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lasr;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasr;->f:Z

    .line 111
    :cond_0
    return-void
.end method

.method c()I
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lasr;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method d()I
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lasr;->b:Laik;

    invoke-virtual {v0}, Laik;->f()I

    move-result v0

    .line 6130
    invoke-virtual {p0}, Lasr;->i()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lasr;->i()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 6131
    invoke-virtual {p0}, Lasr;->i()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 6130
    invoke-static {v1, v2, v3}, Lavq;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v1

    .line 122
    add-int/2addr v0, v1

    return v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lasr;->i:Lass;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasr;->i:Lass;

    .line 6247
    iget v0, v0, Lass;->a:I

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method f()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lasr;->b:Laik;

    invoke-virtual {v0}, Laik;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lasr;->b:Laik;

    invoke-virtual {v0}, Laik;->d()I

    move-result v0

    return v0
.end method

.method h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lasr;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    invoke-direct {p0}, Lasr;->k()V

    .line 7157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasr;->f:Z

    .line 164
    iget-object v0, p0, Lasr;->i:Lass;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lasr;->a:Lahw;

    iget-object v1, p0, Lasr;->i:Lass;

    invoke-virtual {v0, v1}, Lahw;->a(Lauw;)V

    .line 166
    iput-object v2, p0, Lasr;->i:Lass;

    .line 168
    :cond_0
    iget-object v0, p0, Lasr;->k:Lass;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lasr;->a:Lahw;

    iget-object v1, p0, Lasr;->k:Lass;

    invoke-virtual {v0, v1}, Lahw;->a(Lauw;)V

    .line 170
    iput-object v2, p0, Lasr;->k:Lass;

    .line 172
    :cond_1
    iget-object v0, p0, Lasr;->b:Laik;

    invoke-virtual {v0}, Laik;->h()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lasr;->j:Z

    .line 174
    return-void
.end method

.method i()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lasr;->i:Lass;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasr;->i:Lass;

    invoke-virtual {v0}, Lass;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lasr;->l:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
