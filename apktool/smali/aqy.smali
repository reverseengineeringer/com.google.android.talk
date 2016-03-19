.class public final Laqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lalr",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lamd;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lamd;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "Bitmap must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Laqy;->a:Landroid/graphics/Bitmap;

    .line 36
    const-string v0, "BitmapPool must not be null"

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamd;

    iput-object v0, p0, Laqy;->b:Lamd;

    .line 37
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lamd;)Laqy;
    .locals 1

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Laqy;

    invoke-direct {v0, p0, p1}, Laqy;-><init>(Landroid/graphics/Bitmap;Lamd;)V

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Laqy;->a:Landroid/graphics/Bitmap;

    .line 14
    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Laqy;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lavq;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Laqy;->b:Lamd;

    iget-object v1, p0, Laqy;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lamd;->a(Landroid/graphics/Bitmap;)V

    .line 57
    return-void
.end method
