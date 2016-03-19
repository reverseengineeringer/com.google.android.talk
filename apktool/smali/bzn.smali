.class public final Lbzn;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field private b:[Lbzp;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lbzo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    iput v0, p0, Lbzn;->c:I

    .line 77
    iput v0, p0, Lbzn;->d:I

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzn;->e:Z

    .line 82
    iput-object p1, p0, Lbzn;->a:Landroid/content/Context;

    .line 83
    new-instance v0, Lbzo;

    .line 1060
    invoke-direct {v0, p0}, Lbzo;-><init>(Lbzn;)V

    .line 83
    iput-object v0, p0, Lbzn;->f:Lbzo;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Lbzp;

    iput-object v0, p0, Lbzn;->b:[Lbzp;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lccv;Lccx;)V
    .locals 2

    .prologue
    .line 2031
    invoke-direct {p0, p1}, Lbzn;-><init>(Landroid/content/Context;)V

    .line 2033
    new-instance v0, Lbzp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lbzp;-><init>(Lbzn;ZLandroid/widget/BaseAdapter;)V

    invoke-direct {p0, v0}, Lbzn;->a(Lbzp;)V

    .line 2034
    new-instance v0, Lccy;

    invoke-direct {v0, p0, p3}, Lccy;-><init>(Lbzn;Landroid/widget/BaseAdapter;)V

    invoke-direct {p0, v0}, Lbzn;->a(Lbzp;)V

    .line 2035
    return-void
.end method

.method private a(Lbzp;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget v0, p0, Lbzn;->c:I

    iget-object v1, p0, Lbzn;->b:[Lbzp;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 93
    iget v0, p0, Lbzn;->c:I

    add-int/lit8 v0, v0, 0x2

    .line 94
    new-array v0, v0, [Lbzp;

    .line 95
    iget-object v1, p0, Lbzn;->b:[Lbzp;

    iget v2, p0, Lbzn;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iput-object v0, p0, Lbzn;->b:[Lbzp;

    .line 98
    :cond_0
    iget-object v0, p0, Lbzn;->b:[Lbzp;

    iget v1, p0, Lbzn;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbzn;->c:I

    aput-object p1, v0, v1

    .line 99
    invoke-virtual {p1}, Lbzp;->d()Landroid/widget/BaseAdapter;

    move-result-object v0

    iget-object v1, p0, Lbzn;->f:Lbzo;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 100
    invoke-direct {p0}, Lbzn;->c()V

    .line 101
    invoke-virtual {p0}, Lbzn;->notifyDataSetChanged()V

    .line 102
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbzn;->e:Z

    .line 156
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-boolean v1, p0, Lbzn;->e:Z

    if-eqz v1, :cond_1

    .line 166
    :cond_0
    return-void

    .line 162
    :cond_1
    iput v0, p0, Lbzn;->d:I

    .line 163
    :goto_0
    iget v1, p0, Lbzn;->c:I

    if-ge v0, v1, :cond_0

    .line 164
    iget v1, p0, Lbzn;->d:I

    iget-object v2, p0, Lbzn;->b:[Lbzp;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lbzp;->c()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lbzn;->d:I

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lbzn;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbzn;->c:I

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lbzn;->b:[Lbzp;

    aget-object v1, v1, v0

    .line 118
    invoke-virtual {v1}, Lbzp;->e()V

    .line 119
    invoke-virtual {v1}, Lbzp;->d()Landroid/widget/BaseAdapter;

    move-result-object v1

    iget-object v2, p0, Lbzn;->f:Lbzo;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lbzn;->c()V

    .line 122
    invoke-virtual {p0}, Lbzn;->notifyDataSetChanged()V

    .line 123
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lbzn;->d()V

    .line 171
    iget v0, p0, Lbzn;->d:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0}, Lbzn;->d()V

    move v1, v0

    .line 183
    :goto_0
    iget v2, p0, Lbzn;->c:I

    if-ge v0, v2, :cond_3

    .line 184
    iget-object v2, p0, Lbzn;->b:[Lbzp;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lbzp;->c()I

    move-result v2

    add-int/2addr v2, v1

    .line 185
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 186
    sub-int v1, p1, v1

    .line 187
    iget-object v2, p0, Lbzn;->b:[Lbzp;

    aget-object v2, v2, v0

    .line 188
    invoke-virtual {v2}, Lbzp;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {v2}, Lbzp;->c()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v2}, Lbzp;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v3

    .line 198
    :goto_1
    return-object v0

    .line 193
    :cond_1
    iget-object v2, p0, Lbzn;->b:[Lbzp;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lbzp;->d()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 198
    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Lbzn;->d()V

    move v1, v0

    .line 205
    :goto_0
    iget v2, p0, Lbzn;->c:I

    if-ge v0, v2, :cond_3

    .line 206
    iget-object v2, p0, Lbzn;->b:[Lbzp;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lbzp;->c()I

    move-result v2

    add-int/2addr v2, v1

    .line 207
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 208
    sub-int v1, p1, v1

    .line 209
    iget-object v2, p0, Lbzn;->b:[Lbzp;

    aget-object v2, v2, v0

    .line 210
    invoke-virtual {v2}, Lbzp;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 211
    invoke-virtual {v2}, Lbzp;->c()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Lbzp;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-wide v0, v4

    .line 220
    :goto_1
    return-wide v0

    .line 215
    :cond_1
    iget-object v2, p0, Lbzn;->b:[Lbzp;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lbzp;->d()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_1

    .line 205
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_3
    move-wide v0, v4

    .line 220
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-direct {p0}, Lbzn;->d()V

    move v1, v0

    .line 227
    :goto_0
    iget v2, p0, Lbzn;->c:I

    if-ge v0, v2, :cond_3

    .line 228
    iget-object v2, p0, Lbzn;->b:[Lbzp;

    aget-object v3, v2, v0

    .line 229
    invoke-virtual {v3}, Lbzp;->c()I

    move-result v2

    add-int/2addr v2, v1

    .line 230
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 231
    sub-int v1, p1, v1

    .line 233
    invoke-virtual {v3}, Lbzp;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 234
    invoke-virtual {v3}, Lbzp;->c()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v3}, Lbzp;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 235
    :cond_0
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    .line 237
    :goto_1
    const/4 v1, -0x1

    if-ne v2, v1, :cond_1

    .line 238
    invoke-virtual {v3, p2, p3}, Lbzp;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 242
    :goto_2
    if-nez v1, :cond_4

    .line 243
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x45

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "View should not be null, partition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " position: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_1
    invoke-virtual {v3}, Lbzp;->d()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1, v2, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 227
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 251
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 246
    :cond_4
    return-object v1

    :cond_5
    move v2, v1

    goto :goto_1
.end method
