.class final Lcbh;
.super Lcbf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcbg;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method public constructor <init>(Lcbg;Landroid/content/res/Resources;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 391
    iput-object p1, p0, Lcbh;->a:Lcbg;

    .line 1045
    iget-object v0, p1, Lcbg;->c:Lexw;

    .line 392
    invoke-direct {p0, p2, v0}, Lcbf;-><init>(Landroid/content/res/Resources;Lexw;)V

    .line 393
    iput-object p3, p0, Lcbh;->b:Ljava/util/List;

    .line 394
    iput p4, p0, Lcbh;->c:I

    .line 395
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 399
    iget v0, p0, Lcbh;->c:I

    iget-object v1, p0, Lcbh;->a:Lcbg;

    .line 2045
    iget v1, v1, Lcbg;->d:I

    .line 399
    mul-int/2addr v0, v1

    .line 400
    iget-object v1, p0, Lcbh;->a:Lcbg;

    .line 3045
    iget v1, v1, Lcbg;->d:I

    .line 400
    iget-object v2, p0, Lcbh;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 401
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 406
    iget v0, p0, Lcbh;->c:I

    iget-object v1, p0, Lcbh;->a:Lcbg;

    .line 4045
    iget v1, v1, Lcbg;->d:I

    .line 406
    mul-int/2addr v0, v1

    .line 407
    iget-object v1, p0, Lcbh;->b:Ljava/util/List;

    add-int/2addr v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 407
    int-to-long v0, v0

    return-wide v0
.end method
