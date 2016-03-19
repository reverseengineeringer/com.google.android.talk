.class public final Lfdt;
.super Lfdu;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/MultiLineLayout;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lfdt;->a:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    .line 1033
    invoke-direct {p0, p1}, Lfdu;-><init>(Lcom/google/android/apps/hangouts/views/MultiLineLayout;)V

    .line 84
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 111
    invoke-super {p0, p1}, Lfdu;->a(I)V

    .line 113
    iget v0, p0, Lfdt;->c:I

    iget-object v1, p0, Lfdt;->a:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lfdt;->c:I

    .line 114
    iget v0, p0, Lfdt;->d:I

    iget-object v1, p0, Lfdt;->a:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lfdt;->d:I

    .line 115
    iget-object v0, p0, Lfdt;->a:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    iget v1, p0, Lfdt;->c:I

    iget v2, p0, Lfdt;->e:I

    .line 116
    invoke-static {v1, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    iget v2, p0, Lfdt;->d:I

    iget v3, p0, Lfdt;->f:I

    .line 117
    invoke-static {v2, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    .line 115
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->a(Lcom/google/android/apps/hangouts/views/MultiLineLayout;II)V

    .line 118
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lfdt;->c:I

    .line 92
    iput v0, p0, Lfdt;->d:I

    .line 93
    iput p1, p0, Lfdt;->e:I

    .line 94
    iput p2, p0, Lfdt;->f:I

    .line 95
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lfdt;->a:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    iget v1, p0, Lfdt;->e:I

    iget v2, p0, Lfdt;->f:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->a(Lcom/google/android/apps/hangouts/views/MultiLineLayout;Landroid/view/View;II)V

    .line 100
    return-void
.end method

.method protected a(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lfdt;->c:I

    add-int v1, p2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfdt;->c:I

    .line 106
    iget v0, p0, Lfdt;->d:I

    add-int v1, p3, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfdt;->d:I

    .line 107
    return-void
.end method
