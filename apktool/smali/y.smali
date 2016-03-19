.class public Ly;
.super Laen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Laen;"
    }
.end annotation


# instance fields
.field private a:Z

.field b:Lqa;

.field c:Lfhz;

.field d:I

.field e:F

.field f:F

.field g:F

.field private ku:F

.field private kv:Z

.field private final kw:Lqd;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Laen;-><init>()V

    .line 84
    iput v1, p0, Ly;->ku:F

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Ly;->d:I

    .line 88
    iput v2, p0, Ly;->e:F

    .line 89
    iput v1, p0, Ly;->f:F

    .line 90
    iput v2, p0, Ly;->g:F

    .line 212
    new-instance v0, Lz;

    invoke-direct {v0, p0}, Lz;-><init>(Ly;)V

    iput-object v0, p0, Ly;->kw:Lqd;

    .line 348
    return-void
.end method

.method static a(FFF)F
    .locals 2

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput v0, p0, Ly;->d:I

    .line 127
    return-void
.end method

.method public a(Lfhz;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Ly;->c:Lfhz;

    .line 117
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Ly;->b:Lqa;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Ly;->b:Lqa;

    invoke-virtual {v0, p1}, Lqa;->b(Landroid/view/MotionEvent;)V

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lk;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-static {p3}, Ljx;->a(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v0, v2}, Lk;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ly;->a:Z

    .line 185
    :cond_0
    iget-boolean v0, p0, Ly;->a:Z

    if-eqz v0, :cond_2

    .line 190
    :goto_1
    return v1

    .line 174
    :pswitch_1
    iget-boolean v0, p0, Ly;->a:Z

    if-eqz v0, :cond_0

    .line 175
    iput-boolean v1, p0, Ly;->a:Z

    goto :goto_1

    :cond_1
    move v0, v1

    .line 180
    goto :goto_0

    .line 1341
    :cond_2
    iget-object v0, p0, Ly;->b:Lqa;

    if-nez v0, :cond_3

    .line 1342
    iget-boolean v0, p0, Ly;->kv:Z

    if-eqz v0, :cond_4

    iget v0, p0, Ly;->ku:F

    iget-object v1, p0, Ly;->kw:Lqd;

    invoke-static {p1, v0, v1}, Lqa;->a(Landroid/view/ViewGroup;FLqd;)Lqa;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Ly;->b:Lqa;

    .line 190
    :cond_3
    iget-object v0, p0, Ly;->b:Lqa;

    invoke-virtual {v0, p3}, Lqa;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 1342
    :cond_4
    iget-object v0, p0, Ly;->kw:Lqd;

    invoke-static {p1, v0}, Lqa;->a(Landroid/view/ViewGroup;Lqd;)Lqa;

    move-result-object v0

    goto :goto_2

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Ly;->a(FFF)F

    move-result v0

    iput v0, p0, Ly;->f:F

    .line 145
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 153
    const/4 v0, 0x0

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Ly;->a(FFF)F

    move-result v0

    iput v0, p0, Ly;->g:F

    .line 154
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Ly;->b:Lqa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly;->b:Lqa;

    invoke-virtual {v0}, Lqa;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
