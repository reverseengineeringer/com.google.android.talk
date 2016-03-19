.class public final Laad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/google/android/apps/hangouts/peoplelistv2/impl/FastScrollingRecyclerView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/peoplelistv2/impl/FastScrollingRecyclerView;)V
    .locals 0

    .prologue
    .line 4054
    iput-object p1, p0, Laad;->b:Lcom/google/android/apps/hangouts/peoplelistv2/impl/FastScrollingRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 3068
    iget-boolean v0, p0, Laad;->a:Z

    if-eqz v0, :cond_0

    .line 3069
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3080
    :cond_0
    :goto_0
    return-void

    .line 3072
    :pswitch_0
    iget-object v0, p0, Laad;->b:Lcom/google/android/apps/hangouts/peoplelistv2/impl/FastScrollingRecyclerView;

    .line 3073
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/peoplelistv2/impl/FastScrollingRecyclerView;->c()Lzu;

    move-result-object v0

    invoke-virtual {v0}, Lzu;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Laad;->b:Lcom/google/android/apps/hangouts/peoplelistv2/impl/FastScrollingRecyclerView;

    .line 4012
    iget v1, v1, Lcom/google/android/apps/hangouts/peoplelistv2/impl/FastScrollingRecyclerView;->C:I

    .line 3073
    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 3072
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->b(I)V

    goto :goto_0

    .line 3076
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Laad;->a:Z

    goto :goto_0

    .line 3069
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Laad;->b:Lcom/google/android/apps/hangouts/peoplelistv2/impl/FastScrollingRecyclerView;

    .line 2012
    iget v2, v2, Lcom/google/android/apps/hangouts/peoplelistv2/impl/FastScrollingRecyclerView;->B:I

    .line 1059
    iget-object v3, p0, Laad;->b:Lcom/google/android/apps/hangouts/peoplelistv2/impl/FastScrollingRecyclerView;

    .line 3012
    iget v3, v3, Lcom/google/android/apps/hangouts/peoplelistv2/impl/FastScrollingRecyclerView;->A:I

    .line 1059
    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1060
    iput-boolean v0, p0, Laad;->a:Z

    .line 1063
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
