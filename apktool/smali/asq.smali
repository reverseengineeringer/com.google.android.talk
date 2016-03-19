.class public final Lasq;
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
        "Lasn;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lajd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lamd;


# direct methods
.method private constructor <init>(Lajd;Lamd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lamd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Lajd;

    iput-object v0, p0, Lasq;->b:Lajd;

    .line 2023
    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Lamd;

    iput-object v0, p0, Lasq;->c:Lamd;

    .line 31
    return-void
.end method

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

    invoke-direct {p0, p2, v0}, Lasq;-><init>(Lajd;Lamd;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lalr;II)Lalr;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalr",
            "<",
            "Lasn;",
            ">;II)",
            "Lalr",
            "<",
            "Lasn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-interface {p1}, Lalr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasn;

    .line 43
    invoke-virtual {v0}, Lasn;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    new-instance v2, Laqy;

    iget-object v3, p0, Lasq;->c:Lamd;

    invoke-direct {v2, v1, v3}, Laqy;-><init>(Landroid/graphics/Bitmap;Lamd;)V

    .line 45
    iget-object v1, p0, Lasq;->b:Lajd;

    invoke-interface {v1, v2, p2, p3}, Lajd;->a(Lalr;II)Lalr;

    move-result-object v1

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    invoke-interface {v2}, Lalr;->e()V

    .line 49
    :cond_0
    invoke-interface {v1}, Lalr;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 51
    iget-object v2, p0, Lasq;->b:Lajd;

    invoke-virtual {v0, v2, v1}, Lasn;->a(Lajd;Landroid/graphics/Bitmap;)V

    .line 52
    return-object p1
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lasq;->b:Lajd;

    invoke-interface {v0, p1}, Lajd;->a(Ljava/security/MessageDigest;)V

    .line 72
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 57
    instance-of v0, p1, Lasq;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lasq;

    .line 59
    iget-object v0, p0, Lasq;->b:Lajd;

    iget-object v1, p1, Lasq;->b:Lajd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lasq;->b:Lajd;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
