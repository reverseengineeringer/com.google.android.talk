.class public Loc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3080
    invoke-static {p1}, Laen;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 2035
    instance-of v0, p1, Lpz;

    if-eqz v0, :cond_0

    .line 2036
    check-cast p1, Lpz;

    invoke-interface {p1, p2}, Lpz;->a(Landroid/content/res/ColorStateList;)V

    .line 1061
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 3048
    instance-of v0, p1, Lpz;

    if-eqz v0, :cond_0

    .line 3049
    check-cast p1, Lpz;

    invoke-interface {p1, p2}, Lpz;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 2071
    :cond_0
    return-void
.end method
