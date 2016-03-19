.class final Lbum;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lbul;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbuh;


# direct methods
.method public constructor <init>(Lbuh;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbul;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lbum;->a:Lbuh;

    .line 136
    invoke-virtual {p1}, Lbuh;->getActivity()Lba;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 137
    return-void
.end method

.method static a(Landroid/widget/ImageView;Lbul;)V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p1, Lbul;->d:Lbuj;

    iget-object v0, v0, Lbuj;->b:Leys;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p1, Lbul;->d:Lbuj;

    iget-object v0, v0, Lbuj;->b:Leys;

    invoke-virtual {v0}, Leys;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 249
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 250
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 251
    return-void

    .line 241
    :cond_0
    iget-object v0, p1, Lbul;->d:Lbuj;

    iget-object v0, v0, Lbuj;->a:Lfcd;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p1, Lbul;->d:Lbuj;

    iget-object v0, v0, Lbuj;->a:Lfcd;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 244
    iget-object v0, p1, Lbul;->d:Lbuj;

    iget-object v0, v0, Lbuj;->a:Lfcd;

    invoke-virtual {v0}, Lfcd;->a()V

    goto :goto_0

    .line 246
    :cond_1
    const-string v1, "No cache item set:"

    iget-object v0, p1, Lbul;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lbum;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 127
    invoke-virtual {p0, v1}, Lbum;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbul;

    .line 128
    if-eqz v0, :cond_0

    iget-object v2, v0, Lbul;->d:Lbuj;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, v0, Lbul;->d:Lbuj;

    invoke-virtual {v2}, Lbuj;->a()V

    .line 130
    const/4 v2, 0x0

    iput-object v2, v0, Lbul;->d:Lbuj;

    .line 126
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 133
    :cond_1
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0xc0

    .line 141
    if-nez p2, :cond_0

    .line 142
    iget-object v0, p0, Lbum;->a:Lbuh;

    .line 143
    invoke-virtual {v0}, Lbuh;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laal;->la:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lbum;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lbul;

    .line 147
    sget v0, Laen;->hR:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 150
    iget-object v0, p0, Lbum;->a:Lbuh;

    iget-object v0, v0, Lbuh;->f:Lceh;

    invoke-interface {v0}, Lceh;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1254
    iget-object v0, p0, Lbum;->a:Lbuh;

    .line 1255
    invoke-virtual {v0}, Lbuh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, v6, Lbul;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbus;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v0, p0, Lbum;->a:Lbuh;

    iget-object v1, v0, Lbuh;->f:Lceh;

    iget-object v2, v6, Lbul;->b:Ljava/lang/String;

    iget-object v0, p0, Lbum;->a:Lbuh;

    iget-object v3, v0, Lbuh;->g:Lcei;

    iget-object v4, p0, Lbum;->a:Lbuh;

    .line 2320
    iget-object v0, v4, Lbuh;->context:Lill;

    const-string v6, "activity"

    .line 2321
    invoke-virtual {v0, v6}, Lill;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 2322
    if-lt v0, v8, :cond_2

    .line 2323
    invoke-virtual {v4}, Lbuh;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Laal;->kX:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1258
    :goto_0
    invoke-interface {v3, v0}, Lcei;->a(I)Lauk;

    move-result-object v0

    .line 1256
    invoke-interface {v1, v2, v5, v0}, Lceh;->a(Ljava/lang/String;Landroid/widget/ImageView;Lauk;)V

    .line 155
    :cond_1
    :goto_1
    return-object p2

    .line 2325
    :cond_2
    invoke-virtual {v4}, Lbuh;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Laal;->kY:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 3160
    :cond_3
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 3162
    if-eq p1, v0, :cond_1

    .line 4054
    sget-object v0, Lbuh;->a:Lezv;

    .line 5054
    sget v1, Lbuh;->b:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lbuh;->b:I

    .line 3163
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "setImageItemWithBitmapCache_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3166
    iget-object v0, p0, Lbum;->a:Lbuh;

    .line 3167
    invoke-virtual {v0}, Lbuh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, v6, Lbul;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbus;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3166
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3170
    iget-object v0, v6, Lbul;->d:Lbuj;

    if-eqz v0, :cond_4

    .line 3171
    invoke-static {v5, v6}, Lbum;->a(Landroid/widget/ImageView;Lbul;)V

    goto :goto_1

    .line 3176
    :cond_4
    sget v0, Laal;->kV:I

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3177
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3178
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3180
    iget-object v0, p0, Lbum;->a:Lbuh;

    .line 3181
    invoke-virtual {v0}, Lbuh;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->kX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3182
    new-instance v1, Leyd;

    iget-object v2, v6, Lbul;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Leyd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3184
    invoke-virtual {v1, v0, v0}, Leyd;->b(II)Leyd;

    move-result-object v1

    iget-object v2, p0, Lbum;->a:Lbuh;

    .line 6320
    iget-object v0, v2, Lbuh;->context:Lill;

    const-string v3, "activity"

    .line 6321
    invoke-virtual {v0, v3}, Lill;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 6322
    if-lt v0, v8, :cond_5

    .line 6323
    invoke-virtual {v2}, Lbuh;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->kX:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3185
    :goto_2
    invoke-virtual {v1, v0}, Leyd;->a(I)Leyd;

    move-result-object v2

    .line 3186
    iget-object v0, v6, Lbul;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Leyd;->b(Ljava/lang/String;)V

    .line 3188
    new-instance v0, Lbit;

    iget-object v1, p0, Lbum;->a:Lbuh;

    .line 7054
    iget-object v1, v1, Lbuh;->binder:Lilh;

    .line 3190
    const-class v3, Lhpu;

    invoke-virtual {v1, v3}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    iget-object v3, v6, Lbul;->c:Ljava/lang/String;

    new-instance v4, Lbun;

    invoke-direct {v4, p0, v6, p1}, Lbun;-><init>(Lbum;Lbul;I)V

    invoke-direct/range {v0 .. v5}, Lbit;-><init>(ILeyd;Ljava/lang/String;Lbhv;Ljava/lang/Object;)V

    .line 3232
    iget-object v1, p0, Lbum;->a:Lbuh;

    .line 8054
    iget-object v1, v1, Lbuh;->binder:Lilh;

    .line 3232
    const-class v2, Leit;

    invoke-virtual {v1, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leit;

    invoke-virtual {v1, v0}, Leit;->a(Lehx;)Z

    .line 9054
    sget-object v0, Lbuh;->a:Lezv;

    .line 3233
    invoke-virtual {v0, v7}, Lezv;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6325
    :cond_5
    invoke-virtual {v2}, Lbuh;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->kY:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_2
.end method
