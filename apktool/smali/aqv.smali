.class public final Laqv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajc",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lamd;

.field private final b:Lajc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajc",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lamd;Lajc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lamd;",
            "Lajc",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Laqv;->a:Lamd;

    .line 24
    iput-object p2, p0, Laqv;->b:Lajc;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Laja;)Lait;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Laqv;->b:Lajc;

    invoke-interface {v0, p1}, Lajc;->a(Laja;)Lait;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/io/File;Laja;)Z
    .locals 4

    .prologue
    .line 17
    check-cast p1, Lalr;

    .line 1029
    iget-object v1, p0, Laqv;->b:Lajc;

    new-instance v2, Laqy;

    invoke-interface {p1}, Lalr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Laqv;->a:Lamd;

    invoke-direct {v2, v0, v3}, Laqy;-><init>(Landroid/graphics/Bitmap;Lamd;)V

    invoke-interface {v1, v2, p2, p3}, Lajc;->a(Ljava/lang/Object;Ljava/io/File;Laja;)Z

    move-result v0

    .line 17
    return v0
.end method
