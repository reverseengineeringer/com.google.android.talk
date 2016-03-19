.class public final Laqw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajd",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lamd;

.field private final d:Lajd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lajd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p1}, Lahk;->a(Landroid/content/Context;)Lahk;

    move-result-object v0

    invoke-virtual {v0}, Lahk;->a()Lamd;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Laqw;-><init>(Landroid/content/Context;Lamd;Lajd;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lamd;Lajd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lamd;",
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laqw;->b:Landroid/content/Context;

    .line 1023
    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, Lamd;

    iput-object v0, p0, Laqw;->c:Lamd;

    .line 2023
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Lajd;

    iput-object v0, p0, Laqw;->d:Lajd;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lalr;II)Lalr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalr",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;II)",
            "Lalr",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-interface {p1}, Lalr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    iget-object v1, p0, Laqw;->c:Lamd;

    invoke-static {v0, v1}, Laqy;->a(Landroid/graphics/Bitmap;Lamd;)Laqy;

    move-result-object v0

    .line 43
    iget-object v1, p0, Laqw;->d:Lajd;

    .line 44
    invoke-interface {v1, v0, p2, p3}, Lajd;->a(Lalr;II)Lalr;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-object p1

    :cond_0
    iget-object v2, p0, Laqw;->b:Landroid/content/Context;

    invoke-interface {v1}, Lalr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2025
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v2}, Lahk;->a(Landroid/content/Context;)Lahk;

    move-result-object v2

    invoke-virtual {v2}, Lahk;->a()Lamd;

    move-result-object v2

    invoke-static {v1, v2, v0}, Laru;->a(Landroid/content/res/Resources;Lamd;Landroid/graphics/Bitmap;)Laru;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Laqw;->d:Lajd;

    invoke-interface {v0, p1}, Lajd;->a(Ljava/security/MessageDigest;)V

    .line 70
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 55
    instance-of v0, p1, Laqw;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Laqw;

    .line 57
    iget-object v0, p0, Laqw;->d:Lajd;

    iget-object v1, p1, Laqw;->d:Lajd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Laqw;->d:Lajd;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
