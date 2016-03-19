.class final Lani;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    .prologue
    .line 2243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2244
    iput-object p1, p0, Lani;->a:Landroid/util/DisplayMetrics;

    .line 2245
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lani;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lani;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method
