.class public final Lcjn;
.super Lcgp;
.source "SourceFile"


# instance fields
.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhkx;IIIIILjava/lang/String;Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)V
    .locals 11

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move v6, p3

    move/from16 v7, p10

    move/from16 v8, p11

    move-object/from16 v9, p8

    move-object/from16 v10, p12

    .line 36
    invoke-direct/range {v1 .. v10}, Lcgp;-><init>(Landroid/content/Context;Lhkx;IIIZZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 47
    iput p4, p0, Lcjn;->g:I

    .line 48
    move/from16 v0, p7

    iput v0, p0, Lcjn;->h:I

    .line 49
    move-object/from16 v0, p9

    iput-object v0, p0, Lcjn;->i:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcgp;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    iget v0, p0, Lcjn;->a:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 57
    new-instance v2, Lcjo;

    invoke-direct {v2, p0}, Lcjo;-><init>(Lcjn;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    iget-boolean v0, p0, Lcjn;->e:Z

    invoke-virtual {p0, v0}, Lcjn;->a(Z)V

    .line 74
    return-object v1
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcjn;->f:Landroid/view/View;

    iget v1, p0, Lcjn;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 80
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 81
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcjn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcjn;->c:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 81
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 85
    if-eqz p1, :cond_1

    iget v1, p0, Lcjn;->b:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 86
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcjn;->d:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    iput-boolean p1, p0, Lcjn;->e:Z

    .line 88
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcjn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcjn;->g:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    .line 85
    :cond_1
    iget v1, p0, Lcjn;->h:I

    goto :goto_1

    .line 86
    :cond_2
    iget-object v1, p0, Lcjn;->i:Ljava/lang/String;

    goto :goto_2
.end method
