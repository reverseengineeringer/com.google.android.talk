.class final Lexg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:[Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lexg;->a:I

    .line 38
    new-array v0, p1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lexg;->b:[Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method
