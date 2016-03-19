.class public Landroid/support/v7/widget/ShareActionProvider;
.super Liq;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field private c:I

.field private final d:Laav;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1}, Liq;-><init>(Landroid/content/Context;)V

    .line 123
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v7/widget/ShareActionProvider;->c:I

    .line 128
    new-instance v0, Laav;

    .line 1315
    invoke-direct {v0, p0}, Laav;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V

    .line 128
    iput-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->d:Laav;

    .line 144
    const-string v0, "share_history.xml"

    iput-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->b:Ljava/lang/String;

    .line 157
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider;->a:Landroid/content/Context;

    .line 158
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 5

    .prologue
    .line 181
    new-instance v0, Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Luq;->a(Landroid/content/Context;Ljava/lang/String;)Luq;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Luq;)V

    .line 188
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 189
    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Laen;->C:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 190
    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2, v1}, Lvv;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Liq;)V

    .line 195
    sget v1, Laal;->bu:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->c(I)V

    .line 197
    sget v1, Laal;->bt:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(I)V

    .line 200
    return-object v0
.end method

.method public a(Landroid/view/SubMenu;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 219
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Luq;->a(Landroid/content/Context;Ljava/lang/String;)Luq;

    move-result-object v2

    .line 220
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 222
    invoke-virtual {v2}, Luq;->a()I

    move-result v4

    .line 223
    iget v0, p0, Landroid/support/v7/widget/ShareActionProvider;->c:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v1

    .line 226
    :goto_0
    if-ge v0, v5, :cond_0

    .line 227
    invoke-virtual {v2, v0}, Luq;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 228
    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v1, v0, v0, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/ShareActionProvider;->d:Laav;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    if-ge v5, v4, :cond_1

    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->a:Landroid/content/Context;

    sget v6, Laal;->br:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v5, v5, v0}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    move v0, v1

    .line 238
    :goto_1
    if-ge v0, v4, :cond_1

    .line 239
    invoke-virtual {v2, v0}, Luq;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 240
    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v5, v1, v0, v0, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/ShareActionProvider;->d:Laav;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method
