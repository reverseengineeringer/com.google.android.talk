.class public Ltx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Ltz;


# static fields
.field static final a:I


# instance fields
.field final b:Landroid/view/LayoutInflater;

.field final c:Ltl;

.field final d:Z

.field e:Z

.field private final f:Landroid/content/Context;

.field private final g:Lty;

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:Landroid/view/View;

.field private l:Lza;

.field private m:Landroid/view/ViewTreeObserver;

.field private n:Lua;

.field private o:Landroid/view/ViewGroup;

.field private p:Z

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget v0, Laal;->bm:I

    sput v0, Ltx;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ltl;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 84
    const/4 v4, 0x0

    sget v5, Laen;->Z:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ltx;-><init>(Landroid/content/Context;Ltl;Landroid/view/View;ZI)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltl;Landroid/view/View;ZI)V
    .locals 7

    .prologue
    .line 89
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltx;-><init>(Landroid/content/Context;Ltl;Landroid/view/View;ZIB)V

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ltl;Landroid/view/View;ZIB)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v2, p0, Ltx;->r:I

    .line 94
    iput-object p1, p0, Ltx;->f:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Ltx;->b:Landroid/view/LayoutInflater;

    .line 96
    iput-object p2, p0, Ltx;->c:Ltl;

    .line 97
    new-instance v0, Lty;

    iget-object v1, p0, Ltx;->c:Ltl;

    invoke-direct {v0, p0, v1}, Lty;-><init>(Ltx;Ltl;)V

    iput-object v0, p0, Ltx;->g:Lty;

    .line 98
    iput-boolean p4, p0, Ltx;->d:Z

    .line 99
    iput p5, p0, Ltx;->i:I

    .line 100
    iput v2, p0, Ltx;->j:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Laal;->E:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ltx;->h:I

    .line 106
    iput-object p3, p0, Ltx;->k:Landroid/view/View;

    .line 109
    invoke-virtual {p2, p0, p1}, Ltl;->a(Ltz;Landroid/content/Context;)V

    .line 110
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 121
    const v0, 0x800005

    iput v0, p0, Ltx;->r:I

    .line 122
    return-void
.end method

.method public a(Landroid/content/Context;Ltl;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Ltx;->k:Landroid/view/View;

    .line 114
    return-void
.end method

.method public a(Ltl;Z)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Ltx;->c:Ltl;

    if-eq p1, v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Ltx;->f()V

    .line 307
    iget-object v0, p0, Ltx;->n:Lua;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Ltx;->n:Lua;

    invoke-interface {v0, p1, p2}, Lua;->a(Ltl;Z)V

    goto :goto_0
.end method

.method public a(Lua;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Ltx;->n:Lua;

    .line 272
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Ltx;->e:Z

    .line 118
    return-void
.end method

.method public a(Lue;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    invoke-virtual {p1}, Lue;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    new-instance v3, Ltx;

    iget-object v0, p0, Ltx;->f:Landroid/content/Context;

    iget-object v4, p0, Ltx;->k:Landroid/view/View;

    invoke-direct {v3, v0, p1, v4}, Ltx;-><init>(Landroid/content/Context;Ltl;Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Ltx;->n:Lua;

    invoke-virtual {v3, v0}, Ltx;->a(Lua;)V

    .line 281
    invoke-virtual {p1}, Lue;->size()I

    move-result v4

    move v0, v2

    .line 282
    :goto_0
    if-ge v0, v4, :cond_3

    .line 283
    invoke-virtual {p1, v0}, Lue;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 284
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 289
    :goto_1
    invoke-virtual {v3, v0}, Ltx;->a(Z)V

    .line 291
    invoke-virtual {v3}, Ltx;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Ltx;->n:Lua;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Ltx;->n:Lua;

    invoke-interface {v0, p1}, Lua;->a(Ltl;)Z

    .line 298
    :cond_0
    :goto_2
    return v1

    .line 282
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 298
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltx;->p:Z

    .line 264
    iget-object v0, p0, Ltx;->g:Lty;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Ltx;->g:Lty;

    invoke-virtual {v0}, Lty;->notifyDataSetChanged()V

    .line 267
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ltp;)Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Ltx;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method public c(Ltp;)Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public d()Lza;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ltx;->l:Lza;

    return-object v0
.end method

.method public e()Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    new-instance v0, Lza;

    iget-object v3, p0, Ltx;->f:Landroid/content/Context;

    iget v5, p0, Ltx;->i:I

    iget v6, p0, Ltx;->j:I

    invoke-direct {v0, v3, v4, v5, v6}, Lza;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Ltx;->l:Lza;

    .line 140
    iget-object v0, p0, Ltx;->l:Lza;

    invoke-virtual {v0, p0}, Lza;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 141
    iget-object v0, p0, Ltx;->l:Lza;

    invoke-virtual {v0, p0}, Lza;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    iget-object v0, p0, Ltx;->l:Lza;

    iget-object v3, p0, Ltx;->g:Lty;

    invoke-virtual {v0, v3}, Lza;->a(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v0, p0, Ltx;->l:Lza;

    invoke-virtual {v0}, Lza;->e()V

    .line 145
    iget-object v3, p0, Ltx;->k:Landroid/view/View;

    .line 146
    if-eqz v3, :cond_5

    .line 147
    iget-object v0, p0, Ltx;->m:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_4

    move v0, v1

    .line 148
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Ltx;->m:Landroid/view/ViewTreeObserver;

    .line 149
    if-eqz v0, :cond_0

    iget-object v0, p0, Ltx;->m:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 150
    :cond_0
    iget-object v0, p0, Ltx;->l:Lza;

    invoke-virtual {v0, v3}, Lza;->a(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Ltx;->l:Lza;

    iget v3, p0, Ltx;->r:I

    invoke-virtual {v0, v3}, Lza;->c(I)V

    .line 156
    iget-boolean v0, p0, Ltx;->p:Z

    if-nez v0, :cond_3

    .line 1208
    iget-object v7, p0, Ltx;->g:Lty;

    .line 1209
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1210
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1211
    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    move v6, v2

    move v3, v2

    move-object v5, v4

    .line 1212
    :goto_1
    if-ge v6, v10, :cond_2

    .line 1213
    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 1214
    if-eq v0, v3, :cond_7

    move v3, v0

    move-object v0, v4

    .line 1219
    :goto_2
    iget-object v5, p0, Ltx;->o:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 1220
    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v11, p0, Ltx;->f:Landroid/content/Context;

    invoke-direct {v5, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ltx;->o:Landroid/view/ViewGroup;

    .line 1223
    :cond_1
    iget-object v5, p0, Ltx;->o:Landroid/view/ViewGroup;

    invoke-interface {v7, v6, v0, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1224
    invoke-virtual {v5, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1226
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1227
    iget v11, p0, Ltx;->h:I

    if-lt v0, v11, :cond_6

    .line 1228
    iget v2, p0, Ltx;->h:I

    .line 157
    :cond_2
    iput v2, p0, Ltx;->q:I

    .line 158
    iput-boolean v1, p0, Ltx;->p:Z

    .line 161
    :cond_3
    iget-object v0, p0, Ltx;->l:Lza;

    iget v2, p0, Ltx;->q:I

    invoke-virtual {v0, v2}, Lza;->e(I)V

    .line 162
    iget-object v0, p0, Ltx;->l:Lza;

    invoke-virtual {v0}, Lza;->l()V

    .line 163
    iget-object v0, p0, Ltx;->l:Lza;

    invoke-virtual {v0}, Lza;->c()V

    .line 164
    iget-object v0, p0, Ltx;->l:Lza;

    invoke-virtual {v0}, Lza;->p()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 165
    :goto_3
    return v1

    :cond_4
    move v0, v2

    .line 147
    goto :goto_0

    :cond_5
    move v1, v2

    .line 153
    goto :goto_3

    .line 1229
    :cond_6
    if-le v0, v2, :cond_8

    .line 1212
    :goto_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v0

    goto :goto_1

    :cond_7
    move-object v0, v5

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_4
.end method

.method public f()V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Ltx;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Ltx;->l:Lza;

    invoke-virtual {v0}, Lza;->k()V

    .line 172
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Ltx;->l:Lza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltx;->l:Lza;

    invoke-virtual {v0}, Lza;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iput-object v1, p0, Ltx;->l:Lza;

    .line 176
    iget-object v0, p0, Ltx;->c:Ltl;

    invoke-virtual {v0}, Ltl;->close()V

    .line 177
    iget-object v0, p0, Ltx;->m:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Ltx;->m:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltx;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Ltx;->m:Landroid/view/ViewTreeObserver;

    .line 179
    :cond_0
    iget-object v0, p0, Ltx;->m:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 180
    iput-object v1, p0, Ltx;->m:Landroid/view/ViewTreeObserver;

    .line 182
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Ltx;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Ltx;->k:Landroid/view/View;

    .line 241
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    :cond_0
    invoke-virtual {p0}, Ltx;->f()V

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    invoke-virtual {p0}, Ltx;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Ltx;->l:Lza;

    invoke-virtual {v0}, Lza;->c()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Ltx;->g:Lty;

    .line 1339
    iget-object v1, v0, Lty;->a:Ltl;

    .line 191
    invoke-virtual {v0, p3}, Lty;->a(I)Ltp;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ltl;->a(Landroid/view/MenuItem;I)Z

    .line 192
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 196
    invoke-virtual {p0}, Ltx;->f()V

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
