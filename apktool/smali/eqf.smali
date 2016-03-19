.class public final Leqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:I

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Leqh;

.field final synthetic e:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;ILandroid/widget/ImageView;Leqh;Z)V
    .locals 1

    .prologue
    .line 50
    iput-object p1, p0, Leqf;->a:Landroid/content/res/Resources;

    iput p2, p0, Leqf;->b:I

    iput-object p3, p0, Leqf;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Leqf;->d:Leqh;

    const/4 v0, 0x1

    iput-boolean v0, p0, Leqf;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x2

    .line 53
    iget-object v0, p0, Leqf;->a:Landroid/content/res/Resources;

    iget v1, p0, Leqf;->b:I

    .line 1123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lmgw;->a:F

    invoke-static {v0, v1, v2, v3}, Lmgw;->a(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;F)Lmgu;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lmgu;->a()Landroid/graphics/Picture;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Landroid/graphics/Picture;->getHeight()I

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    iget-object v0, p0, Leqf;->c:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    iget-object v0, p0, Leqf;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v0, p0, Leqf;->d:Leqh;

    iget-object v6, p0, Leqf;->a:Landroid/content/res/Resources;

    .line 1131
    :goto_0
    sget-object v7, Leqg;->a:[I

    invoke-virtual {v0}, Leqh;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1171
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid scaleMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 1172
    const/4 v0, 0x0

    .line 61
    :goto_1
    const/4 v1, 0x1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_6

    .line 71
    :cond_0
    :goto_2
    return-void

    .line 1144
    :pswitch_0
    mul-int v7, v4, v1

    mul-int v8, v2, v3

    if-ge v7, v8, :cond_2

    .line 1145
    sget-object v7, Leqh;->a:Leqh;

    if-ne v0, v7, :cond_1

    .line 1146
    sget-object v0, Leqh;->e:Leqh;

    goto :goto_0

    .line 1147
    :cond_1
    sget-object v0, Leqh;->d:Leqh;

    goto :goto_0

    .line 1149
    :cond_2
    sget-object v7, Leqh;->a:Leqh;

    if-ne v0, v7, :cond_3

    .line 1150
    sget-object v0, Leqh;->d:Leqh;

    goto :goto_0

    .line 1151
    :cond_3
    sget-object v0, Leqh;->e:Leqh;

    goto :goto_0

    .line 1156
    :pswitch_1
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_1

    .line 1159
    :pswitch_2
    if-nez v4, :cond_4

    .line 1160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source height cannot be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :cond_4
    int-to-float v0, v2

    int-to-float v1, v4

    div-float/2addr v0, v1

    goto :goto_1

    .line 1165
    :pswitch_3
    if-nez v3, :cond_5

    .line 1166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source width cannot be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1168
    :cond_5
    int-to-float v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    goto :goto_1

    .line 64
    :cond_6
    iget-object v1, p0, Leqf;->c:Landroid/widget/ImageView;

    new-instance v2, Leqi;

    invoke-direct {v2, v5, v0}, Leqi;-><init>(Landroid/graphics/Picture;F)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-boolean v0, p0, Leqf;->e:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Leqf;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 67
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    iget-object v1, p0, Leqf;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
