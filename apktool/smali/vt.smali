.class final Lvt;
.super Lvl;
.source "SourceFile"


# instance fields
.field private final a:Lvv;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lvv;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lvl;-><init>(Landroid/content/res/Resources;)V

    .line 62
    iput-object p2, p0, Lvt;->a:Lvv;

    .line 63
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Lvl;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lvt;->a:Lvv;

    invoke-virtual {v1, p1, v0}, Lvv;->a(ILandroid/graphics/drawable/Drawable;)Z

    .line 76
    :cond_0
    return-object v0
.end method
