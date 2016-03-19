.class final Lxa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/widget/ImageView;

.field private final c:Lvv;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010119

    aput v2, v0, v1

    sput-object v0, Lxa;->a:[I

    return-void
.end method

.method constructor <init>(Landroid/widget/ImageView;Lvv;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lxa;->b:Landroid/widget/ImageView;

    .line 37
    iput-object p2, p0, Lxa;->c:Lvv;

    .line 38
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2

    .prologue
    .line 53
    if-eqz p1, :cond_1

    .line 54
    iget-object v1, p0, Lxa;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lxa;->c:Lvv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxa;->c:Lvv;

    invoke-virtual {v0, p1}, Lvv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :goto_1
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lxa;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ley;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lxa;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lxa;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lxa;->a:[I

    invoke-static {v0, p1, v1, p2}, Lvw;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lvw;

    move-result-object v1

    .line 44
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lvw;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lxa;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lvw;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    invoke-virtual {v1}, Lvw;->a()V

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lvw;->a()V

    throw v0
.end method
