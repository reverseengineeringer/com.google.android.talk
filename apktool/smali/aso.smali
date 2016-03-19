.class final Laso;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lamd;

.field final c:Lasr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lamd;Lasr;)V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 321
    iput-object p2, p0, Laso;->b:Lamd;

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laso;->a:Landroid/content/Context;

    .line 323
    iput-object p3, p0, Laso;->c:Lasr;

    .line 324
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lasn;

    invoke-direct {v0, p0}, Lasn;-><init>(Laso;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Laso;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
