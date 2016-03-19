.class public final Lcw;
.super Ldk;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1636
    invoke-direct {p0}, Ldk;-><init>()V

    .line 1637
    return-void
.end method

.method public constructor <init>(Lcy;)V
    .locals 0

    .prologue
    .line 1639
    invoke-direct {p0}, Ldk;-><init>()V

    .line 1640
    invoke-virtual {p0, p1}, Lcw;->a(Lcy;)V

    .line 1641
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcw;
    .locals 0

    .prologue
    .line 1665
    iput-object p1, p0, Lcw;->a:Landroid/graphics/Bitmap;

    .line 1666
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcw;
    .locals 1

    .prologue
    .line 1656
    invoke-static {p1}, Lcy;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcw;->f:Ljava/lang/CharSequence;

    .line 1657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcw;->g:Z

    .line 1658
    return-object p0
.end method
