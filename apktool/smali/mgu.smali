.class public final Lmgu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Picture;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lmgu;->c:Landroid/graphics/RectF;

    .line 57
    iput-object p1, p0, Lmgu;->a:Landroid/graphics/Picture;

    .line 58
    iput-object p2, p0, Lmgu;->b:Landroid/graphics/RectF;

    .line 59
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lmgu;->a:Landroid/graphics/Picture;

    return-object v0
.end method

.method a(Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lmgu;->c:Landroid/graphics/RectF;

    .line 67
    return-void
.end method
