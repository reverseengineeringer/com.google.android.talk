.class public abstract Lzo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Laab;

.field private b:I


# direct methods
.method private constructor <init>(Laab;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x80000000

    iput v0, p0, Lzo;->b:I

    .line 45
    iput-object p1, p0, Lzo;->a:Laab;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Laab;B)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lzo;-><init>(Laab;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)I
.end method

.method public a()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lzo;->f()I

    move-result v0

    iput v0, p0, Lzo;->b:I

    .line 55
    return-void
.end method

.method public abstract a(I)V
.end method

.method public b()I
    .locals 2

    .prologue
    .line 68
    const/high16 v0, -0x80000000

    iget v1, p0, Lzo;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lzo;->f()I

    move-result v0

    iget v1, p0, Lzo;->b:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c()I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d()I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method
