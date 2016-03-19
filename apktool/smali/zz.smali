.class public final Lzz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10210
    return-void
.end method


# virtual methods
.method public a(Laao;)Lzz;
    .locals 2

    .prologue
    .line 11235
    iget-object v0, p1, Laao;->a:Landroid/view/View;

    .line 11236
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lzz;->a:I

    .line 11237
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lzz;->b:I

    .line 11238
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Lzz;->c:I

    .line 11239
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lzz;->d:I

    .line 10220
    return-object p0
.end method
