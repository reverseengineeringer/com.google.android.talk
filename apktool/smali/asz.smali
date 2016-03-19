.class public final Lasz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Latb",
        "<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lamd;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lamd;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lasz;->a:Landroid/content/res/Resources;

    .line 2023
    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Lamd;

    iput-object v0, p0, Lasz;->b:Lamd;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lalr;)Lalr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalr",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lalr",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v1, p0, Lasz;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lasz;->b:Lamd;

    invoke-interface {p1}, Lalr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0}, Laru;->a(Landroid/content/res/Resources;Lamd;Landroid/graphics/Bitmap;)Laru;

    move-result-object v0

    return-object v0
.end method
