.class public Lza;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;


# instance fields
.field private final A:Lzj;

.field private final B:Lzh;

.field private C:Ljava/lang/Runnable;

.field private D:Landroid/graphics/Rect;

.field private E:Z

.field private F:I

.field private c:Landroid/content/Context;

.field d:Landroid/widget/PopupWindow;

.field e:Lzd;

.field f:I

.field final g:Lzl;

.field final h:Landroid/os/Handler;

.field private i:Landroid/widget/ListAdapter;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Landroid/view/View;

.field private t:I

.field private u:Landroid/database/DataSetObserver;

.field private v:Landroid/view/View;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/widget/AdapterView$OnItemClickListener;

.field private y:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final z:Lzk;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 83
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lza;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "getMaxAvailableHeight"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lza;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x0

    sget v1, Laen;->X:I

    invoke-direct {p0, p1, v0, v1}, Lza;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lza;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v0, p0, Lza;->j:I

    .line 103
    iput v0, p0, Lza;->k:I

    .line 106
    const/16 v0, 0x3ea

    iput v0, p0, Lza;->n:I

    .line 109
    iput v2, p0, Lza;->p:I

    .line 111
    iput-boolean v2, p0, Lza;->q:Z

    .line 112
    iput-boolean v2, p0, Lza;->r:Z

    .line 113
    const v0, 0x7fffffff

    iput v0, p0, Lza;->f:I

    .line 116
    iput v2, p0, Lza;->t:I

    .line 127
    new-instance v0, Lzl;

    .line 2790
    invoke-direct {v0, p0}, Lzl;-><init>(Lza;)V

    .line 127
    iput-object v0, p0, Lza;->g:Lzl;

    .line 128
    new-instance v0, Lzk;

    .line 2801
    invoke-direct {v0, p0}, Lzk;-><init>(Lza;)V

    .line 128
    iput-object v0, p0, Lza;->z:Lzk;

    .line 129
    new-instance v0, Lzj;

    .line 2818
    invoke-direct {v0, p0}, Lzj;-><init>(Lza;)V

    .line 129
    iput-object v0, p0, Lza;->A:Lzj;

    .line 130
    new-instance v0, Lzh;

    .line 3784
    invoke-direct {v0, p0}, Lzh;-><init>(Lza;)V

    .line 130
    iput-object v0, p0, Lza;->B:Lzh;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lza;->D:Landroid/graphics/Rect;

    .line 239
    iput-object p1, p0, Lza;->c:Landroid/content/Context;

    .line 240
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lza;->h:Landroid/os/Handler;

    .line 242
    sget-object v0, Lsb;->aI:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 244
    sget v1, Lsb;->aJ:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lza;->l:I

    .line 246
    sget v1, Lsb;->aK:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lza;->m:I

    .line 248
    iget v1, p0, Lza;->m:I

    if-eqz v1, :cond_0

    .line 249
    iput-boolean v3, p0, Lza;->o:Z

    .line 251
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    new-instance v0, Lvb;

    invoke-direct {v0, p1, p2, p3}, Lvb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    .line 254
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 257
    iget-object v0, p0, Lza;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 4143
    sget-object v1, Lhn;->a:Lho;

    invoke-virtual {v1, v0}, Lho;->a(Ljava/util/Locale;)I

    move-result v0

    .line 258
    iput v0, p0, Lza;->F:I

    .line 259
    return-void
.end method

.method private a(Landroid/view/View;IZ)I
    .locals 5

    .prologue
    .line 1848
    sget-object v0, Lza;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1850
    :try_start_0
    sget-object v0, Lza;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lza;->d:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1857
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 463
    iput p1, p0, Lza;->l:I

    .line 464
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lza;->v:Landroid/view/View;

    .line 448
    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lza;->x:Landroid/widget/AdapterView$OnItemClickListener;

    .line 567
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lza;->u:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 269
    new-instance v0, Lzi;

    .line 4769
    invoke-direct {v0, p0}, Lzi;-><init>(Lza;)V

    .line 269
    iput-object v0, p0, Lza;->u:Landroid/database/DataSetObserver;

    .line 273
    :cond_0
    :goto_0
    iput-object p1, p0, Lza;->i:Landroid/widget/ListAdapter;

    .line 274
    iget-object v0, p0, Lza;->i:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lza;->u:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 278
    :cond_1
    iget-object v0, p0, Lza;->e:Lzd;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lza;->e:Lzd;

    iget-object v1, p0, Lza;->i:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lzd;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    :cond_2
    return-void

    .line 270
    :cond_3
    iget-object v0, p0, Lza;->i:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lza;->i:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lza;->u:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 713
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 482
    iput p1, p0, Lza;->m:I

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lza;->o:Z

    .line 484
    return-void
.end method

.method public c()V
    .locals 11

    .prologue
    const/high16 v3, -0x80000000

    const/4 v10, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 5079
    iget-object v0, p0, Lza;->e:Lzd;

    if-nez v0, :cond_9

    .line 5080
    iget-object v4, p0, Lza;->c:Landroid/content/Context;

    .line 5088
    new-instance v0, Lzb;

    invoke-direct {v0, p0}, Lzb;-><init>(Lza;)V

    iput-object v0, p0, Lza;->C:Ljava/lang/Runnable;

    .line 5098
    new-instance v5, Lzd;

    iget-boolean v0, p0, Lza;->E:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    invoke-direct {v5, v4, v0}, Lzd;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lza;->e:Lzd;

    .line 5099
    iget-object v0, p0, Lza;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 5100
    iget-object v0, p0, Lza;->e:Lzd;

    iget-object v5, p0, Lza;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Lzd;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 5102
    :cond_0
    iget-object v0, p0, Lza;->e:Lzd;

    iget-object v5, p0, Lza;->i:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v5}, Lzd;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5103
    iget-object v0, p0, Lza;->e:Lzd;

    iget-object v5, p0, Lza;->x:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v5}, Lzd;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5104
    iget-object v0, p0, Lza;->e:Lzd;

    invoke-virtual {v0, v1}, Lzd;->setFocusable(Z)V

    .line 5105
    iget-object v0, p0, Lza;->e:Lzd;

    invoke-virtual {v0, v1}, Lzd;->setFocusableInTouchMode(Z)V

    .line 5106
    iget-object v0, p0, Lza;->e:Lzd;

    new-instance v5, Lzc;

    invoke-direct {v5, p0}, Lzc;-><init>(Lza;)V

    invoke-virtual {v0, v5}, Lzd;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 5122
    iget-object v0, p0, Lza;->e:Lzd;

    iget-object v5, p0, Lza;->A:Lzj;

    invoke-virtual {v0, v5}, Lzd;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 5124
    iget-object v0, p0, Lza;->y:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 5125
    iget-object v0, p0, Lza;->e:Lzd;

    iget-object v5, p0, Lza;->y:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v5}, Lzd;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 5128
    :cond_1
    iget-object v0, p0, Lza;->e:Lzd;

    .line 5130
    iget-object v7, p0, Lza;->s:Landroid/view/View;

    .line 5131
    if-eqz v7, :cond_21

    .line 5134
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5135
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5137
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 5141
    iget v8, p0, Lza;->t:I

    packed-switch v8, :pswitch_data_0

    .line 5153
    const-string v0, "ListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Invalid hint position "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lza;->t:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5161
    :goto_1
    iget v0, p0, Lza;->k:I

    if-ltz v0, :cond_8

    .line 5163
    iget v0, p0, Lza;->k:I

    move v4, v0

    move v0, v3

    .line 5168
    :goto_2
    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 5170
    invoke-virtual {v7, v0, v2}, Landroid/view/View;->measure(II)V

    .line 5172
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 5173
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v7

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    move-object v4, v5

    .line 5179
    :goto_3
    iget-object v5, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5194
    :goto_4
    iget-object v4, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 5195
    if-eqz v4, :cond_a

    .line 5196
    iget-object v5, p0, Lza;->D:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5197
    iget-object v4, p0, Lza;->D:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lza;->D:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 5201
    iget-boolean v5, p0, Lza;->o:Z

    if-nez v5, :cond_2

    .line 5202
    iget-object v5, p0, Lza;->D:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    iput v5, p0, Lza;->m:I

    .line 5209
    :cond_2
    :goto_5
    iget-object v5, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_b

    move v5, v1

    .line 5211
    :goto_6
    invoke-virtual {p0}, Lza;->g()Landroid/view/View;

    move-result-object v7

    iget v8, p0, Lza;->m:I

    invoke-direct {p0, v7, v8, v5}, Lza;->a(Landroid/view/View;IZ)I

    move-result v5

    .line 5213
    iget-boolean v7, p0, Lza;->q:Z

    if-nez v7, :cond_3

    iget v7, p0, Lza;->j:I

    if-ne v7, v6, :cond_c

    .line 5214
    :cond_3
    add-int v0, v5, v4

    .line 611
    :goto_7
    invoke-virtual {p0}, Lza;->o()Z

    move-result v5

    .line 612
    iget-object v3, p0, Lza;->d:Landroid/widget/PopupWindow;

    iget v4, p0, Lza;->n:I

    invoke-static {v3, v4}, Lpj;->a(Landroid/widget/PopupWindow;I)V

    .line 614
    iget-object v3, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 616
    iget v3, p0, Lza;->k:I

    if-ne v3, v6, :cond_e

    move v4, v6

    .line 627
    :goto_8
    iget v3, p0, Lza;->j:I

    if-ne v3, v6, :cond_14

    .line 630
    if-eqz v5, :cond_10

    move v3, v0

    .line 631
    :goto_9
    if-eqz v5, :cond_12

    .line 632
    iget-object v5, p0, Lza;->d:Landroid/widget/PopupWindow;

    iget v0, p0, Lza;->k:I

    if-ne v0, v6, :cond_11

    move v0, v6

    :goto_a
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 634
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v5, v3

    .line 646
    :goto_b
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Lza;->r:Z

    if-nez v3, :cond_16

    iget-boolean v3, p0, Lza;->q:Z

    if-nez v3, :cond_16

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 648
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lza;->g()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lza;->l:I

    iget v3, p0, Lza;->m:I

    if-gez v4, :cond_4

    move v4, v6

    :cond_4
    if-gez v5, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 693
    :cond_6
    :goto_d
    return-void

    :cond_7
    move v0, v2

    .line 5098
    goto/16 :goto_0

    .line 5143
    :pswitch_0
    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5144
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 5148
    :pswitch_1
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5149
    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_8
    move v0, v2

    move v4, v2

    .line 5166
    goto/16 :goto_2

    .line 5181
    :cond_9
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 5182
    iget-object v4, p0, Lza;->s:Landroid/view/View;

    .line 5183
    if-eqz v4, :cond_20

    .line 5184
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 5186
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    goto/16 :goto_4

    .line 5205
    :cond_a
    iget-object v4, p0, Lza;->D:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    move v4, v2

    goto/16 :goto_5

    :cond_b
    move v5, v2

    .line 5209
    goto/16 :goto_6

    .line 5218
    :cond_c
    iget v7, p0, Lza;->k:I

    packed-switch v7, :pswitch_data_1

    .line 5232
    iget v3, p0, Lza;->k:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 5236
    :goto_e
    iget-object v7, p0, Lza;->e:Lzd;

    sub-int/2addr v5, v0

    invoke-virtual {v7, v3, v5}, Lzd;->a(II)I

    move-result v3

    .line 5240
    if-lez v3, :cond_d

    add-int/2addr v0, v4

    .line 5242
    :cond_d
    add-int/2addr v0, v3

    goto/16 :goto_7

    .line 5220
    :pswitch_2
    iget-object v7, p0, Lza;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lza;->D:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lza;->D:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_e

    .line 5226
    :pswitch_3
    iget-object v3, p0, Lza;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lza;->D:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lza;->D:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_e

    .line 620
    :cond_e
    iget v3, p0, Lza;->k:I

    if-ne v3, v10, :cond_f

    .line 621
    invoke-virtual {p0}, Lza;->g()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move v4, v3

    goto/16 :goto_8

    .line 623
    :cond_f
    iget v3, p0, Lza;->k:I

    move v4, v3

    goto/16 :goto_8

    :cond_10
    move v3, v6

    .line 630
    goto/16 :goto_9

    :cond_11
    move v0, v2

    .line 632
    goto/16 :goto_a

    .line 636
    :cond_12
    iget-object v5, p0, Lza;->d:Landroid/widget/PopupWindow;

    iget v0, p0, Lza;->k:I

    if-ne v0, v6, :cond_13

    move v0, v6

    :goto_f
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 638
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v5, v3

    goto/16 :goto_b

    :cond_13
    move v0, v2

    .line 636
    goto :goto_f

    .line 640
    :cond_14
    iget v3, p0, Lza;->j:I

    if-ne v3, v10, :cond_15

    move v5, v0

    .line 641
    goto/16 :goto_b

    .line 643
    :cond_15
    iget v0, p0, Lza;->j:I

    move v5, v0

    goto/16 :goto_b

    :cond_16
    move v1, v2

    .line 646
    goto/16 :goto_c

    .line 653
    :cond_17
    iget v3, p0, Lza;->k:I

    if-ne v3, v6, :cond_1c

    move v3, v6

    .line 664
    :goto_10
    iget v4, p0, Lza;->j:I

    if-ne v4, v6, :cond_1e

    move v0, v6

    .line 674
    :cond_18
    :goto_11
    iget-object v4, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 675
    iget-object v3, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5838
    sget-object v0, Lza;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    .line 5840
    :try_start_0
    sget-object v0, Lza;->a:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lza;->d:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :cond_19
    :goto_12
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Lza;->r:Z

    if-nez v3, :cond_1f

    iget-boolean v3, p0, Lza;->q:Z

    if-nez v3, :cond_1f

    :goto_13
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 681
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lza;->z:Lzk;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 682
    iget-object v1, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lza;->g()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lza;->l:I

    iget v4, p0, Lza;->m:I

    iget v5, p0, Lza;->p:I

    .line 6171
    sget-object v0, Lpj;->a:Lpo;

    invoke-virtual/range {v0 .. v5}, Lpo;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 684
    iget-object v0, p0, Lza;->e:Lzd;

    invoke-virtual {v0, v6}, Lzd;->setSelection(I)V

    .line 686
    iget-boolean v0, p0, Lza;->E:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lza;->e:Lzd;

    invoke-virtual {v0}, Lzd;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 687
    :cond_1a
    invoke-virtual {p0}, Lza;->m()V

    .line 689
    :cond_1b
    iget-boolean v0, p0, Lza;->E:Z

    if-nez v0, :cond_6

    .line 690
    iget-object v0, p0, Lza;->h:Landroid/os/Handler;

    iget-object v1, p0, Lza;->B:Lzh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_d

    .line 656
    :cond_1c
    iget v3, p0, Lza;->k:I

    if-ne v3, v10, :cond_1d

    .line 657
    invoke-virtual {p0}, Lza;->g()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_10

    .line 659
    :cond_1d
    iget v3, p0, Lza;->k:I

    goto :goto_10

    .line 667
    :cond_1e
    iget v4, p0, Lza;->j:I

    if-eq v4, v10, :cond_18

    .line 670
    iget v0, p0, Lza;->j:I

    goto :goto_11

    :cond_1f
    move v1, v2

    .line 680
    goto :goto_13

    :catch_0
    move-exception v0

    goto :goto_12

    :cond_20
    move v0, v2

    goto/16 :goto_4

    :cond_21
    move-object v4, v0

    move v0, v2

    goto/16 :goto_3

    .line 5141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 5218
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 493
    iput p1, p0, Lza;->p:I

    .line 494
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lza;->t:I

    .line 294
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 510
    iput p1, p0, Lza;->k:I

    .line 511
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 316
    iput-boolean v1, p0, Lza;->E:Z

    .line 317
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 318
    return-void
.end method

.method public e(I)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_0

    .line 522
    iget-object v1, p0, Lza;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 523
    iget-object v0, p0, Lza;->D:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lza;->D:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lza;->k:I

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-virtual {p0, p1}, Lza;->d(I)V

    goto :goto_0
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .locals 3

    .prologue
    .line 757
    iget-object v0, p0, Lza;->e:Lzd;

    .line 758
    invoke-virtual {p0}, Lza;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 7534
    const/4 v1, 0x0

    iput-boolean v1, v0, Lzd;->g:Z

    .line 760
    invoke-virtual {v0, p1}, Lzd;->setSelection(I)V

    .line 762
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 763
    invoke-virtual {v0}, Lzd;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lzd;->setItemChecked(IZ)V

    .line 768
    :cond_0
    return-void
.end method

.method public g()Landroid/view/View;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lza;->v:Landroid/view/View;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lza;->l:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lza;->o:Z

    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lza;->m:I

    goto :goto_0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lza;->k:I

    return v0
.end method

.method public k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 699
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6716
    iget-object v0, p0, Lza;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6717
    iget-object v0, p0, Lza;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6718
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 6719
    check-cast v0, Landroid/view/ViewGroup;

    .line 6720
    iget-object v1, p0, Lza;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 701
    :cond_0
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 702
    iput-object v2, p0, Lza;->e:Lzd;

    .line 703
    iget-object v0, p0, Lza;->h:Landroid/os/Handler;

    iget-object v1, p0, Lza;->g:Lzl;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 704
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 739
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lza;->e:Lzd;

    .line 776
    if-eqz v0, :cond_0

    .line 8534
    const/4 v1, 0x1

    iput-boolean v1, v0, Lzd;->g:Z

    .line 780
    invoke-virtual {v0}, Lzd;->requestLayout()V

    .line 782
    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lza;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lza;->e:Lzd;

    return-object v0
.end method
