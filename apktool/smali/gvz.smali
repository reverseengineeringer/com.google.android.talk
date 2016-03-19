.class public Lgvz;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:I

.field private d:[Lgwb;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/os/Handler;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laak;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lgvz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgvz;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lmsw;Z)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    iput-boolean v1, p0, Lgvz;->h:Z

    .line 68
    iput-boolean v1, p0, Lgvz;->i:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lgvz;->j:I

    .line 70
    const/16 v0, 0x21

    iput v0, p0, Lgvz;->k:I

    .line 81
    iget v0, p2, Lmsw;->a:I

    iput v0, p0, Lgvz;->b:I

    .line 82
    iget v0, p2, Lmsw;->b:I

    iput v0, p0, Lgvz;->c:I

    .line 84
    if-eqz p2, :cond_0

    iget-object v0, p2, Lmsw;->c:[Lmsx;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lmsw;->c:[Lmsx;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    return-void

    .line 90
    :cond_1
    iput-boolean p3, p0, Lgvz;->h:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgvz;->g:Ljava/util/List;

    .line 92
    iput-object p1, p0, Lgvz;->e:Landroid/graphics/Bitmap;

    .line 93
    iget-object v0, p2, Lmsw;->c:[Lmsx;

    array-length v0, v0

    new-array v0, v0, [Lgwb;

    iput-object v0, p0, Lgvz;->d:[Lgwb;

    move v0, v1

    .line 95
    :goto_0
    iget-object v2, p2, Lmsw;->c:[Lmsx;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 96
    iget-object v2, p2, Lmsw;->c:[Lmsx;

    aget-object v3, v2, v0

    .line 97
    new-instance v4, Lgwb;

    .line 1055
    invoke-direct {v4, p0}, Lgwb;-><init>(Lgvz;)V

    .line 98
    iget-object v2, p0, Lgvz;->d:[Lgwb;

    aput-object v4, v2, v0

    .line 99
    iget-object v2, v3, Lmsx;->a:[Lmsv;

    if-nez v2, :cond_3

    .line 100
    new-array v2, v1, [Lgwa;

    iput-object v2, v4, Lgwb;->a:[Lgwa;

    .line 95
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_3
    iget-object v2, v3, Lmsx;->a:[Lmsv;

    array-length v2, v2

    new-array v2, v2, [Lgwa;

    iput-object v2, v4, Lgwb;->a:[Lgwa;

    move v2, v1

    .line 103
    :goto_1
    iget-object v5, v3, Lmsx;->a:[Lmsv;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 104
    iget-object v5, v3, Lmsx;->a:[Lmsv;

    aget-object v5, v5, v2

    .line 105
    new-instance v6, Landroid/graphics/Rect;

    iget v7, v5, Lmsv;->c:I

    iget v8, v5, Lmsv;->d:I

    iget v9, v5, Lmsv;->c:I

    iget v10, v5, Lmsv;->e:I

    add-int/2addr v9, v10

    iget v10, v5, Lmsv;->d:I

    iget v11, v5, Lmsv;->f:I

    add-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    iget-object v7, v4, Lgwb;->a:[Lgwa;

    new-instance v8, Lgwa;

    iget v9, v5, Lmsv;->a:I

    iget v5, v5, Lmsv;->b:I

    invoke-direct {v8, p0, v6, v9, v5}, Lgwa;-><init>(Lgvz;Landroid/graphics/Rect;II)V

    aput-object v8, v7, v2

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Lgvz;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lgvz;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lgvz;->c:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 149
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    move v0, v1

    .line 150
    :goto_0
    iget v2, p0, Lgvz;->j:I

    if-gt v0, v2, :cond_1

    .line 151
    iget-object v2, p0, Lgvz;->d:[Lgwb;

    aget-object v2, v2, v0

    iget-object v3, v2, Lgwb;->a:[Lgwa;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 152
    iget-object v6, p0, Lgvz;->e:Landroid/graphics/Bitmap;

    iget-object v7, v5, Lgwa;->a:Landroid/graphics/Rect;

    iget-object v5, v5, Lgwa;->b:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 174
    iget-boolean v1, p0, Lgvz;->i:Z

    if-nez v1, :cond_0

    .line 199
    :goto_0
    return v0

    .line 177
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    iget v1, p0, Lgvz;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgvz;->j:I

    .line 182
    iget v1, p0, Lgvz;->j:I

    iget-object v4, p0, Lgvz;->d:[Lgwb;

    array-length v4, v4

    if-lt v1, v4, :cond_2

    .line 183
    iget-boolean v1, p0, Lgvz;->h:Z

    if-eqz v1, :cond_1

    .line 184
    iput v0, p0, Lgvz;->j:I

    .line 188
    :goto_1
    iget-object v1, p0, Lgvz;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 189
    iget-object v1, p0, Lgvz;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    :cond_1
    iget-object v1, p0, Lgvz;->d:[Lgwb;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgvz;->j:I

    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {p0}, Lgvz;->invalidateSelf()V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 195
    iget-object v2, p0, Lgvz;->f:Landroid/os/Handler;

    const/16 v3, 0xa

    const-wide/16 v4, 0x0

    iget v6, p0, Lgvz;->k:I

    int-to-long v6, v6

    sub-long v0, v6, v0

    .line 196
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 195
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 197
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lgvz;->i:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 134
    if-eqz p1, :cond_2

    .line 135
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 136
    :cond_0
    invoke-virtual {p0}, Lgvz;->start()V

    .line 141
    :cond_1
    :goto_0
    return v0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lgvz;->stop()V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgvz;->i:Z

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lgvz;->f:Landroid/os/Handler;

    .line 117
    iget-object v0, p0, Lgvz;->f:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgvz;->i:Z

    .line 123
    iget-object v0, p0, Lgvz;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
