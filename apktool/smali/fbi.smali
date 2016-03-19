.class final Lfbi;
.super Lauu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauu",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfbg;


# direct methods
.method constructor <init>(Lfbg;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lfbi;->a:Lfbg;

    invoke-direct {p0}, Lauu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 192
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 1196
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lfbi;->a:Lfbg;

    invoke-virtual {v0, p1}, Lfbg;->b(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    .line 1199
    :cond_0
    iget-object v0, p0, Lfbi;->a:Lfbg;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfbg;->a(Landroid/graphics/Bitmap;)V

    .line 1200
    iget-object v0, p0, Lfbi;->a:Lfbg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfbg;->c(I)V

    goto :goto_0
.end method
