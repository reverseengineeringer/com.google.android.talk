.class final Lexz;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# instance fields
.field final synthetic a:Lexw;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Leya;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lexw;Landroid/content/res/Resources;Leya;)V
    .locals 1

    .prologue
    .line 497
    iput-object p1, p0, Lexz;->a:Lexw;

    .line 498
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 499
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexz;->b:Ljava/lang/ref/WeakReference;

    .line 500
    return-void
.end method


# virtual methods
.method public a()Leya;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lexz;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leya;

    return-object v0
.end method
